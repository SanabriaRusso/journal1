#!/usr/local/bin/gnuplot
set key spacing 2.5
set xrange[1:50]
set xtics 2,4,50
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set key top center maxrows 5
set y2label "Jain's Fairness Index (JFI)"
set y2range[0:10]
set y2tics 0,1,1
set yrange[-10:100]
set ytics 10,10,70
set label 1 at 14, second 2.2 'JFIs below' center
set arrow from 1,10 to 50, 10 lt 0 lw 3 lc rgb 'black' nohead

set size 0.75,0.75
set term postscript enhanced color dashed
set out "throughput-saturated-maxAgg-TON.eps"
plot "../new_raws/ECA-sat-maxAg.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+MaxAg} " w yerrorbars ls 8 lw 2, "" u 1:($2/1e6) notitle w l ls 8 lw 2, "../new_raws/DCF-sat-maxAg.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA_{MaxAg} " w yerrorbars ls 2 lw 2, "" u 1:($2/1e6) notitle w l ls 2 lw 2, "../new_raws/ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 9 lw 2, "" u 1:($2/1e6) notitle w l ls 9 lw 2,"../tonFigs/DCF-sat-FS-singleAC.dat" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA_{FS}" w yerrorbars ls 3 lw 2, "" u 1:($2/1e6) notitle w l ls 3 lw 2, "../new_raws/DCF-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA " w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2, "../raw/ECA-sat-maxAg.txt" u 1:4:(1.96*$5/3.16) title "JFI CSMA/ECA_{Hys+MaxAg} " w p ls 8 lw 2 axes x1y2, "../new_raws/DCF-sat-maxAg.txt" u 1:4:(1.96*$5/3.16) title "JFI CSMA/CA_{MaxAg} " w p ls 2 lw 2 axes x1y2, "../new_raws/ECA-sat.txt" u 1:4:(1.96*$5/3.16) title "JFI CSMA/ECA_{Hys+FS}" w p ls 9 lw 2 axes x1y2, "../tonFigs/DCF-sat-FS-singleAC.dat" u 1:32:33 title "JFI CSMA/CA_{FS}" w p ls 3 lw 2 axes x1y2, "../new_raws/DCF-sat.txt" u 1:4:(1.96*$5/3.16) title "JFI CSMA/CA" w p ls 7 lw 2 axes x1y2
