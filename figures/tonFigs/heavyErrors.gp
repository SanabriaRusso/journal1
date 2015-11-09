#!/usr/local/bin/gnuplot
set key spacing 3
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set xrange[0:45]
set xtics auto
set yrange[0:50]
set ytics 10,10,60
#set arrow from 2,second 6 to 70,second 6 lt 0 lw 3 lc rgb 'black' nohead
#set label 1 at 22,second 7 'Backoff stages below' center
set size 0.75,0.75
set term postscript enhanced color solid
set out "heavyErrors.eps"
plot "ECA-sat-error-0.5-TON.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys+FS} with p_e=0.5" w yerrorbars ls 6 lw 1, ""  u 1:($2/1e6) notitle w l ls 6 lw 1, "../new_raws/DCF-sat.txt"  u 1:(int($1)%2==0?($2/1e6):(1/0)):($3/1e6) title "CSMA/CA with p_e=0" w yerrorbars ls 7 lw 1, ""  u 1:($2/1e6) notitle w l ls 7 lw 1,"../new_raws/DCF-sat-error-0.5.txt" u 1:($2/1e6):($3/1e6) title "CSMA/CA with p_e=0.5" w yerrorbars ls 4 lw 1, ""  u 1:($2/1e6) notitle w l ls 4 lw 1
