#!/bin/bash
tcpdump -l -i br0 icmp6 and ip6[40] = 135 | while read -r line; do
    touch /tmp/ipv6_trigger.flag
done
