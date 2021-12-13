# DDEV System for DDB Frontend Viewer

This repository provides a [DDEV](https://ddev.readthedocs.io/)-based development environment for the [DDB Frontend Viewer](https://github.com/Deutsche-Digitale-Bibliothek/ddb-frontend-viewer).

## Database Dump

```bash
# Cleanup database and export dump to `data/db.sql`. Running this will log you out.
ddev db-precommit

# Import database dump from `data/db.sql`
ddev db-import
```
