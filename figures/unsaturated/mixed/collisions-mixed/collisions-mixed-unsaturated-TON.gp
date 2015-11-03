#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set xrange[2:68]
set xtics 4,10,68
set ylabel "Average percentage of collision slots (%)"
set yrange[-5:65]
set ytics 0,10,40
#set size 0.75,0.75
#set term postscript enhanced color dashed
#set out "collisions-mixed-unsaturated-TON.eps"
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat.txt"  u 1:(int($1)%4==0?($11*100):1/0):(1.96*($12*100)/3.16) title "CSMA/CA non-sat" w yerrorbars ls 7 lw 1, ""   u 1:($11*100) notitle w l ls 7 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-75DCF-unsat.txt"  u 1:($11*100):(1.96*($12*100)/3.16) title "3/4 non-sat CSMA/CA nodes" w yerrorbars ls 8 lw 1, ""   u 1:($11*100) notitle w l ls 8 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-50DCF-unsat.txt"   u 1:($11*100):(1.96*($12*100)/3.16) title "1/2 non-sat CSMA/CA nodes" w yerrorbars ls 1 lw 1, ""  u 1:($11*100) notitle w l ls 1 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-25DCF-unsat.txt"  u 1:($11*100):(1.96*($12*100)/3.16) title "1/4 non-sat CSMA/CA nodes" w yerrorbars ls 2 lw 1, ""   u 1:($11*100) notitle w l ls 2 lw 1,  "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat.txt"   u 1:(int($1)%4==0?($11*100):1/0):(1.96*($12*100)/3.16) title "CSMA/ECA_{Hys+FS} non-sat" w yerrorbars ls 6 lw 1, ""   u 1:($11*100) notitle w l ls 6 lw 1
