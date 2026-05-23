echo "HELLO FROM GITHUB FLOW!"

#!/bin/bash

# 读取特性标志（模拟从配置中心读取）
source ./feature_flags.conf

echo "Hello from GitHub Flow!"

# 智能问候功能（未完成，用特性标志保护）
if [ "$FEATURE_SMART_GREETING" -eq 1 ]; then
    hour=$(date +%H)
    if [ $hour -lt 12 ]; then
        echo "Good morning!"
    else
        echo "Good evening!"
    fi
fi
