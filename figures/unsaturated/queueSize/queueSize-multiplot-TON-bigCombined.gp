#!/usr/local/bin/gnuplot

#set termopt enhanced
#set term postscript enhanced color solid
#set out "queueSize-multiplot-TON.eps"
#set size 0.75,0.75

set yrange[0:1300]
set ytics 0,200,1000
set xtics 10,10,70
set size 0.75,0.75
set origin 0,0
#set xlabel "Contenders (N)"
set ylabel "Avg. num. of packets in MAC queue"


plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat.txt" u 1:33:(1.96*$34/3.16) title "CSMA/CA " w yerrorbars ls 7 lw 1, "" u 1:33 notitle w l ls 7 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat.txt" u 1:33:(1.96*$34/3.16) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1, "" u 1:33 notitle w l ls 6 lw 1

