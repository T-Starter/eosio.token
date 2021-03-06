#! /bin/bash

# contract
contract="eosio.token"

echo ">>> Building $contract contract..."

# eosio.cdt v1.6.1
# -contract=<string>       - Contract name
# -o=<string>              - Write output to <file>
# -abigen                  - Generate ABI
# -I=<string>              - Add directory to include search path
# -L=<string>              - Add directory to library search path
# -R=<string>              - Add a resource path for inclusion

eosio-cpp -o="./build/$contract.wasm" -contract="$contract" -abigen ./$contract.cpp
