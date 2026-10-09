#!/bin/bash

CASE_DIR="case"
LOG_DIR="$CASE_DIR/logs"
EVIDENCE_DIR="CASE_DIR/Evidence"
ANALYST="analyst"

echo "Analyst		:$ANALYST"
echo "Case Folder	:$CASE_DIR"
echo"Log folder		:$LOG_DIR"
echo "Evidence		:$EVIDENCE_DIR"
echo  ""

echo "Contents of $LOG_DIR:"
ls "$EVIDENCE_DIR"
echo ""
echo "Backup file for this case would be $(CASE_DIR)_backup.tar"

