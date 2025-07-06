#!/bin/bash
output=$(./script.sh hello l)
[[ "$output" -eq 2 ]] && echo "Test passed" || echo "Test failed"