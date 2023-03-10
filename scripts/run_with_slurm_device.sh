#!/bin/bash

export WORLD_SIZE=$SLURM_NTASKS
export MASTER_ADDR=$SLURM_LAUNCH_NODE_IPADDR
export MASTER_PORT=54320
export NODE_RANK=$SLURM_NODEID
export ROCR_VISIBLE_DEVICES=$SLURM_LOCALID
exec $*
