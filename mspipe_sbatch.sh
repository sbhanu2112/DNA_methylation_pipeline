#!/bin/bash
#SBATCH --job-name=mspipe_sharma.bhan     # Name of the job
#SBATCH --partition=courses                # Who to bill for the job
#SBATCH -N 4                              # How many nodes do you need
#SBATCH -c 8                              # How many "threads"
#SBATCH --mem 128G                         # How much memory
#SBATCH -t 24:00:00                        # How long
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=sharma.bhan@northeastern.edu
#SBATCH --out=/scratch/sharma.bhan/project6310_v1/sbatch_logs/%x_%j.log
#SBATCH --error=/scratch/sharma.bhan/project6310_v1/sbatch_logs/%x_%j.err

# Setup environment
module load singularity

# Program
singularity run --bind /scratch/sharma.bhan/project6310_v1/data:/msPIPE/data:rw,/scratch/sharma.bhan/project6310_v1/reference:/msPIPE/reference,/scratch/sharma.bhan/project6310_v1/output:/work_dir --writable-tmpfs docker-archive:///scratch/sharma.bhan/project6310_v1/prev_image.tar msPIPE.py -p params_docker.conf -o result --bsmooth
