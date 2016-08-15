PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard'"
fi
