# service_monitor.sh - Service Monitor Script

A bash script for automated monitoring and automatic restart of critical system services with comprehensive logging.

## Overview

This script continuously monitors the health of essential system services and automatically attempts to restart any stopped services. It provides real-time status updates and maintains detailed logs for system administration and troubleshooting.

## Features

- **Multi-service monitoring**: Monitors nginx, sshd, and docker services
- **Automatic restart**: Attempts to restart stopped services automatically
- **Comprehensive logging**: Logs all activities to `/var/log/service_monitor.log`
- **Real-time output**: Displays status updates both on console and in log file
- **Timestamp tracking**: Records exact time of each check
- **Visual indicators**: Uses emojis for clear status representation (✅ for running, ❌ for issues)

## Prerequisites

- **Operating System**: Linux with systemd
- **Permissions**: Root or sudo access required
- **Services**: The script monitors these services by default:
  - `nginx` - Web server
  - `sshd` - SSH daemon
  - `docker` - Container runtime

## Installation

1. **Download the script**:
   ```bash
   wget https://raw.githubusercontent.com/abcofdevops/shell-scripting/main/service-monitor/service_monitor.sh

   # or

   curl -O https://raw.githubusercontent.com/abcofdevops/shell-scripting/main/service-monitor/service_monitor.sh
   ```

2. **Make it executable**:
   ```bash
   chmod +x service_monitor.sh
   ```

3. **Ensure log directory exists**:
   ```bash
   sudo mkdir -p /var/log
   sudo touch /var/log/service_monitor.log
   ```

## Usage

### Basic Usage
```bash
sudo ./service_monitor.sh
```

### Run with cron for periodic monitoring
```bash
# Add to crontab for monitoring every 5 minutes
crontab -e
*/5 * * * * /path/to/service_monitor.sh
```

### View logs
```bash
sudo tail -f /var/log/service_monitor.log
```

## Configuration

### Adding/Removing Services
Edit the `services` array in the script:
```bash
services=("nginx" "sshd" "docker" "mysql" "redis")
```

### Changing Log Location
Modify the `LOGFILE` variable:
```bash
LOGFILE="/custom/path/service_monitor.log"
```

## Sample Output

```
-----------------------------------
  Service Health Check Report
  Mon Dec 11 10:30:45 UTC 2023
-----------------------------------
nginx is ✅ RUNNING
-----------------------------------
sshd is ✅ RUNNING
-----------------------------------
docker is ❌ STOPPED

Attempting to restart docker...
docker has been ✅ restarted successfully.
-----------------------------------
```

## Log File Structure

The log file contains:
- **Timestamp**: When each check was performed
- **Service status**: Current state of each monitored service
- **Restart attempts**: Records of automatic restart attempts
- **Success/failure**: Results of restart operations

## Troubleshooting

### Common Issues

1. **Permission denied**:
   ```bash
   sudo chmod +x service_monitor.sh
   sudo ./service_monitor.sh
   ```

2. **Service not found**:
   - Verify service names: `systemctl list-units --type=service`
   - Update the services array accordingly

3. **Log file permissions**:
   ```bash
   sudo chown $(whoami):$(whoami) /var/log/service_monitor.log
   ```

### Script Behavior

- **Service running**: Logs success and continues
- **Service stopped**: Attempts automatic restart
- **Restart successful**: Logs success
- **Restart failed**: Logs failure and requires manual intervention


## Advanced Usage

### Integration with Monitoring Systems
```bash
# Send alerts on failure
if ! systemctl restart "$service" &>> "$LOGFILE"; then
    echo "ALERT: Failed to restart $service" | mail -s "Service Alert" admin@company.com
fi
```

### Custom Notifications
```bash
# Slack notification example
curl -X POST -H 'Content-type: application/json' \
  --data '{"text":"Service '$service' is down on $(hostname)"}' \
  YOUR_SLACK_WEBHOOK_URL
```

---

**Note**: Always test in a non-production environment before deploying to production systems.