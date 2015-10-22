#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color dashed font ',9'
set out "nonsaturation-combined.eps"

if(!exists("MP_LEFT")) MP_LEFT = .08
if(!exists("MP_RIGHT")) MP_RIGHT = .93
if(!exists("MP_BOTTOM")) MP_BOTTOM = 0.07 
if(!exists("MP_TOP")) MP_TOP = .7
if(!exists("MP_GAP")) MP_GAP = .09

set size 1,0.75

set multiplot layout 2,3 columnsfirst title "" margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing MP_GAP

#1,1
set title "a)"
load "../unsaturated/throughput-unsaturated/throughput-unsaturated-w-BOS-TON.gp"

#2,1
unset label 1
unset arrow
unset y2label
unset y2tics
set ytics mirror
set title "d)"
load "../unsaturated/droppedPackets/droppedPacketsDueRET-TON.gp"
set format y ""

#1,2
set title "b)"
load "../unsaturated/collision-unsaturated/collisions-unsaturated-TON.gp"


#2,2
set title "e)"
load "../unsaturated/queueingDelay/queueingDelay-unsaturated-TON.gp"

#1,3
set title "c)"
load "../unsaturated/timeBetweenSxTx-unsat/timeBetweenSxTx-multiplot-unsat-TON.gp"

#2,3
set title "f)"
load "../unsaturated/queueSize/queueSize-multiplot-TON-bigCombined.gp"

unset multiplot
