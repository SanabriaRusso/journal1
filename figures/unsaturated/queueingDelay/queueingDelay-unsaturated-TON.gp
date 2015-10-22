#!/usr/local/bin/gnuplot
set termopt enhanced
#set term postscript enhanced color solid
#set out "queueingDelay-TON.eps"
#set size 0.75,0.75
set yrange[0:40]
set xrange[2:70]
set xtics 10,10,70
unset grid
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average Delay (secs)"

plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat.txt" every 2 u  1:37:(1.96*$38/3.16) title "CSMA/CA " w yerrorbars ls 7 lw 1, "" every 2 u  1:37 notitle w l ls 7 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat-maxAg.txt" every 2 u  1:37:(1.96*$38/3.16) title "CSMA/CA_{MaxAg} " w yerrorbars ls 2 lw 1, "" every 2 u  1:37 notitle w l ls 2 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat-maxAg.txt" every 2 u  1:37:(1.96*$38/3.16) title "CSMA/ECA_{Hys+FS} (MaxAg.) " w yerrorbars ls 8 lw 1, "" every 2 u  1:37 notitle w l ls 8 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat.txt" every 2 u  1:37:(1.96*$38/3.16) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1, "" every 2 u  1:37 notitle w l ls 6 lw 1
