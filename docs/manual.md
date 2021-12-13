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
