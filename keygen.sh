#!/bin/sh
KEYS_PATH=${KEYS_PATH:-/root/.ssh}
PRIVATE_KEY=$KEYS_PATH/id_rsa
PUBLIC_KEY=${PRIVATE_KEY}.pub
UID=${UID:-0}
GUI=${GUI:-0}

if [ ! -f "$PRIVATE_KEY" ]; then
  /usr/bin/ssh-keygen -q -t rsa -N '' -f $PRIVATE_KEY
  chmod 700 $KEYS_PATH
  chmod 644 $PUBLIC_KEY
  chmod 600 $PRIVATE_KEY
  chown -R $UID:$GID $KEYS_PATH
fi

echo "========= PUBLIC KEY ============"
cat $PUBLIC_KEY
echo "======= END PUBLIC KEY ========="

exit 0
