#!/bin/bash

# Enable explain mode if passed
EXPLAIN=false
[ "${1:-}" == "explain" ] && EXPLAIN=true

# Thresholds
CPU_THRESHOLD=1.0    # Load per core
MEM_THRESHOLD=90     # Percent
DISK_THRESHOLD=90    # Percent
UPTIME_THRESHOLD=60  # Seconds

# Gather info
cpu_cores=$(nproc)
cpu_load=$(uptime | awk -F'load average:' '{ print $2 }' | cut -d',' -f1 | xargs)
cpu_per_core=$(echo "$cpu_load / $cpu_cores" | bc -l | awk '{printf("%.3f", $1)}')

mem_used=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')
disk_used=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
uptime_seconds=$(awk '{print int($1)}' /proc/uptime)

status="OK"
reasons=()

# Checks
if (( $(echo "$cpu_per_core > $CPU_THRESHOLD" | bc -l) )); then
    status="ERROR"
    reasons+=("High CPU load: $cpu_per_core per core (threshold: $CPU_THRESHOLD)")
fi

if [ "$mem_used" -gt "$MEM_THRESHOLD" ]; then
    status="ERROR"
    reasons+=("High memory usage: $mem_used% (threshold: $MEM_THRESHOLD%)")
fi

if [ "$disk_used" -gt "$DISK_THRESHOLD" ]; then
    status="ERROR"
    reasons+=("High disk usage: $disk_used% on / (threshold: $DISK_THRESHOLD%)")
fi

if [ "$uptime_seconds" -lt "$UPTIME_THRESHOLD" ]; then
    status="ERROR"
    reasons+=("System uptime is too low: $uptime_seconds seconds")
fi

# Output
if [ "$status" == "OK" ]; then
  echo "OK"
  if $EXPLAIN; then
    echo -e "System is healthy:\n" \
            "- CPU: $cpu_per_core per core\n" \
            "- Memory: $mem_used%\n" \
            "- Disk: $disk_used%\n" \
            "- Uptime: $uptime_seconds seconds"
  fi
else
  echo "ERROR"
  if $EXPLAIN; then
    echo "System issues detected:"
    for reason in "${reasons[@]}"; do
      echo "- $reason"
    done
  fi
fi


