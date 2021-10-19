#! /bin/bash

#contract
contract="eosio.token"

#account
account=$1

#network
if [[ "$2" == "mainnet" ]]; then
    network=Mainnet
    url=http://api.tlos.africa #Telos Mainnet
elif [[ "$2" == "testnet" ]]; then
    network=Testnet
    url=https://testnet.telos.africa #Telos Testnet
elif [[ "$2" == "local" ]]; then
    network=Local
    url=http://127.0.0.1:8888
else
    echo "need network"
    exit 0
fi

echo ">>> Deploying $contract to $account on Telos $network..."

#eosio v1.8.4
echo cleos -u $url set contract $account ./build/ $contract.wasm $contract.abi -p $account