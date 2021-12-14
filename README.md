# DDEV System for DDB Frontend Viewer

This repository provides a [DDEV](https://ddev.readthedocs.io/)-based development environment for the [DDB Frontend Viewer](https://github.com/Deutsche-Digitale-Bibliothek/ddb-frontend-viewer).

## Quick Start

```bash
# Initialize the environment
cd ddev-ddb-frontend-viewer
ddev quickstart

# Open up a document, for example:
ddev launch '/index.php?id=3&tx_dlf[id]=https%3A%2F%2Fbrema.suub.uni-bremen.de%2Fbremzeit%2Foai%2F%3Fverb%3DGetRecord%26metadataPrefix%3Dmets%26identifier%3D2253168'
```

## Database Dump

```bash
# Cleanup database and export dump to `data/db.sql`. Running this will log you out.
ddev db-precommit

# Import database dump from `data/db.sql`
ddev db-import
```
