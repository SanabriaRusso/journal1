#!/usr/local/bin/gnuplot
set key spacing 2.4
set xlabel "Contenders (N)"
set xtics 10,10,70
set ylabel "Average percentage of blocked packets (%)"
set yrange[0:90]
set ytics 0,10,90
set size 0.75,0.75
set term postscript enhanced color dashed
set out "blocking-unsaturated-TON.eps"
plot "../../new_raws/DCF-unsat.txt" u 1:($19*100):(1.96*($20*100)/3.16) title "CSMA/CA non-saturated" w yerrorbars ls 7 lw 2, "" u 1:($19*100) notitle w l ls 7 lw 2, "../../new_raws/DCF-unsat-maxAg.txt" u 1:($19*100):(1.96*($20*100)/3.16) title "CSMA/CA_{MaxAg} non-saturated" w yerrorbars ls 2 lw 2, "" u 1:($19*100) notitle w l ls 2 lw 2, "../../new_raws/ECA-unsat-maxAg.txt" u 1:($19*100):(1.96*($20*100)/3.16) title "CSMA/ECA_{Hys+MaxAg} non-saturated" w yerrorbars ls 8 lw 2, "" u 1:($19*100) notitle w l ls 8 lw 2, "../../new_raws/ECA-unsat.txt" u 1:($19*100):(1.96*($20*100)/3.16) title "CSMA/ECA_{Hys+FS} non-saturated" w yerrorbars ls 6 lw 2, "" u 1:($19*100) notitle w l ls 6 lw 2
