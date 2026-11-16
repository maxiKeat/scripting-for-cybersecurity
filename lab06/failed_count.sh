#!/bin/bash

FAILED_COUNT=$(grep -c "Failed password" case/logs/auth.log)
echo "There were $FAILED_COUNT failed login attempts"


