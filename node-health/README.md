# nodehealth.sh - Node Health Check Script

A simple Bash script to check the health of a Linux node by evaluating system metrics:

- CPU load (per core)
- Memory usage
- Disk usage (on `/`)
- System uptime

It returns `OK` or `ERROR`, and gives explanations when run with the `explain` argument.


## Features

- ✅ CPU load check (per core)
- ✅ Memory usage check
- ✅ Disk usage check on root (`/`)
- ✅ Uptime threshold check
- ✅ Optional `explain` mode for detailed output


## Requirements

- Bash (`#!/bin/bash`)
- Common system utilities:
  - `free`, `df`, `uptime`, `ps`, `grep`, `awk`, [`bc`](#about-bc--l),

> ⚠️ This script must be run using **Bash**. It will not work properly with `/bin/sh` due to Bash-specific syntax like arrays and arithmetic expressions.


## Usage

Make the script executable:

```bash
chmod +x nodehealth.sh
```

```bash
# Basic usage
./nodehealth.sh

# With explanation
./nodehealth.sh explain
```

## Sample Output

- Healthy system:
    ```bash
    $ ./nodehealth.sh
    OK
    ```

- With `explain` argument
    ```bash
    $ ./nodehealth.sh explain
    OK
    System is healthy:
    - CPU: 0.22 per core
    - Memory: 67%
    - Disk: 45%
    - Uptime: 1347 seconds
    ```

- Unhealthy system:
    ```bash
    $ ./nodehealth.sh explain
    ERROR
    System issues detected:
    - High memory usage: 95% (threshold: 90%)
    ```

## About `bc -l`
The script uses this to calculate CPU load per core:

```bash
echo "$cpu_load / $cpu_cores" | bc -l
```

`bc` = Basic Calculator (a command-line calculator).

`-l` = Loads the math library.

Enables floating-point division.

Without `-l`, integer division is used and would give incorrect results.