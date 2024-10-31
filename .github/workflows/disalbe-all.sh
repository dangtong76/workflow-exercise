#!/bin/bash

#  all workflow ID 가져오기
workflow_ids=$(gh workflow list --json id --jq '.[].id')

# 모든 워크 플로우 중단
for id in $workflow_ids; do
  gh workflow disable $id
done