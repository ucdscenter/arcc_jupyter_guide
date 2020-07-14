#!/bin/bash
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time 20:00:00
#SBATCH --job-name jupyter-notebook
#SBATCH --output jupyter-notebook-%J.log

# get tunneling info
XDG_RUNTIME_DIR=""
node=$(hostname -s)
user="edgertej"
cluster="arcc"
port=8889

# print tunneling instructions jupyter-log
echo -e "
Command to create ssh tunnel:
ssh -N -f -L ${port}:${node}:${port} ${user}@${cluster}.uc.edu

Use a Browser on your local machine to go to:
localhost:${port}  (prefix w/ https:// if using password)
"

# load modules or conda environments here
module load anaconda

# Run Jupyter
jupyter-lab --no-browser --port=${port} --ip=${node}
