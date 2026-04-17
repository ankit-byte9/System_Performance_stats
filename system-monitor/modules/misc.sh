get_load_avg() {
 uptime | awk -F'load average: ' '{print $2}'
}
get_uptime() {
  uptime -p
}
