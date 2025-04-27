# n8n with PostgreSQL and Worker

Starts n8n with PostgreSQL as database, and the Worker as a separate container.
This docker compose stack come from [the officiel n8n Github repository](https://github.com/n8n-io/n8n-hosting/tree/main/docker-compose/withPostgresAndWorker).

## Configuration

Copy the ``sample.env`` file and rename it ``.env``. Personnalize the name of the database, user and password for PostgreSQL in the [`.env`](.env) file in the current directory.

## Start

To start n8n simply start docker-compose by executing the following
command in the current folder.

If *gateway* network does not exists and if you want to use it, create it before.

```shell
docker network create gateway
```

**IMPORTANT:** But before you do that change the default users and passwords in the [`.env`](.env) file!

```
docker-compose up -d
```

To stop it execute:

```
docker-compose stop
```

## Update

To update the Docker stack from the Github repository, use make :

```shell
make update
```

