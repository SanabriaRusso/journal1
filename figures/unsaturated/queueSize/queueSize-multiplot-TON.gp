#!/usr/local/bin/gnuplot

set termopt enhanced
set term postscript enhanced color solid
set out "queueSize-multiplot-TON.eps"
set size 0.75,0.75
set multiplot

#Big plot

set yrange[0:1200]
set ytics 0,200,1000
set xtics 10,10,70
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average number of packets in MAC queue of a node"

#Arrows and highlight square
set arrow from 12,100 to 12,250 lw 1 front filled
set arrow from 2,-100 to 2,100 lw 1 front nohead
set arrow from 2,100 to 22,100 lw 1 front nohead
set arrow from 22,100 to 22,-100 lw 1 front nohead
set arrow from 22,-100 to 2,-100 lw 1 front nohead

plot "../../new_raws/DCF-unsat.txt" u 1:33:(1.96*$34/3.16) title "CSMA/CA non-saturated" w yerrorbars ls 7 lw 2, "" u 1:33 notitle w l ls 7 lw 2, "../../new_raws/ECA-unsat.txt" u 1:33:(1.96*$34/3.16) title "CSMA/ECA_{Hys+FS} non-saturated" w yerrorbars ls 6 lw 2, "" u 1:33 notitle w l ls 6 lw 2


#Small plot
set size 0.23,0.23
set origin 0.09,0.224
set title ""
set xrange[2:23]
set yrange[0:5]
set ytics 0,1,5
set xlabel ""
set ylabel ""
unset arrow
set grid

plot "../../new_raws/DCF-unsat.txt" u 1:33:(1.96*$34/3.16) notitle w yerrorbars ls 7 lw 2, "" u 1:33 notitle w l ls 7 lw 2, "../../new_raws/ECA-unsat.txt" u 1:33:(1.96*$34/3.16) notitle w yerrorbars ls 6 lw 2, "" u 1:33 notitle w l ls 6 lw 2

unset multiplot
