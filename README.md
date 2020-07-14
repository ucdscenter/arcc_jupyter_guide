# Arcc Jupyter Notebook Guide

This guide is a quick how to for getting access to the arcc cluster, useful slurm commands, getting set up with jupyter, and importing fastai (and maybe fastai2).

## Getting account info and getting started

Assuming you have UC credentials, to get access to the supercompute cluster fill out the form at the bottom of [this page](https://research.uc.edu/arc)

You'll need to be on UC's network to access the cluster, so if you are off campus you will need to [download](https://www.uc.edu/about/ucit/services/connectivity-fac-staff/vpn.html) anyconnect.

Once you have your account info and are on the network you can access the cluster with 

```bash
ssh username@arcc.uc.edu
```

You'll also want to download the bash scripts in this repo make a few edits. Change the user strings in the scripts from "edgertej" to your own username. Once that is done copy them to your arcc folder.

```bash
scp jupyter.sh username@arcc.uc.edu:/home/username
scp jupyter_gpu.sh username@arcc.uc.edu:/home/username

```
Running these scripts will start up jupyter servers that you can access from your machine.

## Slurm Commands

Before running you'll need to use the squeue command to see the which resources are available and to see if your tasks are scheduled. Currently there are only to GPU's, so check the partition column if any other people are using the gpu before running the jupyter_gpu script, otherwise it won't be scheduled immediately.

```bash
squeue
```

To run the jupyter server run this command, then run squeue to see if your task has been scheduled. Note the task ID created.

```bash
sbatch jupyter.sh
```
To cancel the task run
```bash
scancel {{task id}}
```

## Opening Notebook

Once you've confirmed that your server is running on the node, find the file created that is named 'jupyter-notebook-{{task id}}.log' and open that file with:

```bash
vi jupyter-notebook-{{task id}}.log
```
Note where it says 
```text
Command to create ssh tunnel:
ssh -N -f -L 8889:compute-33:8889 username@arcc.uc.edu
```

copy that line and run it in a new terminal window on your machine.

Now find the lines in that file

```text
To access the notebook, open this file in a browser:
        file:///home/edgertej/.local/share/jupyter/runtime/nbserver-118232-open.html
    Or copy and paste one of these URLs:
        http://compute-33:8889/?token=1be273fad869716adb0dc84c7a34d2c0b9bac05ea880a89e
     or http://127.0.0.1:8889/?token=1be273fad869716adb0dc84c7a34d2c0b9bac05ea880a89e
```

and copy one of the links into your browser.

Now you can use the cluster's processing in jupyter! 


## Soon: installing and using fastai





