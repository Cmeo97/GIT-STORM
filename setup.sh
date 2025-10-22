#!/bin/bash
# Setup script for GIT-STORM

echo "Setting up GIT-STORM environment..."

# Check if conda is available
if ! command -v conda &> /dev/null
then
    echo "❌ Conda not found. Please install Anaconda or Miniconda first."
    echo "Visit: https://docs.conda.io/en/latest/miniconda.html"
    exit 1
fi

# Create conda environment
echo "📦 Creating conda environment from environment.yml..."
conda env create -f environment.yml

echo ""
echo "✅ Setup complete!"
echo ""
echo "To activate the environment, run:"
echo "  conda activate STORM"
echo ""
echo "To start training, run:"
echo "  python train.py BasicSettings.env_name='ALE/Boxing-v5'"
echo ""
echo "For more information, see README.md"

