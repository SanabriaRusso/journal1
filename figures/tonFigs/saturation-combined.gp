#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color dashed font ',9'
set out "saturation-combined.eps"

#Subplots's margins
if(!exists("MP_LEFT")) MP_LEFT = .08
if(!exists("MP_RIGHT")) MP_RIGHT = .93
if(!exists("MP_BOTTOM")) MP_BOTTOM = 0.07 
if(!exists("MP_TOP")) MP_TOP = .7
if(!exists("MP_GAP")) MP_GAP = .09

#Canvas size and ratio
#set size ratio 0.5
set size 1,0.75

set multiplot layout 2,3 columnsfirst title "" margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing MP_GAP
unset xlabel

#1,1
set title "a)"
load "../saturated/throughput-saturated-w-BOS/throughput-saturated-w-BOS-TON.gp"

#2,1
set title "c)"
unset y2label
unset y2tics
set ytics mirror
unset arrow
unset label 1
load "../saturated/collisions-saturated/collisions-saturated-TON.gp"

#1,2
set title "b)"
load "../saturated/slots/Pc-evolution-TON.gp"

#2,2
set title "d)"
unset logscale y2
load "../saturated/timeBetweenSxTx-sat/timeBetweenSxTx-multiplot-sat-TON-bigMultiplot.gp"

#1,3
set title "e)"
set tmargin 2.78
set bmargin 3.9
set lmargin 96
set rmargin 6
load "../clockDrift/throughput_and_BOS_w_SD-TON.gp"

unset multiplot

