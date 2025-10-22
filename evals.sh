#!/bin/bash
# Evaluation script for STORM/GITSTORM
# Usage: ./evals.sh <env_name> <run_name> <config_file>
# Example: ./evals.sh Boxing Boxing-STORM-seed_0 STORM

# If running on a cluster with SLURM, uncomment and configure the following:
# #SBATCH -J STORM-evaluation
# #SBATCH -n 1
# #SBATCH -p gpu
# #SBATCH -t 12:00:00
# #SBATCH --cpus-per-task 18 
# #SBATCH --gpus 1 
# #SBATCH --mem=60G

env_name=${1:-"Boxing"}
run_name=${2:-"Boxing-STORM-seed_0"}
config=${3:-"STORM"}

echo "Starting evaluation: ${run_name} on ${env_name}"

python eval.py \
-config_path="config_files/${config}.yaml" \
-env_name="ALE/${env_name}-v5" \
-run_name="${run_name}"