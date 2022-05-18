-- You dont need to run this file since Graphile migrate creates the DB's and migration 000002 creates the Postgis Extension.
CREATE DATABASE iso28258;
CREATE DATABASE iso28258_shadow;

\c iso28258
CREATE EXTENSION postgis;

\c iso28258_shadow
CREATE EXTENSION postgis;

