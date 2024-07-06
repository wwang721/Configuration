#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --time=1:00:0
##SBATCH --mail-type=begin
#SBATCH --mail-user=wwang138@jh.edu
##SBATCH --nodes=1
##SBATCH --ntasks-per-node=48
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH -o jupyter-%J.log
#SBATCH -p shared

#ml anaconda
## or use your own python/conda enviromnent

XDG_RUNTIME_DIR=””
port=$(shuf -i8000-9999 -n1)
echo $port
node=$(hostname -s)
user=$(whoami)
echo ssh -N -L ${port}:${node}:${port} ${user}@login.rockfish.jhu.edu

jupyter-notebook --no-browser --port=${port} --ip=${node}
