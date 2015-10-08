#!/usr/local/bin/gnuplot
set xrange[1:50]
set xtics 2,4,50
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set yrange[10:85]
set size 0.75,0.75
set term postscript enhanced color dashed
set out "throughput-saturated-maxAgg-TON.eps"
plot "../new_raws/ECA-sat-maxAg.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+MaxAg} saturated" w yerrorbars ls 8 lw 2, "" u 1:($2/1e6) notitle w l ls 8 lw 2, "../new_raws/DCF-sat-maxAg.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA_{MaxAg} saturated" w yerrorbars ls 2 lw 2, "" u 1:($2/1e6) notitle w l ls 2 lw 2, "../new_raws/ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS} saturated" w yerrorbars ls 9 lw 2, "" u 1:($2/1e6) notitle w l ls 9 lw 2,"../tonFigs/DCF-sat-FS-singleAC.dat" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA_{FS}" w yerrorbars ls 3 lw 2, "" u 1:($2/1e6) notitle w l ls 3 lw 2, "../new_raws/DCF-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA saturated" w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2
