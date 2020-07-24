#!/bin/bash

if [ -z $NOSIGN ]; then
  echo "Creating SHASUMS && GPG Signing..."
  shasum -a256 * > ./freight_${VERSION}_SHA256SUMS
  gpg --default-key 6F6EB43E --detach-sig ./freight_${VERSION}_SHA256SUMS
 ## popd
fi

