#!/bin/bash

# ping all ip address

sub_mask=10.42.0.
for (( i = 0; i < 256; i++ )); do
  ping -c 1 ${sub_mask}$i
done
