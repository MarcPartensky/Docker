#!/usr/bin/env bash
KEYS_PATH="./data/tmate/keys"

set -eu

gen_key() {
  keytype=$1
  ks="${keytype}_"
  key="$KEYS_PATH/ssh_host_${ks}key"
  if [ ! -e "${key}" ] ; then
    ssh-keygen -t "${keytype}" -f "${key}" -N ''
    echo ""
  fi
  SIG=$(ssh-keygen -l -E SHA256 -f "$key.pub" | cut -d ' ' -f 2)
}

mkdir -p $KEYS_PATH
gen_key rsa
RSA_SIG=$SIG
gen_key ed25519
ED25519_SIG=$SIG


echo "You may use the following settings this in your .tmate.conf:"
echo ""
echo "set -g tmate-server-host localhost"
echo "set -g tmate-server-port 22"
echo "set -g tmate-server-rsa-fingerprint $RSA_SIG"
echo "set -g tmate-server-ed25519-fingerprint $ED25519_SIG"
