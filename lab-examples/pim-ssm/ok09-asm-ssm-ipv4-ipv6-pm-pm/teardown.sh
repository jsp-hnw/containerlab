#!/bin/sh

sudo clab destroy -t pim.yml

# virtual network interface remove
sudo ip addr flush dev veth42
sudo ip link set dev veth42 down
sudo ip link del veth42
sudo ip addr flush dev veth52
sudo ip link set dev veth52 down
sudo ip link del veth52
