#!/bin/sh

# virtual network interface setup
sudo ip link add veth42 type veth peer name veth24
sudo ip addr add 10.0.3.2/24 dev veth42
sudo ip addr add 3003::2/64 dev veth42
sudo ip link set dev veth42 up
sudo ip link set dev veth24 up

sudo ip link add veth52 type veth peer name veth25
sudo ip addr add 10.0.4.2/24 dev veth52
sudo ip addr add 3004::2/64 dev veth52
sudo ip link set dev veth52 up
sudo ip link set dev veth25 up

sudo clab deploy -t pim.yml
