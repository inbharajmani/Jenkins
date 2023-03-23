#!/bin/bash
pwd
echo $1
if [[ $? -eq 0 ]]; then
    SnapshotPushed=true
fi