PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard'"
  alias wget="curl -O --retry 999 --retry-max-time 0 -C -"
fi
