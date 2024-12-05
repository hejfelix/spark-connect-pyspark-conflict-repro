#!/usr/bin/env bash

# Check if poetry is installed
if ! command -v poetry &> /dev/null
then
    echo "Poetry could not be found. Please install poetry."
    exit
fi

poetry install --no-root
poetry run python import-error.py # Should fail with `cannot import name 'AnalyzeArgument' from 'pyspark.sql.udtf'`