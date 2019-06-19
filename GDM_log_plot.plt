set terminal windows title ARG1
set terminal windows wsize 1024,768
#set terminal windows wsize 1600,1000
#set terminal windows size 1920,1080
#set terminal wxt title ARG1
#set terminal wxt size 1920,1080 position 0,0
#set terminal wxt persist
set datafile separator ", "
set timefmt "%Y%m%d-%H:%M:%S"
set format x "%Y/%m/%d-%H:%M:%S"
set xdata time
set grid
set autoscale x
set yrange [0:6<*]
set y2range [0:25<*]
set mouse format "%.0f"
set mouse mouseformat 3
#set mouse mouseformat "%F-%T, %.0f, %.0f"
#set mouse nozoomcoordinates
set y2tics nomirror
set style fill transparent solid 0.5 noborder
set style line 1 lt rgb "#000000FF" lw 1 pt 6
set style line 2 lt rgb "#8000FF00" lw 1 pt 4
plot ARG2 using 1:9 with linespoints ls 1 title "RQ", '' using 1:10 with linespoints ls 2 axes x1y2 title "SATs"
#plot 'DATA_raw1.txt' using 1:9 with linespoints ls 5
#plot 'DATA_raw1.txt' using 1:9
pause -1
