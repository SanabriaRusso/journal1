#!/usr/local/bin/gnuplot
set termopt enhanced
#set term postscript enhanced color dashed
#set out "timeBetweenSxTx-multiplot-sat-TON.eps"
set size 0.75,0.75
set multiplot

#Big plot

set yrange[0:1.5]
set ytics 0,0.1,1
set xrange[2:70]
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average Time between successful transmissions (secs)"

#Arrows and highlight square
set arrow from 20,0.5 to 20,0.63 lw 1 front filled
set arrow from 10,0 to 10,0.5 lw 1 front nohead
set arrow from 10,0.5 to 30,0.5 lw 1 front nohead
set arrow from 30,0.5 to 30,0 lw 1 front nohead
#set arrow from 40,0 to 20,0 lw 1 front nohead

plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat-maxAg.txt" u 1:7:(1.96*$8/3.16) title "CSMA/CA_{MaxAg} saturated" w yerrorbars ls 2 lw 2, "" u 1:7 notitle w l ls 2 lw 2, "~/Dropbox/PhD/NeTS/git/journal1/figures/raw/ECA-sat-maxAg.txt" u 1:7:(1.96*$8/3.16) title "CSMA/ECA_{Hys+MaxAg} saturated" w yerrorbars ls 8 lw 2, "" u 1:7 notitle w l ls 8 lw 2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-sat.txt" u 1:7:(1.96*$8/3.16) title "CSMA/ECA_{Hys+FS} saturated" w yerrorbars ls 6 lw 2, "" u 1:7 notitle w l ls 6 lw 2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat.txt" u 1:7:(1.96*$8/3.16) title "CSMA/CA saturated" w yerrorbars ls 7 lw 2, "" u 1:7 notitle w l ls 7 lw 2 

#Small plot
set size 0.35,0.25
set origin 0.07,0.36
set title ""
set xrange[10:30]
set yrange[-0.05:0.3]
set ytics 0,0.1,0.3 
set xlabel ""
set ylabel ""
unset arrow
set grid
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat-maxAg.txt" u 1:7 notitle w p ls 2 lw 2, "" u 1:7 notitle w l ls 2 lw 2, "~/Dropbox/PhD/NeTS/git/journal1/figures/raw/ECA-sat-maxAg.txt" u 1:7 notitle w p ls 8 lw 2, "" u 1:7 notitle w l ls 8 lw 2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-sat.txt" u 1:7 notitle w p ls 6 lw 2, "" u 1:7 notitle w l ls 6 lw 2, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-sat.txt" u 1:7 notitle w p ls 7 lw 2, "" u 1:7 notitle w l ls 7 lw 2

unset multiplot
