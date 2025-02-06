# General plot settings
set terminal png enhanced font "Times New Roman, 80" size 2000, 1300
set border lw 19
set xlabel offset 0,0.5
set ylabel offset 1.5,0
#set xlabel "Residue Number"
#set ylabel "Betweenness Centrality"
set xrange [0:1740]
set yrange [0:0.012]
set ytics 0.004
set xtics 500
unset grid
unset key
unset title



# Plot 1: Bent - Control
set output 'bent_control.png'
#set title "Bent Integrin - Control"
plot "0.BC_bent_control_betweenness_value_filter0.30.dat" using 1:2 with lines lw 10 linecolor rgb "blue" title "Control"
unset output

# Plot 2: Bent - Force
set output 'bent_force.png'
#set title "Bent Integrin - Force"
plot "0.BC_bent_Force_betweenness_value_filter0.30.dat" using 1:2 with lines lw 10 linecolor rgb "red" title "Force"
unset output

# Plot 3: Bent - ForceRGD
set output 'bent_forcergd.png'
#set title "Bent Integrin - Force/RGD"
plot "0.BC_bent_ForceRGD_betweenness_value_filter0.30.dat" using :2 with lines lw 10 linecolor rgb "orange" title "Force/RGD"
unset output

# Plot 4: Bent - RGD
set output 'bent_rgd.png'
#set title "Bent Integrin - RGD"
plot "0.BC_bent_RGD_betweenness_value_filter0.30.dat" using :2 with lines lw 10 linecolor rgb "cyan" title "RGD"
unset output

# Plot 5: Open - Control
set output 'open_control.png'
#set title "Open Integrin - Control"
plot "0.BC_open_control_betweenness_value_filter0.30.dat" using 1:2 with lines lw 10 linecolor rgb "blue" title "Control"
unset output

# Plot 6: Open - Force
set output 'open_force.png'
#set title "Open Integrin - Force"
plot "0.BC_open_Force_betweenness_value_filter0.30.dat" using 1:2 with lines lw 10 linecolor rgb "red" title "Force"
unset output

# Plot 7: Open - ForceRGD
set output 'open_forcergd.png'
#set title "Open Integrin - Force/RGD"
plot "0.BC_open_ForceRGD_betweenness_value_filter0.30.dat" using 1:2 with lines lw 10 linecolor rgb "orange" title "Force/RGD"
unset output

# Plot 8: Open - RGD
set output 'open_rgd.png'
#set title "Open Integrin - RGD"
plot "0.BC_open_RGD_betweenness_value_filter0.30.dat" using 1:2 with lines lw 10 linecolor rgb "cyan" title "RGD"
unset output
