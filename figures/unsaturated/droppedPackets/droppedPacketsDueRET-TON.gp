#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set xrange[0:70]
set xtics 10,10,70
set ylabel "Fraction of dropped packets (%)"
set yrange[0:9e-4]
set ytics 0,1e-4,9e-4
set format y "%1.0e"
#set size 0.75,0.75
#set term postscript enhanced color dashed
#set out "droppedPacketsDueRET-TON.eps"
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat.txt" u 1:($21)/($21+$23+$25):(1.96*$22/3.16)/($21+$23+$25) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1, "" u 1:($21)/($21+$23+$25) notitle w l ls 6 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat.txt" u 1:($21)/($21+$23+$25):(1.96*$22/3.16)/($21+$23+$25) title "CSMA/CA " w yerrorbars ls 7 lw 1, "" u 1:($21)/($21+$23+$25) notitle w l ls 7 lw 1
