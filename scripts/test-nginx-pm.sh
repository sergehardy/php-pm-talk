ab -n $1 -c $2 -g nginx-pm.tsv -e nginx-pm.csv http://localhost/pm/
#ab -t $1 -c $2 -g nginx-pm.tsv -e nginx-pm.csv http://localhost/pm/
gnuplot nginx-pm-benchmark.p

