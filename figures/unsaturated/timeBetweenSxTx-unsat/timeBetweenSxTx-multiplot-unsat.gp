set termopt enhanced
#set out "timeBetweenSxTx-multiplot-unsat2.eps"
#set size 0.75,0.75
#set term postscript enhanced color dashed

set yrange[0:0.8]
set ytics 0,0.1,1
set xrange[2:70]
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average Time between successful transmissions (secs)"

plot "../../new_raws/DCF-unsat.txt" u 1:7:(1.96*$8/3.16) title "CSMA/CA non-saturated" w yerrorbars ls 1 lw 2, "" u 1:7 notitle w l ls 1 lw 2, "../../new_raws/ECA-unsat.txt" u 1:7:(1.96*$8/3.16) title "CSMA/ECA_{Hys+FS} non-saturated" w yerrorbars ls 3 lw 2, "" u 1:7 notitle w l ls 3 lw 2, "../../new_raws/DCF-unsat-maxAg.txt" u 1:7:(1.96*$8/3.16) title "CSMA/CA_{MaxAg} non-saturated" w yerrorbars ls 4 lw 2, "" u 1:7 notitle w l ls 4 lw 2, "../../new_raws/ECA-unsat-maxAg.txt" u 1:7:(1.96*$8/3.16) title "CSMA/ECA_{Hys+MaxAg} non-saturated" w yerrorbars ls 7 lw 2, "" u 1:7 notitle w l ls 7 lw 2

