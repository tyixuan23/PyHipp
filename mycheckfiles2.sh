

#!/bin/bash

echo ""
echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo ""
echo "#==========================================================="
echo "Start Times"
echo "==> rplpl-slurm.queue1-dy-r5-2xlarge-1.4.out <=="
sed -n '1p' rplpl-slurm.queue1-dy-r5-2xlarge-1.4.out

echo ""
echo "==> rplspl-slurm.queue1-dy-r5-2xlarge-1.5.out <=="
sed -n '1p' rplspl-slurm.queue1-dy-r5-2xlarge-1.5.out
echo "End Times"
echo "==>rplpl-slurm.queue1-dy-r5-2xlarge-1.4.out <=="
tail -n 5 rplpl-slurm.queue1-dy-r5-2xlarge-1.4.out
echo "==>rplspl-slurm.queue1-dy-r5-2xlarge-1.5.out <=="
tail -n 5 rplspl-slurm.queue1-dy-r5-2xlarge-1.5.out
echo "#==========================================================="
