#!/bin/bash

CURRENT_VERSION=$(node -pe "require('./package.json').version")
echo "CURRENT_VERSION: $CURRENT_VERSION"

PUBLISHED_VERSION=$(npm view . version)
echo "PUBLISHED_VERSION: $PUBLISHED_VERSION"

if [[ $CURRENT_VERSION =~ $PUBLISHED_VERSION ]]; then
    echo "::set-output name=value::true"
else
    echo "::set-output name=value::false"
fi