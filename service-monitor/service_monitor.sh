#!/bin/bash

# List of services to monitor
services=("nginx" "sshd" "docker")
LOGFILE="/var/log/service_monitor.log"

# Report Header
echo "-----------------------------------" | tee -a "$LOGFILE"
echo "  Service Health Check Report" | tee -a "$LOGFILE"
echo "  $(date)" | tee -a "$LOGFILE"
echo "-----------------------------------" | tee -a "$LOGFILE"

# Loop through services
for service in "${services[@]}"; do
  if systemctl is-active --quiet "$service"; then
    echo "$service is ✅ RUNNING" | tee -a "$LOGFILE"
  else
    echo "$service is ❌ STOPPED" | tee -a "$LOGFILE"
    echo ""
    echo "Attempting to restart $service..." | tee -a "$LOGFILE"

    if systemctl restart "$service" &>> "$LOGFILE"; then
      echo "$service has been ✅ restarted successfully." | tee -a "$LOGFILE"
    else
      echo "❌ Failed to restart $service. Manual intervention needed." | tee -a "$LOGFILE"
    fi
  fi
  echo "-----------------------------------" | tee -a "$LOGFILE"
done