# Manual Installation

## Install TYPO3

```bash
mkdir ddev-ddb-frontend-viewer
cd ddev-ddb-frontend-viewer

# NOTE: Composer v1 will be required by typo3-console
ddev config \
    --composer-version=1 \
    --project-name=ddb-frontend-viewer \
    --project-type=typo3 \
    --docroot=web \
    --create-docroot \
    --php-version=7.2 \
    --webserver-type=apache-fpm \
    --mariadb-version=10.1

ddev start

ddev composer create -y "typo3/cms-base-distribution:^7" --prefer-dist

# Install typo3-console for CLI setup
# Version 4.9.6 is the latest that supports TYPO3 7.6
ddev composer require helhum/typo3-console "^4.9.6"

# NOTE: For some reason, using spaces in the site name wouldn't work
ddev typo3cms install:setup \
    --non-interactive \
    --database-host-name=ddev-ddb-frontend-viewer-db \
    --database-port=3306 \
    --database-name=db \
    --database-user-name=db \
    --database-user-password=db \
    --use-existing-database \
    --admin-user-name=admin \
    --admin-password=adminslub \
    --site-setup-type=site \
    --site-name=DDB_Frontend_Viewer

# Install sample .htaccess, which is important for URL rewriting
wget -O web/.htaccess https://raw.githubusercontent.com/TYPO3/typo3/v7.6.32/_.htaccess
```

## Setup composer and install extensions

```bash
mkdir extensions
touch extensions/.gitkeep

git clone --branch master git@github.com:Deutsche-Digitale-Bibliothek/ddb-frontend-viewer.git extensions/ddb-frontend-viewer/

ddev composer config minimum-stability dev

# NOTE: Ensure repository order by first removing composer repository
ddev composer config --unset repositories.0
ddev composer config repositories.local path "./extensions/*"
ddev composer config repositories.0 composer "https://composer.typo3.org/"

ddev composer require kitodo/presentation:~2.3.0
ddev composer require slub/ddb-frontend-viewer:dev-master

# Tolerate cHash errors, which is necessary when URLs containing a `tx_dlf[id]`
# parameter are generated on the client.
ddev typo3cms configuration:set FE/pageNotFoundOnCHashError 0

ddev typo3cms extension:activate dlf
ddev typo3cms extension:activate ddb_frontend_viewer

ddev typo3cms extension:activate beuser
ddev typo3cms extension:activate belog
ddev typo3cms extension:activate tstemplate

ddev typo3cms extension:activate impexp
ddev typo3cms extension:activate lowlevel
ddev typo3cms extension:activate info

ddev typo3cms database:updateschema
```

## Extension Order

Make sure that `dlf` is listed before `ddb_frontend_viewer` in [web/typo3conf/PackageStates.php](../web/typo3conf/PackageStates.php).

## In TYPO3 Backend

- Languages
  - In module `Language`, add German
  - In module `List`, create new "Website Language" record (English, en-us-gb)
  - In module `Backend users`, set default language of admin user to German
- Open extension configuration for Kitodo.Presentation (this is to amend `LocalConfiguration.php` and fill `tx_dlf_formats`)
  - In module `List`, check that formats "MODS" and "TEIHDR" are present on root page
- Create a backend user group `_cli_dlf`.
- Create folder: `DDB_Frontend_Viewer > Data`
  - In module `Kitodo > DDB Viewer`, add configuration
  - In module `Kitodo > New Client`, grant access to `_cli_dlf`.
- Create and enable page: `DDB_Frontend_Viewer > Home > Viewer`
  - Create extension template for the page
    - Edit whole template record
      - Check `Options > Clear > Setup`
      - In `Includes`, select:
        - Basic Configuration (dlf)
        - DDB Frontend Viewer (ddb_frontend_viewer)
    - Set constants
      - `config.storagePid = 2` (use the PID of the data folder)
      - `config.kitodoPageView = 3` (use the PID of viewer page)
- Debug options in install tool (save by clicking "Write configuration"):
  - `[BE][debug]`
  - `[FE][debug]`
  - `[SYS][clearCacheSystem]`
  - `[SYS][enableDeprecationLog] = "file"`
  - `[SYS][exceptionalErrors]` (bitset)<br>
    See https://www.php.net/manual/de/errorfunc.constants.php for possible flags<br>
    (e.g., use 28674 to also turn warnings and deprecation notices to exceptions)
  - `[SYS][sqlDebug] = 1`
  - `[SYS][systemLogLevel] = 0`
