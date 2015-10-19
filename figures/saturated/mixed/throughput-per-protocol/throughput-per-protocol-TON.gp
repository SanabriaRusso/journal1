#!/usr/local/bin/gnuplot
set xrange[4:40]
set xtics 2,2,40
set xlabel "Total contenders in network (N*)"
set yrange [*:*]
set yrange[0.01:20]
set logscale y
set ylabel "Aggregated throughput (Mbps)"
#set size 0.75,0.75
#set term postscript enhanced color dashed
#set out "throughput-per-protocol-TON.eps"

####ECA+HYS _MAY_ work with SR. Remove the hystOnly lines to get the one in the paper

plot "../../../new_raws/ECA-sat.txt" u 1:($15/1e6):($16/1e6) title "a CSMA/ECA_{Hys+FS} station" w yerrorbars ls 6 lw 2, "" u 1:($15/1e6) notitle w l ls 6 lw 2, "../../../new_raws/ECA-50DCF-sat.txt" every 2 u 1:($15/1e6):($16/1e6) title "(A) 1/2 CSMA/CA: CSMA/ECA_{Hys+FS} stations" w yerrorbars ls 1 lw 2, "" every 2 u 1:($15/1e6) notitle w l ls 1 lw 2, "../../../new_raws/DCF-sat.txt" u 1:($15/1e6):($16/1e6) title "a CSMA/CA station" w yerrorbars ls 7 lw 2, "" u 1:($15/1e6) notitle w l ls 7 lw 2, "../../../tonFigs/ECA-hystOnly-50DCF-sat-TON.txt" every 4 u 1:($16/1e6):($17/1e6) title "(B) 1/2 CSMA/CA: CSMA/ECA_{Hys+FS} stations" w yerrorbars ls 2 lw 2, "" every 4 u 1:($16/1e6) notitle w l ls 2 lw 2, "../../../new_raws/ECA-50DCF-sat.txt" every 2 u 1:($13/1e6):($14/1e6) title "(A) 1/2 CSMA/CA: CSMA/CA stations" w yerrorbars ls 4 lw 2, "" every 2 u 1:($13/1e6) notitle w l ls 4 lw 2, "../../../tonFigs/ECA-hystOnly-50DCF-sat-TON.txt" every 4 u 1:($14/1e6):($15/1e5) title "(B) 1/2 CSMA/CA: CSMA/CA stations" w yerrorbars ls 8 lw 2, "" every 4 u 1:($14/1e6) notitle w l ls 8 lw 2

