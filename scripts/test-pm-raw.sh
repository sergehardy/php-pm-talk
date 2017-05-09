ab -n $1 -c $2 -g pm-raw.tsv -e pm.csv http://localhost:8002/
gnuplot pm-raw-benchmark.p
eog pm-raw.png &