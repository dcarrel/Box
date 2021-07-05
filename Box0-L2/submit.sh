#!/bin/bash
#SBATCH -J Box0-L2
#SBATCH -o Box0-L2.out
#SBATCH -e Box0-L2.err
#SBATCH -N 2
#SBATCH -n 24
#SBATCH -p development
#SBATCH -t 02:00:00
#SBATCH --mail-user=carrel@ucsb.edu
#SBATCH --mail-type=all
module load intel
module load hdf5
module load mvapich2

cd $SLURM_SUBMIT_DIR
ibrun /work2/08137/tg874363/stampede2/Box0/enzo.exe -d Box0-L2.enzo
