#!/bin/bash
head -c 100MB /dev/urandom > /mnt/bigFile$1.txt
