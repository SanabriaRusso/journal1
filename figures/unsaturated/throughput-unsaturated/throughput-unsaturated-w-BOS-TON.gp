#!/usr/local/bin/gnuplot
#set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set xrange[2:70]
set xtics 10,10,70;
set yrange[-30:100]
set ytics 0,20,60
set y2range[-1.6:33]
set y2tics 0,5,5
set y2label "Average backoff stage"
set arrow from 2,second 6 to 70,second 6 lt 0 lw 3 lc rgb 'black' nohead
set label 1 at 35,second 7.5 'Backoff stages below' center
#set size 0.75,0.75
#set term postscript enhanced color solid
#set out "throughput-unsaturated-w-BOS-TON.eps"
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1, "" u 1:($2/1e6) notitle w l ls 6 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA " w yerrorbars ls 7 lw 1, "" u 1:($2/1e6) notitle w l ls 7 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat.txt" u 1:9 title "BOS for CSMA/ECA_{Hys+FS}: " w p ls 14 lw 1 axis x1y2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat.txt" u 1:9 title "BOS for CSMA/CA" w p ls 15 lw 1 axis x1y2
