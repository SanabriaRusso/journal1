#!/usr/local/bin/gnuplot
set y2label "Jain's Fairness Index (JFI)"
set y2tics 0,1,1
set y2range[0:12]
set xrange[1:50]
set xtics 2,4,50
set yrange[-20:120]
set ytics 10,10,60
set ylabel "Aggregated Throughput (Mbps)"
set label 1 at 14, second 2.5 'JFIs below' center
set arrow from 1,second 2 to 50,second 2 lt 0 lw 3 lc rgb 'black' nohead 
set key top right maxrows 6
set size 0.75,0.75
set term postscript enhanced color dashed
set out "DCF-v-ECA-TON.eps"


plot "../new_raws/ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS}" w yerrorbars ls 2 lw 2, "" u 1:($2/1e6) notitle w l ls 2 lw 2, "../new_raws/ECA-hystOnly-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hyst}" w yerrorbars ls 8 lw 2, "" u 1:($2/1e6) notitle w l ls 8 lw 2, "../new_raws/Basic-ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA" w yerrorbars ls 6 lw 2, "" u 1:($2/1e6) notitle w l ls 6 lw 2, "L-ZC.dat" u 1:($2/1e6):($3/1e6) title "L-ZC" w yerrorbars ls 1 lw 2, "" u 1:($2/1e6) notitle w l ls 1 lw 2, "L-MAC.dat" u 1:($2/1e6):($3/1e6) title "L-MAC" w yerrorbars ls 4 lw 2, "" u 1:($2/1e6) notitle w l ls 4 lw 2, "../new_raws/DCF-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA" w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2, "../new_raws/ECA-sat.txt" u 1:4 title "JFI for CSMA/ECA_{Hys+FS}" w p ls 2 lw 2 axes x1y2, "../new_raws/Basic-ECA-sat.txt" u 1:4 title "JFI for CSMA/ECA" w p ls 14 lw 2 axes x1y2, "L-ZC.dat" u 1:10 title "JFI for L-ZC" w p ls 9 lw 2 axes x1y2, "L-MAC.dat" u 1:10 title "JFI for L-MAC" w p ls 12 lw 2 axes x1y2, "../new_raws/DCF-sat.txt" u 1:4 title "JFI for CSMA/CA" w p ls 15 lw 2 axes x1y2, "../new_raws/ECA-hystOnly-sat.txt" u 1:4 title "JFI for CSMA/ECA_{Hys}" w p ls 8 lw 2 axes x1y2
