#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Jain's Fairness Index (JFI)"
set xrange[2:50]
set xtics 2,4,50
set yrange [0:2]
set ytics 0,0.2,1
set y2tics ""
set ytics mirror
set size 0.75,0.75
set term postscript enhanced color dashed
set out "fairness-maxAg-combined-TON.eps"
plot "../new_raws/DCF-sat-maxAg.txt" u 1:4:(1.96*$5/3.16) title "CSMA/CA_{MaxAg} saturated" w yerrorbars ls 2 lw 2, "../new_raws/DCF-sat.txt" u 1:4:(1.96*$5/3.16) title "CSMA/CA saturated" w yerrorbars ls 7 lw 2, "../new_raws/ECA-sat.txt" u 1:4:(1.96*$5/3.16) title "CSMA/ECA_{Hys+FS} saturated" w yerrorbars ls 9 lw 2, "../raw/ECA-sat-maxAg.txt" u 1:4:(1.96*$5/3.16) title "CSMA/ECA_{Hys+MaxAg} saturated" w yerrorbars ls 8 lw 2
