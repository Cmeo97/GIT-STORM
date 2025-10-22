#!/bin/bash
# Batch evaluation script for multiple environments and seeds
# This script launches evaluation jobs for all specified environments and seeds

# Declare variables - modify these to match your experiments
declare -a All_env_names=("Boxing" "Hero" "MsPacman")
declare -a All_seeds=(0 1 2)
config="STORM"

for env_name in "${All_env_names[@]}"
do
    for seed in "${All_seeds[@]}"
    do
        run_name="${env_name}-${config}-seed_${seed}"
        echo "Evaluating: ${run_name}"
        # If using SLURM, use: sbatch evals.sh $env_name $run_name $config
        # Otherwise, use: ./evals.sh $env_name $run_name $config
        ./evals.sh $env_name $run_name $config
    done
done
