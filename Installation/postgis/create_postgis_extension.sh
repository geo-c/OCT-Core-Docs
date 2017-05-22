#!/bin/sh
POSTGRES="gosu oct oct"

$POSTGRES --single -E <<EOSQL
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
EOSQL