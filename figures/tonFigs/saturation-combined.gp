#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color dashed font ',9'
set out "saturation-combined.eps"

if(!exists("MP_LEFT")) MP_LEFT = .08
if(!exists("MP_RIGHT")) MP_RIGHT = .93
if(!exists("MP_BOTTOM")) MP_BOTTOM = 0.07 
if(!exists("MP_TOP")) MP_TOP = .7
if(!exists("MP_GAP")) MP_GAP = .09

set size ratio 0.5
set size 1,0.75

set multiplot layout 2,2 columnsfirst title "" margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing MP_GAP
unset xlabel

#1,1
set title "a)"
load "../saturated/throughput-saturated-w-BOS/throughput-saturated-w-BOS-TON.gp"

#1,2
set title "b)"
unset y2label
unset y2tics
set ytics mirror
unset arrow
unset label 1
load "../saturated/collisions-saturated/collisions-saturated-TON.gp"

#2,1
set title "c)"
load "../saturated/slots/Pc-evolution-TON.gp"

#2,2
set title "d)"
unset logscale y2
load "../saturated/timeBetweenSxTx-sat/timeBetweenSxTx-multiplot-sat-TON-bigMultiplot.gp"
unset multiplot
