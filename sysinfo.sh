#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 3, Aufgabe 2
# Gibt Infos über das System aus

## main ##
clear
echo CPU: $(sysctl machdep.cpu.brand_string | cut -d " " -f2-)
echo RAM total: $(($(sysctl hw.memsize | cut -d " " -f2) / 1024 / 1024 )) MB
echo RAM free: $(./free | grep Free | cut -d " " -f3-) 
echo "memory (/) used:   "$(df -h / | grep / | (cut -d " " -f3 || cut -d " " -f5))
echo "memory (/) unused: "$(df -h / | grep / | cut -d " " -f5)
echo "memory (/home) used:   "$(df -h /home | grep / | cut -d " " -f6)
echo "memory (/home) unused: "$(df -h /home | grep / | cut -d " " -f10)
echo running processes: $(top -l 1 | grep Processes | cut -d " " -f2)
system_profiler SPSoftwareDataType | grep "System Version" | cut -d " " -f7-
system_profiler SPSoftwareDataType | grep "Kernel Version" | cut -d " " -f7-
echo
