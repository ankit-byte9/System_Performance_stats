System Performance Stats (Modular)

A lightweight, modular Linux system monitoring tool written in Bash. This utility provides real-time health reports and logs system metrics including CPU, Memory, Disk usage, and top-consuming processes.
🚀 Features

    Modular Architecture: Separate logic for CPU, Memory, Disk, and Processes for easy maintenance.

    Config-Driven: Control monitoring intervals and log locations via a central config.conf file.

    Automated Logging: Keeps a history of system health for later analysis.

    Live Monitoring: Continuous execution mode for real-time tracking.

📂 Project Structure

System_Performance_stats/
├── modules/
│   ├── cpu.sh          # Logic for CPU usage calculation
│   ├── memory.sh       # Logic for RAM metrics
│   ├── disk.sh         # Logic for disk space analysis
│   ├── processes.sh    # Logic for process tracking
│   └── misc.sh         # Helper functions
├── config.conf.example # Template for configuration
├── sys_health.sh       # Main entry point (Execution script)
└── .gitignore          # Prevents logs and local configs from being tracked
🛠️ Installation & Usage
1. Clone the repository

git clone https://github.com/ankit-byte9/System_Performance_stats.git
cd System_Performance_stats
2. Setup Configuration

Copy the example config to create your local configuration:
cp config.conf.example config.conf
(Edit config.conf to change the INTERVAL or LOG_FILE path.)
3. Set Permissions

Ensure the scripts are executable:
chmod +x sys_health.sh
chmod +x modules/*.sh
4. Run the Monitor

./sys_health.sh
📊 Sample Output

--- System Health Report (Sat Apr 18 01:05:22 IST 2026) ---
CPU : 12.45%
MEM : 45.20%
DISK : /dev/sda1 usage 60%

Top CPU processes:
PID  COMMAND  %CPU
1234 python   5.5
5678 chrome   4.2
