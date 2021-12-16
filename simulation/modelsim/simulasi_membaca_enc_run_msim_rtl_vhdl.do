transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Kampus/Semester 5/Perencanaan Komponen Terprogram/final project/taufik/simulasi_membaca_enc/simulasi_membaca_enc.vhd}

