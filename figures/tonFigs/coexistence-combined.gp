#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color dashed font ',9'
set out "coexistence-combined.eps"

if(!exists("MP_LEFT")) MP_LEFT = .08
if(!exists("MP_RIGHT")) MP_RIGHT = .93
if(!exists("MP_BOTTOM")) MP_BOTTOM = 0.07 
if(!exists("MP_TOP")) MP_TOP = .7
if(!exists("MP_GAP")) MP_GAP = .09

set size 1,0.75

set multiplot layout 2,3 columnsfirst title "" margins MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing MP_GAP

#1,1
unset xlabel
set title "a)"
load "../saturated/mixed/throughput-mixed/throughput-saturated-mixed-TON.gp"

#2,1
set title "c)"
load "../unsaturated/mixed/throughput-mixed/throughput-unsaturated-mixed-TON.gp"

#1,2
set title "b)"
load "../saturated/mixed/collisions-mixed/collisions-mixed-saturated-TON.gp"

#2,2
set title "d)"
load "../unsaturated/mixed/collisions-mixed/collisions-mixed-unsaturated-TON.gp"

#1,3
set title "e)"
set tmargin 2.78 
set bmargin 3.9
set lmargin 92
set rmargin 2
load "../saturated/mixed/throughput-per-protocol/throughput-per-protocol-TON.gp"

unset multiplot
