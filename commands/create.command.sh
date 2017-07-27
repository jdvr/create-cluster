create_command() {
  HOSTS=""
  while [ $((PORT < ENDPORT)) != "0" ]; do
      PORT=$((PORT+1))
      HOSTS="$HOSTS 127.0.0.1:$PORT"
  done
  redis-trib create --replicas $REPLICAS $HOSTS
  exit 0
}
