#!/bin/bash

LINE_COUNT=$(wc -l < case/lab04-data/logs/auth.log)
echo "auth.log has $LINE_COUNT lines"

