#!/bin/bash
cd ..
docker exec -t postgresql_4_spring pg_dumpall -c -U java_to_dev > db/dumpdb.sql