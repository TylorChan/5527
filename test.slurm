#!/bin/bash -l
#SBATCH --time=8:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=20g
#SBATCH --tmp=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=chen7751@umn.edu
#SBATCH -p interactive-gpu
#SBATCH --gres=gpu:1


export PATH =/users/9/chen7751/miniconda3/envs/5527:$PATH

python infer.py --recall 1
python infer.py --recall 5
python infer.py --recall 10
python infer.py --recall 50
python infer.py --recall 100
python infer.py --recall 200
python infer.py --recall 400