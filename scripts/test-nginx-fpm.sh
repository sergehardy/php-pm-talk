#!/bin/bash

ab -n $1 -c $2 -g nginx-fpm.tsv  http://localhost/symfony/web/app.php
#ab -t $1 -c $2 -g nginx-fpm.tsv  http://localhost/symfony/web/app.php
gnuplot nginx-fpm-benchmark.p

