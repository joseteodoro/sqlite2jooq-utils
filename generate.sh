#!/usr/bin/env bash

mkdir -p ./target/database 2> /dev/null
rm -rf ./target/database/generated.db

source ./config.properties
./sqlite-tools/sqlite3 ./target/database/generated.db < $script
mvn jooq-codegen:generate -Djooq.package.name=$package -Djooq.url=./target/database/generated.db
