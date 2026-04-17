#!/bin/bash
BASE_DIR=$(dirname "$0")
source "$BASE_DIR/config.conf"
source "$BASE_DIR/modules/cpu.sh"
source "$BASE_DIR/modules/memory.sh"
source "$BASE_DIR/modules/disk.sh"
source "$BASE_DIR/modules/processes.sh"
source "$BASE_DIR/modules/misc.sh"
main() {
	echo "--- System Health Report ($(date)) ---"
	cpu=$(get_cpu_usage)
	mem=$(get_memory_usage)
	disk=$(get_disk_usage)
        echo "CPU : $(printf "%.2f" "$cpu")%"
	echo "MEM : $(printf "%.2f" "$mem")%"
	echo "DISK :$disk"
	echo
	echo "Top CPU processes:"
	top_cpu_processes


}
while true; do
	main | tee -a "$LOG_FILE"
	sleep "$INTERVAL"
done
