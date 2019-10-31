#!/bin/sh
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit -1;
fi
cd graphql
apollo-codegen introspect-schema http://localhost:4000/graphql --output schema.json
amplify-graphql-docs-generator
apollo-codegen generate *.graphql --schema schema.json --output ../"$1"/API.swift
