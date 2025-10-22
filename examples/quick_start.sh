#!/bin/bash
# Quick start example for GIT-STORM

echo "🚀 GIT-STORM Quick Start"
echo ""
echo "This script will train a small GIT-STORM model on Atari Boxing"
echo "for demonstration purposes (reduced steps)."
echo ""

# Ensure we're in the right directory
cd "$(dirname "$0")/.." || exit

# Check if environment is activated
if [[ "$CONDA_DEFAULT_ENV" != "STORM" ]]; then
    echo "⚠️  Please activate the STORM environment first:"
    echo "   conda activate STORM"
    exit 1
fi

echo "Starting training..."
echo ""

# Train for a short period for demonstration
python train.py \
  BasicSettings.n="quick-start-demo" \
  BasicSettings.env_name="ALE/Boxing-v5" \
  BasicSettings.config_path="config_files/GITSTORM.yaml" \
  BasicSettings.Seed=0 \
  JointTrainAgent.SampleMaxSteps=10000 \
  JointTrainAgent.SaveEverySteps=5000

echo ""
echo "✅ Quick start training complete!"
echo ""
echo "Check your results in: outputs/quick-start-demo/"
echo ""
echo "To monitor training with TensorBoard:"
echo "  tensorboard --logdir runs/"

