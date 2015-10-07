#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set xrange[4:68]
set xtics 4,4,68
set ylabel "Aggregated Throughput (Mbps)"
set yrange[0:85]
set ytics 10,5,80
set size 0.75,0.75
set term postscript enhanced color dashed
set out "throughput-unsaturated-mixed-TON.eps"

plot "../../../new_raws/ECA-unsat.txt" every 4 u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "Only non-saturated CSMA/ECA_{Hys+FS} nodes" w yerrorbars ls 6 lw 2, "" every 4 u 1:($2/1e6) notitle w l ls 6 lw 2, "../../../new_raws/ECA-25DCF-unsat.txt" every 4 u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "1/4 of non-saturated CSMA/CA nodes" w yerrorbars ls 2 lw 2, "" every 4 u 1:($2/1e6) notitle w l ls 2 lw 2, "../../../new_raws/ECA-50DCF-unsat.txt" every 4 u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "1/2 of non-saturated CSMA/CA nodes" w yerrorbars ls 1 lw 2, "" every 4 u 1:($2/1e6) notitle w l ls 1 lw 2, "../../../new_raws/ECA-75DCF-unsat.txt" every 4 u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "3/4 of non-saturated CSMA/CA nodes" w yerrorbars ls 8 lw 2, "" every 4 u 1:($2/1e6) notitle w l ls 8 lw 2, "../../../new_raws/DCF-unsat.txt" every 4 u 1:($2/1e6):(1.96*($3/1e6)/3.16) title "Only non-saturated CSMA/CA nodes" w yerrorbars ls 7 lw 2, "" every 4 u 1:($2/1e6) notitle w l ls 7 lw 2
