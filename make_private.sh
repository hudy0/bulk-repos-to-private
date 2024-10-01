#!/bin/bash

# Replace this with your GitHub username
USERNAME="hudy0"

for repo in $(gh repo list $USERNAME --limit 180 --json name --jq '.[].name')
do
  gh repo edit "$USERNAME/$repo" --visibility private
done
