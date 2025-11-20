#!/bin/bash
#SBATCH --job-name=instructerc_llm
#SBATCH --output=../logs/instructerc_%j.out
#SBATCH --error=../logs/instructerc_%j.err
#SBATCH --qos=gpu02
#SBATCH --gres=gpu:2
#SBATCH --time=8:00:00
#SBATCH --mem=400G
echo "Job started at $(date)"
echo "Running on host: $(hostname)"
echo "Job ID: $SLURM_JOB_ID"
cd /local/scratch/yhu383/InstructERC/code
source ../venv/bin/activate
bash train_and_inference_Uni.sh
echo "Job finished at $(date)"
