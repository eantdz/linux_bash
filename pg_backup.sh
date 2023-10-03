#!/bin/bash

PGPASSWORD=
export PGPASSWORD

POSTGRES_DB=
POSTGRES_USER=
POSTGRES_HOST=
dump_path=


pg_dump -U $POSTGRES_USER -h $POSTGRES_HOST $POSTGRES_DB | gzip > $dump_path/PostgreSQL_dump_$(date "+%Y-%m-%d-%HH").sql.gz \
  && echo "Backup done.."
  
unset PGPASSWORD
