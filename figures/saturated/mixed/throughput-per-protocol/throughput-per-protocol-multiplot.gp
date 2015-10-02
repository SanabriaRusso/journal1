set termopt enhanced
set term postscript enhanced color solid
set out "throughput-per-protocol-multiplot.eps"
set size 0.75,0.75
set multiplot

#Big plot
set logscale y
set yrange[*:10000]
set ytics auto
set xrange[4:70]
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average throughput of a station (Mbps)"

#Arrows and highlight square
set arrow from 6,13 to 35,50 lw 1 front filled
set arrow from 4,0.1 to 4,13 lw 1 front nohead
set arrow from 4,13 to 12,13 lw 1 front nohead
set arrow from 12,13 to 12,0.1 lw 1 front nohead

plot "../../../new_raws/ECA-25DCF-sat.txt" every 4 u 1:($13/1e6):(1.96*($14/1e6)/3.16) title "1/4 CSMA/CA: CSMA/CA stations" w yerrorbars ls 1 lw 2, "" every 4 u 1:($13/1e6) notitle w l ls 1 lw 2, "" every 4 u 1:($15/1e6):(1.96*($16/1e6)/3.16) title "1/4 CSMA/CA: CSMA/ECA_{Hys+FS} stations" w yerrorbars ls 3 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 3 lw 2, "../../../new_raws/ECA-50DCF-sat.txt" every 4 u 1:($13/1e6):(1.96*($14/1e6)/3.16) title "1/2 CSMA/CA: CSMA/CA stations" w yerrorbars ls 4 lw 2, "" every 4 u 1:($13/1e6) notitle w l ls 4 lw 2, "" every 4 u 1:($15/1e6):(1.96*($16/1e6)/3.16) title "1/2 CSMA/CA: CSMA/ECA_{Hys+FS} stations" w yerrorbars ls 8 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 8 lw 2, "../../../new_raws/ECA-75DCF-sat.txt" every 4 u 1:($13/1e6):(1.96*($14/1e6)/3.16) title "3/4 CSMA/CA: CSMA/CA stations" w yerrorbars ls 7 lw 2, "" every 4 u 1:($13/1e6) notitle w l ls 7 lw 2, "" every 4 u 1:($15/1e6):(1.96*($16/1e6)/3.16) title "3/4 CSMA/CA: CSMA/ECA_{Hys+FS} stations" w yerrorbars ls 9 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 9 lw 2, "../../../new_raws/ECA-sat.txt" every 4 u 1:($15/1e6):(1.96*($16/1e6)/3.16) title "a CSMA/ECA_{Hys+FS} station" w yerrorbars ls 25 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 25 lw 2, "../../../new_raws/DCF-sat.txt" every 4 u 1:($15/1e6):(1.96*($16/1e6)/3.16) title "a CSMA/CA station" w yerrorbars ls 12 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 12 lw 2


#Small plot
set size 0.35,0.25
set origin 0.35,0.25
set title ""
set xrange[4:12]
set yrange[2:10]
set ytics auto
set xlabel ""
set ylabel ""
unset arrow
set grid

plot "../../../new_raws/ECA-25DCF-sat.txt" every 4 u 1:($13/1e6) notitle w l ls 1 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 3 lw 2, "../../../new_raws/ECA-50DCF-sat.txt" every 4 u 1:($13/1e6) notitle w l ls 4 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 8 lw 2, "../../../new_raws/ECA-75DCF-sat.txt" every 4 u 1:($13/1e6) notitle w l ls 7 lw 2, "" every 4 u 1:($15/1e6) notitle w l ls 9 lw 2, "../../../new_raws/ECA-sat.txt" every 4 u 1:($15/1e6) notitle w l ls 25 lw 2, "../../../new_raws/DCF-sat.txt" every 4 u 1:($15/1e6) notitle w l ls 12 lw 2

unset multiplot