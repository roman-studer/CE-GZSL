#!/bin/bash
#SBATCH -t 1-2:00:00
#SBATCH -p performance
#SBATCH --gpus=1
#SBATCH --job-name=CE_GZSL_Training
#SBATCH --output=CE_GZSL_Training.out
#SBATCH --error=CE_GZSL_Training.err

SINGULARITYENV_LC_ALL=C.UTF-8 \
SINGULARITYENV_LANG=C.UTF-8 \
SINGULARITYENV_WANDB_API_KEY=e6b9a7a613d56626c6a0225fa91d2bfcfe02ef0f \
singularity exec -B /mnt/nas05/data01/apollo/zsl/CE/CE-GZSL:/workspace \
--nv /mnt/nas05/data01/apollo/zsl/APN/APN-ZSL/torch_cv0.0.1 python3 /workspace/CE_GZSL_wandb.py
