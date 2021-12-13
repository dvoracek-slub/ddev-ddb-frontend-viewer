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

git clone --branch fix-compatibility git@github.com:Deutsche-Digitale-Bibliothek/ddb-frontend-viewer.git extensions/ddb-frontend-viewer/

ddev composer config minimum-stability dev

# NOTE: Ensure repository order by first removing composer repository
ddev composer config --unset repositories.0
ddev composer config repositories.local path "./extensions/*"
ddev composer config repositories.0 composer "https://composer.typo3.org/"

ddev composer require kitodo/presentation:~2.3.0
ddev composer require slub/ddb-frontend-viewer:dev-fix-compatibility

# Tolerate cHash errors, which is necessary when URLs containing a `tx_dlf[id]`
# parameter are generated on the client.
ddev typo3cms configuration:set FE/pageNotFoundOnCHashError 0

ddev typo3cms extension:activate dlf
ddev typo3cms extension:activate ddb_frontend_viewer

ddev typo3cms database:updateschema
```

## In TYPO3 Backend

- Open extension configuration for Kitodo.Presentation (this is just to amend `LocalConfiguration.php`)
