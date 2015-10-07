#!/usr/local/bin/gnuplot
set xrange[-1:11]
set xtics 0,1,10
set termopt enhanced
set xlabel "Clock drift probability, p_{cd}(%)"
set ylabel "Aggregated Throughput (Mbps)"
set yrange[-40:120]
set ytics 10,10,60
set ytics nomirror
set y2range[-2:30]
set y2tics 0,1,5
set y2label "Average backoff stage"
set arrow from -1, second 7 to 11, second 7 lt 0 lw 3 lc rgb 'black' nohead
set label 1 at 2, second 8 'Backoff stages below'
set size 0.75,0.75
set term postscript enhanced color dashed
set out "throughput_and_BOS_w_SD-TON.eps"
plot "clockDrift-FECA.txt" u 1:($3/1e6):((1.96*$4/3.16)/1e6) title "CSMA/ECA_{Hys+FS}" w yerrorbars ls 9 lw 2 axis x1y1, "" u 1:($3/1e6) notitle w lines ls 9 lw 2, "clockDrift-BECA.txt" u 1:($3/1e6):((1.96*$4/3.16)/1e6) title "CSMA/ECA" w yerrorbars ls 6 lw 2 axis x1y1, "" u 1:($3/1e6) notitle w lines ls 6 lw 2, "clockDrift-DCF.txt" u 1:($3/1e6):((1.96*$4/3.16)/1e6) title "CSMA/CA" w yerrorbars ls 7 lw 2 axis x1y1, "" u 1:($3/1e6) notitle w lines ls 7 lw 2, "clockDrift-FECA.txt" u 1:10 title "CSMA/ECA_{Hys+FS}: average backoff stage" w p ls 17 lw 2 axis x1y2, "clockDrift-BECA.txt" u 1:10 title "CSMA/ECA: average backoff stage" w p ls 14 lw 2 axis x1y2, "clockDrift-DCF.txt" u 1:10 title "CSMA/CA: average backoff stage" w p ls 15 lw 2 axis x1y2
