# GIT-STORM Quick Start Guide

This guide will get you up and running with GIT-STORM in under 5 minutes!

## 🚀 Installation (1 minute)

```bash
# Clone the repository
git clone <repository-url>
cd GIT-STORM

# Setup environment (automated)
./setup.sh

# Activate environment
conda activate STORM
```

## 🎮 Run Your First Training (2 minutes)

### Option 1: Quick Demo
```bash
# Short training run for testing (10k steps)
./examples/quick_start.sh
```

### Option 2: Full Training
```bash
# Train STORM on Atari Boxing (102k steps ~ 2-3 hours on GPU)
./train.sh Boxing 0 STORM

# Or train GIT-STORM
./train.sh Boxing 0 GITSTORM
```

## 📊 Monitor Progress (30 seconds)

```bash
# In a new terminal
conda activate STORM
tensorboard --logdir runs/
```

Then open http://localhost:6006 in your browser.

## ✅ Evaluate Model (1 minute)

```bash
# After training completes, evaluate the model
./evals.sh Boxing Boxing-STORM-seed_0 STORM
```

Results will be saved to `outputs/eval_result/`.

## 📚 Learn More

- **Full Documentation**: [README.md](README.md)
- **Paper**: [arXiv:2410.07836](https://arxiv.org/abs/2410.07836)
- **Contributing**: [CONTRIBUTING.md](CONTRIBUTING.md)
- **Issues**: Open an issue on GitHub



