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
set lmargin at screen 0.03
set rmargin at screen 0.97
set bmargin at screen 0.07
unset xtics
set grid
set autoscale x
set yrange [0:6<*]
set y2range [0:25<*]
set mouse format "%.0f"
set mouse mouseformat 3
#set mouse mouseformat "%F-%T, %.0f, %.0f"
#set mouse nozoomcoordinates
set style fill transparent solid 0.5 noborder
#set style line 1 lt rgb "#000000FF" lw 1 pt 6
#set style line 2 lt rgb "#8000FF00" lw 1 pt 4
set style line 1 lt rgb "#800000FF" lw 1 pt 6
set style line 2 lt rgb "#8000FF00" lw 1 pt 4
set multiplot
	#set key left top
	#plot ARG2 using 1:9 with linespoints ls 1 title "RQ"

	unset ytics
	set y2tics
	set key right top
	plot ARG2 using 1:10 with linespoints ls 2 axes x1y2 title "SATs"

	#set xtics rotate by -15
	#unset ytics
	#set y2tics
	#set key right top
	#plot ARG2 using 1:10 with linespoints ls 2 axes x1y2 title "SATs"

	set xtics rotate by -15
	set ytics nomirror
	set key left top
	plot ARG2 using 1:9 with linespoints ls 1 title "RQ"
unset multiplot
pause -1
