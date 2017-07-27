
watch_command() {
  PORT=$((PORT+1))
  while [ 1 ]; do
      clear
      date
      redis-cli -p $PORT cluster nodes | head -30
      sleep 1
  done
  exit 0
}
