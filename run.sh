#!/bin/sh

echo "Start!"
./$1 &
# get child pid
child_pid=$!
echo "Child pid = $child_pid"

# wait and kill
sleep 10
kill -9 $child_pid

echo "Done!"
