#!/bin/bash
# Training script for STORM/GITSTORM
# Usage: ./train.sh <env_name> <seed> <config_file>
# Example: ./train.sh Boxing 0 STORM

# If running on a cluster with SLURM, uncomment and configure the following:
# #SBATCH -J STORM-training
# #SBATCH -n 1
# #SBATCH -p gpu
# #SBATCH -t 2-00:00:00
# #SBATCH --cpus-per-task 18 
# #SBATCH --gpus 1 
# #SBATCH --mem=60G

env_name=${1:-"Boxing"}
seed=${2:-0}
config=${3:-"STORM"}

exp_name=${env_name}-${config}-seed_${seed}
echo "Starting training: ${exp_name}"

python train.py \
BasicSettings.n=${exp_name} \
BasicSettings.Seed=${seed} \
BasicSettings.config_path="config_files/${config}.yaml" \
BasicSettings.env_name="ALE/${env_name}-v5"
