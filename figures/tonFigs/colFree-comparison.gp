#!/usr/local/bin/gnuplot
set y2label "Jain's Fairness Index (JFI)"
set y2tics 0,1,1
set y2range[0:20]
set xrange[1:50]
set xtics 2,4,50
set yrange[12:*]
set ylabel "Aggregated Throughput (Mbps)"
set arrow from 1,second 2 to 50,second 2 lt 0 lw 3 lc rgb 'black' nohead 
set label 1 at 14, second 2.5 'JFIs below' center
set term postscript enhanced color dashed
set out "DCF-v-ECA-TON.eps"

plot "../new_raws/Basic-ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA" w yerrorbars ls 6 lw 2, "" u 1:($2/1e6) notitle w l ls 6 lw 2, "L-ZC.dat" u 1:($2/1e6):($3/1e6) title "L-ZC" w yerrorbars ls 1 lw 2, "" u 1:($2/1e6) notitle w l ls 1 lw 2, "L-MAC.dat" u 1:($2/1e6):($3/1e6) title "L-MAC" w yerrorbars ls 4 lw 2, "" u 1:($2/1e6) notitle w l ls 4 lw 2, "../new_raws/DCF-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA" w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2, "../new_raws/Basic-ECA-sat.txt" u 1:4:(1.96*$5/3.16) title "JFI for CSMA/ECA" w yerrorbars ls 14 lw 2 axes x1y2, "" u 1:4 notitle w l ls 14 lw 2 axes x1y2, "L-ZC.dat" u 1:10:11 title "JFI for L-ZC" w yerrorbars ls 9 lw 2 axes x1y2, "" u 1:10 notitle w l ls 9 lw 2 axes x1y2, "L-MAC.dat" u 1:10:11 title "JFI for L-MAC" w yerrorbars ls 12 lw 2 axes x1y2, "" u 1:10 notitle w l ls 12 lw 2 axes x1y2, "../new_raws/DCF-sat.txt" u 1:4:(1.96*$5/3.16) title "JFI for CSMA/CA" w yerrorbars ls 15 lw 2 axes x1y2, "" u 1:4 notitle w l ls 15 lw 2 axes x1y2




