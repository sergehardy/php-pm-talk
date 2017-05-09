#!/bin/bash

ab -n $1 -c $2 -g sf.tsv  http://localhost/symfony/web/app.php
gnuplot sf-benchmark.p
eog sf.png &