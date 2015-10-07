#!/usr/local/bin/gnuplot
set xlabel "Time slots"
set ylabel "Fraction of collision slots"
set logscale y
set yrange[0.001:1]
set xrange[0:8e4]
set xtics 0,1e4,8e4
set size 0.75,0.75
set term postscript enhanced color dashed
set out "Pc-evolution-TON.eps"
plot "DCF-70stas.txt" u 2:5:(1.96*$6/3.16) title "CSMA/CA" w yerrorbars ls 7 lw 2, "ECA-70stas.txt" u 2:5:(1.96*$6/3.16) title "CSMA/ECA_{Hys+FS}" w yerrorbars ls 6 lw 2
