FROM postgres:13-alpine

WORKDIR /app

COPY initdb.sql .

ENTRYPOINT [ "sh", "-c", "psql -h $PGHOST -U $PGUSER -d $PGDB -f initdb.sql" ]
