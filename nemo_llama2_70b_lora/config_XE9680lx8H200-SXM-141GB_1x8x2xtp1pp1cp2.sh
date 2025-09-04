#!/bin/bash

# Copyright (c) 2024, NVIDIA CORPORATION.  All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#source $(dirname ${BASH_SOURCE[0]})/config_common.sh

# hyperparameters
export MAX_STEPS=1024 #896
export LR=0.0004 #0.0005
export MINIBS=4 #1
export TP=4 #1
export PP=1 # add
export CP=2 #2
export SP=1

export SKIP_EVALS=3
export NVTE_FLASH_ATTN=0
export NVTE_FUSED_ATTN=1
export CUDNN_FRONTEND_ATTN_DP_WORKSPACE_LIMIT=0
export VBOOST_VALUE=1
export FP8_ACTIVATION=True 
export FP8_DPA=0
export NVTE_FP8_DPA_BWD=1
export TP_COMM_OVERLAP=1
export NCCL_MIN_CTAS=32
export UCX_TLS=self,tcp

# system parameters
export DGXNNODES=2
export WALLTIME_RUNANDTIME=UNLIMITED
export WALLTIME=UNLIMITED

#export WALLTIME_RUNANDTIME=50
#export WALLTIME=$((5 + ${NEXP:-1} * ($WALLTIME_RUNANDTIME + 5)))

export MBS=1 #1
export VAL_MBS=1
export VAL_CHECK_INTERVAL=384

export FP8=True
export FP8_AMAX_ALGO=max
export FP8_REDUCE_AMAX=True
export FP8_AMAX_HISTORY=4
export FP8_DPA=1
