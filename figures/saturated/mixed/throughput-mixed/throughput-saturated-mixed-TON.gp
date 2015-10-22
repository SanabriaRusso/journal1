#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set xrange[2:68]
set xtics 4,10,68
set ylabel "Aggregated Throughput (Mbps)"
set yrange[10:110]
set ytics 10,10,60
#set size 0.75,0.75
#set term postscript enhanced color dashed
#set out "throughput-saturated-mixed-TON.eps"
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-sat.txt" u 1:(int($1)%4==0?$2/1e6:1/0):(1.96*($3/1e6)/3.16) title "CSMA/ECA_{Hys+FS} sat" w yerrorbars ls 6 lw 1, ""  u 1:($2/1e6) notitle w l ls 6 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-25DCF-sat.txt" u 1:(int($1)%4==0?$2/1e6:1/0):(1.96*($3/1e6)/3.16) title "1/4 sat CSMA/CA nodes" w yerrorbars ls 2 lw 1, "" u 1:($2/1e6) notitle w l ls 2 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-50DCF-sat.txt"  u 1:(int($1)%4==0?$2/1e6:1/0):(1.96*($3/1e6)/3.16) title "1/2 sat CSMA/CA nodes" w yerrorbars ls 1 lw 1, ""  u 1:($2/1e6) notitle w l ls 1 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-75DCF-sat.txt"  u 1:(int($1)%4==0?$2/1e6:1/0):(1.96*($3/1e6)/3.16) title "3/4 sat CSMA/CA nodes" w yerrorbars ls 8 lw 1, ""  u 1:($2/1e6) notitle w l ls 8 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat.txt"  u 1:(int($1)%4==0?$2/1e6:1/0):(1.96*($3/1e6)/3.16) title "CSMA/CA sat" w yerrorbars ls 7 lw 1, ""  u 1:($2/1e6) notitle w l ls 7 lw 1
