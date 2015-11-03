#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Avg. time bet. sx tx (secs)"
set xrange[0:45]
set xtics 5,5,45;
set yrange[0.0001:1000]
set logscale y
#set arrow from 2,second 6 to 70,second 6 lt 0 lw 3 lc rgb 'black' nohead
#set label 1 at 22,second 7 'Backoff stages below' center
#set size 0.75,0.75
#set term postscript enhanced color solid
#set out "timeBetSxTx-sat-SR-TON.eps"
plot "../new_raws/ECA-sat-error-0.1-NEW.txt"  u 1:($42):($43) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1, ""  u 1:($42) notitle w l ls 6 lw 1, "../new_raws/ECA-sat-error-0.1-reset-TON-NEW.txt"  u 1:($42):($43) title "CSMA/ECA_{Hys+FS} w/ SR " w yerrorbars ls 4 lw 1, ""  u 1:($42) notitle w l ls 4 lw 1, "../new_raws/ECA-sat-error-0.1-reset-aggr-TON-NEW.txt"  u 1:($42):($43) title "CSMA/ECA_{Hys+FS} w/ SR aggr. " w yerrorbars ls 2 lw 1, ""  u 1:($42) notitle w l ls 2 lw 1, "../new_raws/ECA-sat-error-0.1-halving-aggr-dynStick-TON-NEW.txt"  u 1:($42):($43) title "CSMA/ECA_{Hys+FS} w/ SR halv. aggr. dynStick" w yerrorbars ls 1 lw 1, ""  u 1:($42) notitle w l ls 1 lw 1, "../new_raws/DCF-sat-error-0.1.txt"  u 1:($42):($43) title "CSMA/CA " w yerrorbars ls 7 lw 1, ""  u 1:($42) notitle w l ls 7 lw 1, "../new_raws/ECA-sat-hystOnly-error-0.1.txt"  u 1:($42):($43) title "CSMA/ECA_{Hys}" w yerrorbars ls 3 lw 1, ""  u 1:($42) notitle w l ls 3 lw 1, "../new_raws/ECA-sat-hystOnly-error-0.1-halving-aggr-dynStick-TON-NEW.txt"  u 1:($42):($43) title "CSMA/ECA_{Hys} w SR halv. aggr. dynStick" w yerrorbars ls 8 lw 1, ""  u 1:($42) notitle w l ls 8 lw 1
