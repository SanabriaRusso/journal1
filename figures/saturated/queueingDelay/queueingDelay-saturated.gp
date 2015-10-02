set termopt enhanced
set term postscript enhanced color solid
set out "queueingDelay-multiplot.eps"
set size 0.75,0.75
set multiplot

#Big plot

set yrange[*:*]
set xrange[2:70]
unset grid
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average Delay (secs)"

#Arrows and highlight square
set arrow from 6,50.5 to 22,51.6 lw 1 front filled
set arrow from 2,49.5 to 2,50.5 lw 1 front nohead
set arrow from 2,50.5 to 10,50.5 lw 1 front nohead
set arrow from 10,50.5 to 10,49.5 lw 1 front nohead
set arrow from 10,49.5 to 2,49.5 lw 1 front nohead

plot "../../new_raws/DCF-sat.txt" u 1:37:(1.96*$38/3.16) title "CSMA/CA saturated" w yerrorbars ls 1 lw 2, "" u 1:37 notitle w l ls 1 lw 2, "../../new_raws/ECA-sat.txt" u 1:37:(1.96*$38/3.16) title "CSMA/ECA_{Hys+FS} saturated" w yerrorbars ls 3 lw 2, "" u 1:37 notitle w l ls 3 lw 2


#Small plot
set size 0.35,0.25
set origin 0.1,0.4
set title ""
set xrange[2:10]
set yrange[0:5]
set xlabel ""
set ylabel ""
unset arrow
set grid

plot "../../new_raws/DCF-sat.txt" u 1:37:(1.96*$38/3.16) notitle w yerrorbars ls 1 lw 2, "" u 1:37 notitle w l ls 1 lw 2, "../../new_raws/ECA-sat.txt" u 1:37:(1.96*$38/3.16) notitle w yerrorbars ls 3 lw 2, "" u 1:37 notitle w l ls 3 lw 2

unset multiplot