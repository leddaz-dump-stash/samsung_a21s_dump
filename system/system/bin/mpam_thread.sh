#!/system/bin/sh

pid="$(ps -ef | grep kswapd | grep -v grep | tr -s ' ' | cut -d ' ' -f 2 | head -n 1)"
echo $pid > /dev/cpuset/memory-intensive/tasks
pid="$(ps -ef | grep kcompactd | grep -v grep | tr -s ' ' | cut -d ' ' -f 2 | head -n 1)"
echo $pid > /dev/cpuset/memory-intensive/tasks
pid="$(ps -ef | grep kzerod | grep -v grep | tr -s ' ' | cut -d ' ' -f 2 | head -n 1)"
echo $pid > /dev/cpuset/memory-intensive/tasks
pid="$(ps -ef | grep kzerod_huge | grep -v grep | tr -s ' ' | cut -d ' ' -f 2 | head -n 1)"
echo $pid > /dev/cpuset/memory-intensive/tasks
