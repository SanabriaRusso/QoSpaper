set termopt enhanced
set term postscript enhanced color dashed
set out "multiplot-unsat-error-0-1.eps"

if (!exists("MP_LEFT"))   MP_LEFT = .15
if (!exists("MP_RIGHT"))  MP_RIGHT = .95
if (!exists("MP_BOTTOM")) MP_BOTTOM = .1
if (!exists("MP_TOP"))    MP_TOP = .9
if (!exists("MP_GAP"))    MP_GAP = 0.05


set multiplot layout 3,3 columnsfirst title "" margins MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing MP_GAP

#1,1
load "throughput-unsat-error-0.1-EDCAonly.gp"
unset title

#1,2
set key off
load "collisions-unsat-error-0.1-EDCAonly.gp"
unset y2tics

#1,3
load "time-unsat-error-0.1-EDCAonly.gp"
unset logscale y
unset ylabel
unset xlabel

#2,1
set ytics format ""
set title "b) CSMA/ECA_{QoS}"
set key off
load "throughput-unsat-error-0.1-ECAonly-highStages.gp"

#2,2
set key right
set title ""
set y2tics format ""
load "collisions-unsat-error-0.1-ECAonly-highStages.gp"
unset y2tics

#2,3
set key off
set ytics mirror
unset y2label
load "time-unsat-error-0.1-ECAonly-highStages.gp"

#3,1
set title "c) CSMA/ECA_{QoS} without Fair Share"
unset logscale y
unset xlabel
load "throughput-unsat-error-0.1-ECAonly-highStages-hystOnly.gp"

#3,2
unset title
load "collisions-unsat-error-0.1-ECAonly-highStages-hystOnly.gp"

#3,3
unset y2label
set logscale y
set key off
set ytics mirror
load "time-unsat-error-0.1-ECAonly-highStages-hystOnly.gp"

unset multiplot