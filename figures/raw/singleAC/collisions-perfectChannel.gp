set yrange[0:80e3]
set ylabel "Average number of collision slots"
set xlabel "Contenders (N)"
set size 0.7,0.7
set termopt enhanced
set term postscript enhanced color solid
set out "collisions-perfectChannel.eps"
plot "EDCA-error-0.dat" u 1:12:13 title "CSMA/CA" w yerrorbars ls 1 lw 2, "" u 1:12:13 notitle w l ls 1 lw 2, "BasicECA-0.dat" u 1:12:13 title "CSMA/ECA" w yerrorbars ls 3 lw 2, "" u 1:12:13 notitle w l ls 3 lw 2, "ECA-hystOnly-0.dat" u 1:12:13 title "CSMA/ECA with Hysteresis" w yerrorbars ls 4 lw 2, "" u 1:12:13 notitle w l ls 4 lw 2, "ECA-0.dat" u 1:12:13 title "CSMA/ECA_{Hys+FS}" w yerrorbars ls 8 lw 2, "" u 1:12:13 notitle w l ls 8 lw 2
