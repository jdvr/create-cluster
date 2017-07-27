stop_command() {
  while [ $((PORT < ENDPORT)) != "0" ]; do
      PORT=$((PORT+1))
      echo "Stopping $PORT"
      redis-cli -p $PORT shutdown nosave
  done
  exit 0
}
