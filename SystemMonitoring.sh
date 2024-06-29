#!/bin/bash
# System Monitoring Script

cpu_usage=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')
memory_usage=$(free | awk '/Mem/{print $3/$2 * 100.0}')
echo "CPU Usage: $cpu_usage%"
echo "Memory Usage: $memory_usage%"
