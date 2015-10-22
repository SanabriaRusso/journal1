#!/usr/local/bin/gnuplot
set xrange[4:40]
set xtics 4,4,40
set xlabel "Total contenders in network (N*)"
set yrange[0.1:30]
set logscale y
set ytics mirror
set ylabel "Average throughput (Mbps)"
#set size 0.75,0.75
#set term postscript enhanced color dashed
#set out "throughput-per-protocol-TON.eps"

####ECA+HYS _MAY_ work with SR. Remove the hystOnly lines to get the one in the paper

plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-sat.txt" u 1:(int($1)%4==0?$15/1e6:1/0):($16/1e6) title "a CSMA/ECA_{Hys+FS} station" w yerrorbars ls 6 lw 1, "" u 1:($15/1e6) notitle w l ls 6 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-50DCF-sat.txt"  u 1:($15/1e6):($16/1e6) title "1/2 CSMA/CA: CSMA/ECA_{Hys+FS} stations" w yerrorbars ls 1 lw 1, ""  u 1:($15/1e6) notitle w l ls 1 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat.txt" u 1:(int($1)%4==0?$15/1e6:1/0):($16/1e6) title "a CSMA/CA station" w yerrorbars ls 7 lw 1, "" u 1:($15/1e6) notitle w l ls 7 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-50DCF-sat.txt"  u 1:($13/1e6):($14/1e6) title "1/2 CSMA/CA: CSMA/CA stations" w yerrorbars ls 4 lw 1, ""  u 1:($13/1e6) notitle w l ls 4 lw 1

