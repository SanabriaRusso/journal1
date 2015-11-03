#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color dashed font ',9'
set out "schedReset-combined.eps"

#Subplots's margins. It also controls each subplot's aspect ratio
if(!exists("MP_LEFT")) MP_LEFT = 0.08
if(!exists("MP_RIGHT")) MP_RIGHT = 0.93
if(!exists("MP_BOTTOM")) MP_BOTTOM = 0.07
if(!exists("MP_TOP")) MP_TOP = 0.9
if(!exists("MP_GAP")) MP_GAP = 0.1

#Canvas size and ratio
#set size ratio 0.5 
set size 1,1
set key spacing 1.5
set multiplot layout 2,2 columnsfirst title "" margins MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing MP_GAP
unset xlabel

#1,1
set title "a)"
load "throughput-sat-SR-TON.gp"
set ytics auto

#2,1
set title "c)"
load "timeBetSxTx-sat-SR-TON.gp"
unset logscale y

#3,1
#set title "e)"
#load "throughput-sat-SR-IMPLEMENTATION.gp"

#1,2
set title "b)"
load "throughput-unsat-SR.gp"
set ytics auto

#2,2
set title "d)"
load "timeBetSxTx-unsat-SR-TON.gp"
unset logscale y

#3,2
#set title "f)"
#load "losses-sat-SR-IMPLEMENTATION.gp"

unset multiplot

