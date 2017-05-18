ab -n $1 -c $2 -g pm.tsv -e pm.csv http://localhost:8002/
#ab -t $1 -c $2 -g pm.tsv -e pm.csv http://localhost:8002/
gnuplot pm-benchmark.p

