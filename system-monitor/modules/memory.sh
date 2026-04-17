get_memory_usage(){
	 free -m | awk 'NR==2 {printf "%.2f", ($3/$2)*100}'
}
