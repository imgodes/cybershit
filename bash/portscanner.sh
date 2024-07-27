#!/bin/bash
echo "Scanner de rede, digite uma rede sem o ultimo octeto
ela sera scaneada como /24 (ex. 192.168.1)"
echo "Digite a porta: "$(read port)

for host in {1..254}; do
    nc -zvn $1.$host $port 2> /dev/null
done