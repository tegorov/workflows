#!/usr/bin/env bash

# Env:
# JIRA_SERVER
# JIRA_USERNAME
# JIRA_TOKEN

function addComment() {
  local issue_id="$1"
  local comment="$2"
  local retry_count="$3"

  curl --request POST \
    --user "${JIRA_USERNAME}:${JIRA_TOKEN}" \
    --header 'Content-Type: application/json' \
    --retry "${retry_count}" \
    --data "{ \"body\" : \"${comment}\" }" \
    --url "${JIRA_SERVER}/rest/api/2/issue/${issue_id}/comment"
}
