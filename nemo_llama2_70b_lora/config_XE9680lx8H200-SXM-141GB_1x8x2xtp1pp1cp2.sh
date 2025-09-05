#source $(dirname ${BASH_SOURCE[0]})/config_common.sh

# hyperparameters
export MAX_STEPS=896
export LR=0.0005
export MINIBS=2
export TP=1
export CP=2
export SP=0
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
export DGXNNODES=1
export WALLTIME_RUNANDTIME=UNLIMITED
export WALLTIME=UNLIMITED


export FP8=True
export FP8_AMAX_ALGO=max
export FP8_REDUCE_AMAX=True
export FP8_AMAX_HISTORY=4
export FP8_DPA=1

export PP=2 #1
export CG_WEIGHT_CACHING=0

export MBS=1
export VAL_MBS=1
export VAL_CHECK_INTERVAL=384
export TORCH_CPP_LOG_LEVEL=ERROR
export LOAD_CKPT=True

#export WALLTIME_RUNANDTIME=50
#export WALLTIME=$((5 + ${NEXP:-1} * ($WALLTIME_RUNANDTIME + 5)))