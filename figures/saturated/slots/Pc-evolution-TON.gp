#!/usr/local/bin/gnuplot
set xlabel "Time slots"
set ylabel "Fraction of collision slots"
set logscale y2
unset ytics
set y2range[0.001:10]
set y2tics 1e-3,1e-1,1
set y2tics mirror
set xrange[0:8e4]
set format x "%1.0e"
set xtics 0,4e4,8e4
#set size 0.85,0.85
#set term postscript enhanced color dashed
#set out "Pc-evolution-TON.eps"
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/saturated/slots/DCF-70stas.txt"  u 2:5 title "CSMA/CA" w p ls 7 lw 1 axes x1y2, "~/Dropbox/PhD/NeTS/git/journal1/figures/saturated/slots/ECA-70stas.txt"  u 2:5 title "CSMA/ECA_{Hys+FS}" w p ls 6 lw 1 axes x1y2
