CONCURRENT_REQUESTS=$2
TOTAL_REQUESTS=$1
rm -f *.png *.tsv
#./test-raw.sh $TOTAL_REQUESTS $CONCURRENT_REQUESTS

killall eog
./test-pm.sh $TOTAL_REQUESTS $CONCURRENT_REQUESTS
eog pm.png 2> /dev/null &

./test-nginx-pm.sh $TOTAL_REQUESTS $CONCURRENT_REQUESTS
eog nginx-pm.png 2> /dev/null &


./test-nginx-fpm.sh $TOTAL_REQUESTS $CONCURRENT_REQUESTS
eog nginx-fpm.png 2> /dev/null &
