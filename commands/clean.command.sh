clean_command() {
  rm -rf *.log
  rm -rf appendonly*.aof
  rm -rf dump*.rdb
  rm -rf nodes*.conf
  exit 0
}
