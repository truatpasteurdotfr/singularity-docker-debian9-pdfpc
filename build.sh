#!/bin/sh
O=debian9-pdfpc
D=`date +%Y_%m_%d`
N=${O}-${D}
S=${N}.sif
sudo singularity build --tmpdir=`mktemp -d /dev/shm/singularitybuild.XXX` ${S} Singularity 2>&1| tee ${N}.log && \
singularity exec ${S}  dpkg --get-selections   | cut -f 1 | sort >  ${N}-dpkg--get-selections.sorted
singularity exec ${S}  dpkg -l | awk '/^ii/ {print $2,$3}' > ${N}-dpkg-l

