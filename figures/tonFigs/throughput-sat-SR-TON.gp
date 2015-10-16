#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Aggregated Throughput (Mbps)"
set xrange[1:50]
set xtics 2,4,50;
set yrange[10:85]
set ytics 10,10,80
#set arrow from 2,second 6 to 70,second 6 lt 0 lw 3 lc rgb 'black' nohead
#set label 1 at 22,second 7 'Backoff stages below' center
set size 0.75,0.75
set term postscript enhanced color solid
set out "throughput-sat-SR-TON.eps"
plot "../new_raws/ECA-sat-error-0.1.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 2, "" u 1:($2/1e6) notitle w l ls 6 lw 2, "../new_raws/ECA-sat-error-0.1-halving-aggr-dynStick-TON.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys+FS} w/ SR halv. aggr. dynStick" w yerrorbars ls 1 lw 2, "" u 1:($2/1e6) notitle w l ls 1 lw 2, "../new_raws/ECA-sat-error-0.1-reset-aggr-TON.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys+FS} w/ SR aggr. " w yerrorbars ls 2 lw 2, "" u 1:($2/1e6) notitle w l ls 2 lw 2, "../new_raws/ECA-sat-error-0.1-reset-TON.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys+FS} w/ SR " w yerrorbars ls 4 lw 2, "" u 1:($2/1e6) notitle w l ls 4 lw 2, "../new_raws/ECA-sat-hystOnly-error-0.1-halving-aggr-dynStick-TON.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys} w SR halv. aggr. dynStick" w yerrorbars ls 8 lw 2, "" u 1:($2/1e6) notitle w l ls 8 lw 2, "../new_raws/ECA-sat-hystOnly-error-0.1.txt" u 1:($2/1e6):($3/1e6) title "CSMA/ECA_{Hys}" w yerrorbars ls 3 lw 2, "" u 1:($2/1e6) notitle w l ls 3 lw 2, "../new_raws/DCF-sat-error-0.1.txt" u 1:($2/1e6):($3/1e6) title "CSMA/CA " w yerrorbars ls 7 lw 2, "" u 1:($2/1e6) notitle w l ls 7 lw 2
