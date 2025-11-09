#!/bin/bash
#SBATCH --job-name=instructerc_llm
#SBATCH --output=../logs/speechcue_%j.out
#SBATCH --error=../logs/speechcue_%j.err
#SBATCH --gres=gpu:1
#SBATCH --time=12:00:00
#SBATCH --mem=32G
echo "Job started at $(date)"
echo "Running on host: $(hostname)"
echo "Job ID: $SLURM_JOB_ID"
cd /local/scratch/yhu383/InstructERC/code
source ../venv/bin/activate
bash train_and_inference_Uni.sh
echo "Job finished at $(date)"
