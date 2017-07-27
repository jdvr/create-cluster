start_command() {
  while [ $((PORT < ENDPORT)) != "0" ]; do
      PORT=$((PORT+1))
      echo "Starting $PORT"
      redis-server --port $PORT --cluster-enabled yes --cluster-config-file nodes-${PORT}.conf --cluster-node-timeout $TIMEOUT --appendonly yes --appendfilename appendonly-${PORT}.aof --dbfilename dump-${PORT}.rdb --logfile ${PORT}.log --daemonize yes
  done
  exit 0
}
