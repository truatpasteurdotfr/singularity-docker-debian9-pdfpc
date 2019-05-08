# singularity-docker-debian9-pdfpc
singularity container based on debian9 docker providing pdfpc

Run pdfpc from the container without really installing it.

Running without installation:
```
singularity run library://tru/default/singularity-docker-debian9-pdfpc
```
Building:
```
sudo singularity build singularity-docker-debian9-pdfpc.sif Singularity
```
or use the provided `build.sh` script.

Download and rename:
```
singularity pull --name "pdfpc.sif" library://tru/default/singularity-docker-debian9-pdfpc
```
