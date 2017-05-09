# output as png image
set terminal png

# save file to "benchmark.png"
set output "pm-raw.png"

# graph title
set title "pm-raw"

#nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

set logscale y 2

#x-axis label
set xlabel "request"
#set xdata time
# Specify the *input* format of the time data
#set timefmt "%s"
# Specify the *output* format for the x-axis tick labels
#set format x "%S"
# Label the x-axis
#set xlabel 'seconds'
# Label the y-axis
set ylabel "response time (ms)"


#plot data from "out.data" using column 9 with smooth sbezier lines
#plot "pm.tsv" every ::2 using 6:9 title 'response time' with points
plot "pm-raw.tsv" every ::2 using 9 smooth sbezier with lines title 'response time' 
exit
