set termopt enhanced
set term postscript enhanced color solid
set out "queueingDelay-multiplot.eps"
set size 0.75,0.75

#Big plot

set yrange[0:40]
set xrange[2:70]
unset grid
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average Delay (secs)"

plot "../../new_raws/DCF-unsat.txt" u 1:37:(1.96*$38/3.16) title "CSMA/CA non-saturated" w yerrorbars ls 1 lw 2, "" u 1:37 notitle w l ls 1 lw 2, "../../new_raws/ECA-unsat.txt" u 1:37:(1.96*$38/3.16) title "CSMA/ECA_{Hys+FS} non-saturated" w yerrorbars ls 3 lw 2, "" u 1:37 notitle w l ls 3 lw 2, "../../new_raws/DCF-unsat-maxAg.txt" u 1:37:(1.96*$38/3.16) title "CSMA/CA_{MaxAg} non-saturated" w yerrorbars ls 4 lw 2, "" u 1:37 notitle w l ls 4 lw 2, "../../new_raws/ECA-unsat-maxAg.txt" u 1:37:(1.96*$38/3.16) title "CSMA/ECA_{Hys+FS} (MaxAg.) non-saturated" w yerrorbars ls 7 lw 2, "" u 1:37 notitle w l ls 7 lw 2