#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color dashed font ',9'
set out "implementation-combined.eps"

#Subplots's margins. It also controls each subplot's aspect ratio
if(!exists("MP_LEFT")) MP_LEFT = 0.1
if(!exists("MP_RIGHT")) MP_RIGHT = 0.9
if(!exists("MP_BOTTOM")) MP_BOTTOM = 0.09
if(!exists("MP_TOP")) MP_TOP = 0.7
if(!exists("MP_GAP")) MP_GAP = 0.1

#Canvas size and ratio
set size ratio 0.5 
set size 1,0.75

set multiplot layout 2,1 title "" margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing MP_GAP

#1,1
set title "a)"
load "throughput-sat-SR-IMPLEMENTATION.gp"

#1,2
set title "b)"
load "losses-sat-SR-IMPLEMENTATION.gp"

unset multiplot

