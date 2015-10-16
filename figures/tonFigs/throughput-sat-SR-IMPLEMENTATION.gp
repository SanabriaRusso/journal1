#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set xrange[1:25]
set xtics 2,2,25;
set size 0.75,0.75
set term postscript enhanced color solid
set out "throughput-sat-SR-IMPLEMENTATION.eps"
plot "implementationData.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys} w SR halv. aggr. dynStick " w yerrorbars ls 6 lw 2, "" u 1:($2/1e6) notitle w l ls 6 lw 2, "dcfImplementationData.txt" u 1:($2/1e6):($3/1e6) title "CSMA/CA" w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2
