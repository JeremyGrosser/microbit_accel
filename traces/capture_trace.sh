#!/bin/bash
sigrok-cli -d fx2lafw -c samplerate=2MHz -C D0=SDA,D1=SCL -P i2c --continuous -O ascii -o /dev/stdout
