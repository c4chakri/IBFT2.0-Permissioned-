#!/bin/bash

echo "Waiting for all nodes to start..."
sleep 10  # Wait for nodes to initialize

echo "Adding enodes to the allowlist..."
curl -X POST --data '{
  "jsonrpc":"2.0",
  "method":"perm_addNodesToAllowlist",
  "params":[[
    "enode://3e45d2320bfde3eab683fbbd3f38171ca206f047b755fd41b646e5021ab5b6cce6074d2c1eb74c5db2837e9ac34d2ad6a88e69e175050b65244f601b891fbf69@127.0.0.1:30308",
    "enode://933713a6513080f10e0b91e036a4d72efb49143a36ff968a7c3cf4b06fed09b54bb70c86422db3331a277af6206fbf22cf4b01e9423c342a17cd505fd0adf290@127.0.0.1:30309",
    "enode://bffc8d2a7eb54dc7fb953a18480d4b00889863f76215ed9ef92f2ded09d48b210a2d6421e238b7aa758d69462a6803aec4b29a7ea3713133223f99befe3e14ff@127.0.0.1:30310",
    "enode://1cd6036d1b4604dc97a21dd29f0591fbdc200b076fa9fc73a05fc1bed4f8f01842b27040b608f826e1bed819abf42be0b6095a5e5a5c7e1671a09a1db3e85f05@127.0.0.1:30311"
  ]],
  "id":1
}' http://127.0.0.1:8549/ -H "Content-Type: application/json"

echo "Enodes added to allowlist!"
