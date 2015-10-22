#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set y2label "Average backoff stage (BOS)"
set xrange[1:50]
set xtics 10,10,50
set yrange[-20:105]
set ytics 0,20,60
set y2range[-1.6:33]
set y2tics 0,5,5
set arrow from 1,second 6 to 50,second 6 lt 0 lw 3 lc rgb "black" nohead
set label 1 at 15,second 7.5 'Backoff stages below' center
#set size 0.85,0.85
#set termopt enhanced
#set term postscript enhanced color dashed
#set out "throughput-saturated-w-BOS-TON.eps"
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-sat.txt"  u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1, ""  u 1:($2/1e6) notitle w l ls 6 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat.txt"  u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA " w yerrorbars ls 7 lw 1, ""  u 1:($2/1e6) notitle w l ls 7 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-sat.txt"  u 1:9 title "BOS for CSMA/ECA_{Hys+FS}" w p ls 22 lw 1 axis x1y2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat.txt"  u 1:9 title "BOS for CSMA/CA" w p ls 15 lw 1 axis x1y2
