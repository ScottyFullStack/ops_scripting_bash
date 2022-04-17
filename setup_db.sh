#!/bin/bash 

export $(cat app.env)

psql -h $PGHOST -U $PGUSER -d $PGDATABASE -c "
CREATE TABLE IF NOT EXISTS persons(
    id SERIAL,
    case_number VARCHAR(50) unique,
    dlc DATE,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    missing_age VARCHAR(50),
    city VARCHAR(50),
    county VARCHAR(50),
    state VARCHAR(50),
    sex VARCHAR(50),
    race_ethnicity VARCHAR(100),
    date_modified DATE
);" 