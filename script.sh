#!/bin/bash

echo "💬 Running lingui extract..."

# run cli
yarn extract || exit 1

if [[ -n $(git status --porcelain | grep "messages.po") ]]
then
    echo "🔥 Error: Uncommitted changes in some of the .po files! Run 'yarn extract' locally and resolve them."
    exit 1;
fi

echo "✅ lingui messages - all good!"
