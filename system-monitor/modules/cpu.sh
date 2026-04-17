get_cpu_usage() {
    awk -F'[, ]+' '/Cpu/ {print 100 - $8}' < <(top -bn1)
}
