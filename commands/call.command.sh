call_command() {
  while [ $((PORT < ENDPORT)) != "0" ]; do
      PORT=$((PORT+1))
      redis-cli -p $PORT $2 $3 $4 $5 $6 $7 $8 $9
  done
  exit 0
}
