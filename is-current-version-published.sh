#!/bin/bash

CURRENT_VERSION=$(node -pe "require('./package.json').version")
echo "CURRENT_VERSION: $CURRENT_VERSION"

PUBLISHED_VERSION=$(npm view . version)
echo "PUBLISHED_VERSION: $PUBLISHED_VERSION"

[[ $CURRENT_VERSION =~ $PUBLISHED_VERSION ]] && echo true || echo false

# if [[ $CURRENT_VERSION =~ $PUBLISHED_VERSION ]]; 
#   then echo true
#   else echo false
# fi