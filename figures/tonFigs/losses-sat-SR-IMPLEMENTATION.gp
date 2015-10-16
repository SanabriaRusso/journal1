#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Average percentage of lost frames (%)"
set xrange[1:25]
set xtics 2,2,25;
set yrange[0:0.8]
set size 0.75,0.75
set term postscript enhanced color solid
set out "losses-sat-SR-IMPLEMENTATION.eps"
plot "implementationData.txt" u 1:4:5 title "CSMA/ECA_{Hys} w SR halv. aggr. dynStick " w yerrorbars ls 6 lw 2, "" u 1:4 notitle w l ls 6 lw 2, "dcfImplementationData.txt" u 1:4:5 title "CSMA/CA" w yerrorbars ls 7 lw 2, "" u 1:4 notitle w l ls 7 lw 2
