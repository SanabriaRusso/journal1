#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set xrange [1:50]
set xtics 2,4,50
set yrange[10:95]
set size 0.75,0.75
set term postscript enhanced color dashed
set out "throughput-combined-w-model-TON.eps"
plot "../code/throughputModel-TON.txt" u 1:($6/1e6) title "Maximum Aggregation (Hys+MaxAg)" w l ls 3 lw 2,"../code/throughputModel-TON.txt" u 1:($4/1e6) title "Upperbound (Hys+FS)" w l ls 10 lw 2,"../new_raws/ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS}" w yerrorbars ls 9 lw 2, "" u 1:($2/1e6) notitle w l ls 9 lw 2,"../code/throughputModel-TON.txt" u 1:($2/1e6) title "Lower-bound (Hys+FS)" w l ls 4 lw 2, "../new_raws/Basic-ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA" w yerrorbars ls 6 lw 2, "" u 1:($2/1e6) notitle w l ls 6 lw 2
