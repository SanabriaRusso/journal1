#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set xtics 2,4,50
set yrange[0:80]
set xrange[1:50]
set size 0.75,0.75
set term postscript enhanced color dashed
set out "throughput-combined-TON.eps"
plot "../new_raws/ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS}" w yerrorbars ls 9 lw 2, "" u 1:($2/1e6) notitle w l ls 9 lw 2,"../new_raws/ECA-hystOnly-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys}" w yerrorbars ls 4 lw 2, "" u 1:($2/1e6) notitle w l ls 4 lw 2, "../new_raws/Basic-ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA" w yerrorbars ls 6 lw 2, "" u 1:($2/1e6) notitle w l ls 6 lw 2, "../new_raws/DCF-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA" w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2,
