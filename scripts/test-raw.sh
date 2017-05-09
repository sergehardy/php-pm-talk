ab -n $1 -c $2 -g raw.tsv  http://localhost/raw/pm.php
gnuplot raw-benchmark.p
eog raw.png &