#!/usr/local/bin/gnuplot
set yrange[0:2]
set xrange[2:50]
set xtics 2,4,50
set ytics 0,0.2,1
set y2tics ""
set ytics mirror
set xlabel "Contenders (N)"
set ylabel "Jain's Fairness Index (JFI)"
set size 0.75,0.75
set term postscript enhanced color dashed
set out "fairness-combined-TON.eps"
plot "../new_raws/DCF-sat.txt" u 1:4:(1.96*$5/3.16) title "CSMA/CA" w yerrorbars ls 7 lw 2, "../new_raws/Basic-ECA-sat.txt" u 1:4:(1.96*$5/3.16) title "CSMA    /ECA" w yerrorbars ls 6 lw 2, "../new_raws/ECA-hystOnly-sat.txt" u 1:4:(1.96*$5/3.16) title "CSMA/ECA_{Hys}" w yerrorbars ls 4 lw 2, "../new_raws/ECA-sat.txt" u 1:4:(1.96*$5/3.16) title "CSMA/ECA_{Hys+FS}" w yerrorbars ls 9 lw 2
