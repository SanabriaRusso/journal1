#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color dashed
set out "timeBetweenSxTx-multiplot-unsat-TON.eps"
set size 0.75,0.75

set yrange[0:0.8]
set ytics 0,0.1,1
set xrange[1:64]
set xtics 10,10,60
set xlabel "Contenders (N)"
set ylabel "Average Time between successful transmissions (secs)"

plot "../../new_raws/DCF-unsat-maxAg-TON.txt" u 1:10:11 title "CSMA/CA_{MaxAg} non-saturated" w yerrorbars ls 2 lw 2, "" u 1:10 notitle w l ls 2 lw 2, "../../new_raws/ECA-unsat-maxAg-TON.txt" u 1:10:11 title "CSMA/ECA_{Hys+MaxAg} non-saturated" w yerrorbars ls 8 lw 2, "" u 1:10 notitle w l ls 8 lw 2, "../../new_raws/ECA-unsat-TON.txt" u 1:10:11 title "CSMA/ECA_{Hys+FS} non-saturated" w yerrorbars ls 6 lw 2, "" u 1:10 notitle w l ls 6 lw 2, "../../new_raws/DCF-unsat-TON.txt" u 1:10:11 title "CSMA/CA non-saturated" w yerrorbars ls 7 lw 2, "" u 1:10 notitle w l ls 7 lw 2

