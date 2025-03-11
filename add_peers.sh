#!/bin/bash

echo "Waiting for node to start..."
sleep 15

PEER1="enode://3e45d2320bfde3eab683fbbd3f38171ca206f047b755fd41b646e5021ab5b6cce6074d2c1eb74c5db2837e9ac34d2ad6a88e69e175050b65244f601b891fbf69@192.168.2.2:30308"
PEER2="enode://933713a6513080f10e0b91e036a4d72efb49143a36ff968a7c3cf4b06fed09b54bb70c86422db3331a277af6206fbf22cf4b01e9423c342a17cd505fd0adf290@192.168.2.3:30309"

if [[ "$NODE_NAME" == "node2" ]]; then
    echo "Adding peer to node2..."
    curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$PEER1"'"],"id":1}' http://127.0.0.1:8550
fi

if [[ "$NODE_NAME" == "node3" ]]; then
    echo "Adding peers to node3..."
    curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$PEER1"'"],"id":1}' http://127.0.0.1:8551
    curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$PEER2"'"],"id":1}' http://127.0.0.1:8551
fi

if [[ "$NODE_NAME" == "node4" ]]; then
    echo "Adding peers to node4..."
    curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$PEER1"'"],"id":1}' http://127.0.0.1:8552
    curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$PEER2"'"],"id":1}' http://127.0.0.1:8552
fi
