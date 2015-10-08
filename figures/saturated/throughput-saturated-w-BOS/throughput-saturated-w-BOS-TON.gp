#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set y2label "Average backoff stage"
set xrange[1:50]
set xtics 2,4,50
set yrange[-20:85]
set ytics 0,20,80
set y2range[-1.6:33]
set y2tics 0,1,5
set arrow from 1,second 6 to 50,second 6 lt 0 lw 3 lc rgb "black" nohead
set label 1 at 14,second 7 'Backoff stages below' center
set size 0.75,0.75
set termopt enhanced
set term postscript enhanced color dashed
set out "throughput-saturated-w-BOS-TON.eps"
plot "../../new_raws/ECA-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS} saturated" w yerrorbars ls 6 lw 2, "" u 1:($2/1e6) notitle w l ls 6 lw 2, "../../new_raws/DCF-sat.txt" u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "CSMA/CA saturated" w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2, "../../new_raws/ECA-sat.txt" u 1:9 title "CSMA/ECA_{Hys+FS}: average backoff stage" w p ls 22 lw 2 axis x1y2, "../../new_raws/DCF-sat.txt" u 1:9 title "CSMA/CA: average backoff stage" w p ls 15 lw 2 axis x1y2