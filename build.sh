#!/bin/sh
O=debian9-diffpdf
D=`date +%Y_%m_%d`
N=${O}-${D}
S=${N}.simg
sudo singularity build ${S} Singularity && \
singularity exec ${S}  dpkg --get-selections   | cut -f 1 | sort >  ${N}-dpkg--get-selections.sorted
singularity exec ${S}  dpkg -l | awk '/^ii/ {print $2,$3}' > ${N}-dpkg-l

