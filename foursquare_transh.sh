#!/bin/bash
#SBATCH -N 1
#SBATCH --partition=batch
#SBATCH -J foursquare_transh
#SBATCH -o foursquare_transh.%J.out
#SBATCH -e foursquare_transh.%J.err
#SBATCH --mail-user=peng.han@kaust.edu.sa
#SBATCH --mail-type=ALL
#SBATCH --time=48:30:00
#SBATCH --mem=120G
#SBATCH --gres=gpu:v100:1
#SBATCH --constraint=[gpu]

#run the application:
module load cudnn/7.5.0-cuda10.1.105
module load nccl/2.4.8-cuda10.1
cd /home/hanp/hanp/research/UESTC/xuan_rao/KGE
pip install -r requirements.txt --target=/home/hanp/anaconda3/envs/rx_torch/lib/python3.7/site-packages
/home/hanp/anaconda3/envs/rx_torch/bin/python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transh -dataset foursquare -batch_size 128 -optimizer_type Adam -version scheme2 -load_ckpt_file gowalla-transe-1639638775.ckpt