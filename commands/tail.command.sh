tail_command() {
  INSTANCE=$2
  PORT=$((PORT+INSTANCE))
  tail -f ${PORT}.log
  exit 0
}
