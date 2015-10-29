#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Jain's Fairness Index"
set xrange[0:45]
set xtics auto
set yrange [0.999:1.001]
set size 0.75,0.75
#set term postscript enhanced color solid
#set out "SR-fairness.eps"
plot "../new_raws/ECA-sat-error-0.1.txt"  u 1:($32) title "CSMA/ECA_{Hys+FS} " w l ls 6 lw 1, "../new_raws/ECA-sat-error-0.1-halving-aggr-dynStick-TON.txt"  u 1:($32) title "CSMA/ECA_{Hys+FS} w/ SR halv. aggr. dynStick" w l ls 1 lw 1,"../new_raws/ECA-sat-error-0.1-reset-TON.txt"  u 1:($32) title "CSMA/ECA_{Hys+FS} w/ SR " w l ls 4 lw 1, "../new_raws/ECA-sat-hystOnly-error-0.1-halving-aggr-dynStick-TON.txt"  u 1:($32) title "CSMA/ECA_{Hys} w SR halv. aggr. dynStick" w l ls 8 lw 1, "../new_raws/ECA-sat-hystOnly-error-0.1.txt"  u 1:($32) title "CSMA/ECA_{Hys}" w l ls 3 lw 1, "../new_raws/DCF-sat-error-0.1.txt"  u 1:($32) title "CSMA/CA " w l ls 7 lw 1
