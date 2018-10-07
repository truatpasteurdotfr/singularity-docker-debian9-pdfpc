# singularity-docker-debian9-pdfpc
singularity container based on debian9 docker providing pdfpc

Run pdfpc from the container without really installing it.

Running without installation:
```
singularity run shub://truatpasteurdotfr/singularity-docker-debian9-pdfpc
```
Building:
```
sudo singularity build singularity-docker-debian9-pdfpc.simg Singularity
```
or use the provided `build.sh` script.

Download and rename:
```
singularity pull --name "pdfpc.simg" shub://truatpasteurdotfr/singularity-docker-debian9-pdfpc
```
