PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  LC_CTYPE=en_US.UTF-8
  LC_ALL=en_US.UTF-8
fi

if [[ -a ~/.github-packages-token ]]; then
  export GITHUB_PACKAGES_TOKEN=$(cat ~/.github-packages-token)
fi

if [[ -a ~/.digitalocean-token ]]; then
  export DIGITALOCEAN_TOKEN=$(cat ~/.digitalocean-token)
fi

CAPTAIN_ROOT=~/Code/distope
