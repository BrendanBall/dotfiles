#!/bin/bash
STATUS=$(systemctl --user is-active cloudsql-dev)

echo "{\"state\": \"Idle\", \"text\": \"SQL DEV: $STATUS\"}"
