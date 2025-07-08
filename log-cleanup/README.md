# log_cleanup.sh - Log Rotation Script

This Bash script automates log file maintenance for your application by:

- Compressing `.log` files older than 7 days but newer than 30 days.
- Deleting compressed (`.gz`) logs older than 30 days.
- Optionally deleting uncompressed `.log` files older than 30 days.
- Logging all actions to a central log file (`log_rotation.log`).


## Setup

1. **Add the script file** in this location `/usr/local/bin/log_rotate.sh`

2. **Make it executable**:
    ```bash
    sudo chmod +x /usr/local/bin/log_rotate.sh
    ```

3. **Ensure the log directory exists**:
    ```bash
    sudo mkdir -p /var/log/myapp
    sudo touch /var/log/myapp/log_rotation.log
    ```
> ⚠️ Add the correct paths of your logs directory in `log_cleanup.sh`

## Cronjob Setup

To run the script **daily at 1:00 AM**, add the following line to your root crontab:

1. Edit crontab:
    ```bash
    sudo crontab -e
    ```

2. Add the cronjob:
    ```cron
    0 1 * * * /usr/local/bin/log_rotate.sh
    ```

> **Note**: Make sure the script runs as a user with appropriate permissions to read, compress, and delete files in `/var/log/myapp`.

## Logging
All operations are logged to:

```bash
/var/log/myapp/log_rotation.log
```