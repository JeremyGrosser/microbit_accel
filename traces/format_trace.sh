#!/bin/bash
sigrok-cli -i trace.sr -P i2c -C SDA,SCL >trace.txt
