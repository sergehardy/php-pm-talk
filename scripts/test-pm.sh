ab -n $1 -c $2 -g pm.tsv -e pm.csv http://localhost/pm/
gnuplot pm-benchmark.p
eog pm.png &