#source $(dirname ${BASH_SOURCE[0]})/config_common.sh

# hyperparameters
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

#export WALLTIME_RUNANDTIME=50
#export WALLTIME=$((5 + ${NEXP:-1} * ($WALLTIME_RUNANDTIME + 5)))