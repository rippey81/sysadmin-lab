#!/bin/bash

THRESHOLD=80
REPORT="disk_report_$(date +%F_%H%M).log"

echo "Disk Usage Report - $(date)" > "$REPORT"
echo "==============================" >> "$REPORT"

df -h | grep '^/dev/' | while read line; do
  USAGE=$(echo $line | awk '{print $5}' | sed 's/%//')
  MOUNT=$(echo $line | awk '{print $6}')
  
  if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "⚠️ Warning: $MOUNT is at ${USAGE}% usage!" >> "$REPORT"
  else
    echo "$MOUNT is at ${USAGE}% usage." >> "$REPORT"
  fi
done

echo "Report saved to $REPORT"
