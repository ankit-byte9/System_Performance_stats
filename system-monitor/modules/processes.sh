top_cpu_processes() {
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}
 
top_mem_processes() {
 ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}
