PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  LC_CTYPE=en_US.UTF-8
  LC_ALL=en_US.UTF-8
fi
