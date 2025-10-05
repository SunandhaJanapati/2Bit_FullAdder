onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_2bit_fadder/A
add wave -noupdate /tb_2bit_fadder/B
add wave -noupdate {/tb_2bit_fadder/B[1]}
add wave -noupdate {/tb_2bit_fadder/B[0]}
add wave -noupdate /tb_2bit_fadder/Cin
add wave -noupdate /tb_2bit_fadder/Cout
add wave -noupdate /tb_2bit_fadder/Sum
add wave -noupdate {/tb_2bit_fadder/Sum[1]}
add wave -noupdate {/tb_2bit_fadder/Sum[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {101414 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 38
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {272384 ps}
