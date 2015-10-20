#!/usr/local/bin/gnuplot
set termopt enhanced
#set term postscript enhanced color dashed
#set out "timeBetweenSxTx-multiplot-sat-TON.eps"
#set size 0.85,0.85

set y2range[0:0.8]
set y2tics 0,0.1,0.5
set xrange[2:50]
set xtics 2,4,50
set format x "%2.0f"
#set size 0.85,0.85
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Avg. Time bet. sx tx (secs)"

plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat-maxAg.txt" u 1:7:(1.96*$8/3.16) title "CSMA/CA_{MaxAg} " w yerrorbars ls 2 lw 1 axes x1y2, "" u 1:7 notitle w l ls 2 lw 1 axes x1y2, "~/Dropbox/PhD/NeTS/git/journal1/figures/raw/ECA-sat-maxAg.txt" u 1:7:(1.96*$8/3.16) title "CSMA/ECA_{Hys+MaxAg} " w yerrorbars ls 8 lw 1 axes x1y2, "" u 1:7 notitle w l ls 8 lw 1 axes x1y2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-sat.txt" u 1:7:(1.96*$8/3.16) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1 axes x1y2, "" u 1:7 notitle w l ls 6 lw 1 axes x1y2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat.txt" u 1:7:(1.96*$8/3.16) title "CSMA/CA " w yerrorbars ls 7 lw 1 axes x1y2, "" u 1:7 notitle w l ls 7 lw 1 axes x1y2 

