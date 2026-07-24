v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Added root-level Miller compensation.
CCOMP_P: vout_p -> stage1/output_stage vin_n.
CCOMP_N: vout_n -> stage1/output_stage vin_p.
Each MIM cap is about 2 pF with W=25um, L=40um.} 660 -920 0 0 0.25 0.25 {}
N 550 -510 550 -470 {lab=vss}
N 550 -470 870 -470 {lab=vss}
N 870 -560 870 -470 {lab=vss}
N 490 -700 770 -700 {lab=i_bias}
N 370 -700 490 -700 {lab=i_bias}
N 550 -810 550 -750 {lab=vdd}
N 550 -810 870 -810 {lab=vdd}
N 870 -810 870 -760 {lab=vdd}
N 450 -630 490 -630 {lab=vin_n}
N 610 -600 690 -600 {lab=#net1}
N 690 -600 720 -600 {lab=#net1}
N 370 -570 490 -570 {lab=vcmfb}
N 490 -600 550 -600 {lab=#net2}
N 550 -600 550 -590 {lab=#net2}
N 550 -590 990 -590 {lab=#net2}
N 990 -610 990 -590 {lab=#net2}
N 970 -610 990 -610 {lab=#net2}
N 730 -660 770 -660 {lab=vout_p}
N 970 -660 1010 -660 {lab=vout_n}
N 720 -660 730 -660 {lab=vout_p}
N 990 -590 1050 -590 {lab=#net2}
N 1020 -660 1050 -660 {lab=vout_n}
N 440 -630 450 -630 {lab=vin_n}
N 610 -630 660 -630 {lab=vin_p}
N 290 -670 290 -610 {lab=i_bias}
N 290 -810 290 -730 {lab=vdd}
N 290 -650 370 -650 {lab=i_bias}
N 370 -700 370 -650 {lab=i_bias}
N 270 -700 290 -700 {lab=vdd}
N 270 -750 270 -700 {lab=vdd}
N 270 -750 290 -750 {lab=vdd}
N 330 -700 370 -700 {lab=i_bias}
N 290 -810 550 -810 {lab=vdd}
N 720 -600 750 -600 {lab=#net1}
N 750 -610 750 -600 {lab=#net1}
N 750 -610 770 -610 {lab=#net1}
N 1050 -600 1050 -590 {lab=#net2}
N 1010 -660 1020 -660 {lab=vout_n}
C {lab_wire.sym} 720 -660 0 1 {name=p1 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 1030 -660 0 0 {name=p2 sig_type=std_logic lab=vout_n}
C {lab_wire.sym} 660 -630 0 0 {name=p3 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 440 -630 0 1 {name=p4 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 710 -810 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 710 -470 0 0 {name=p6 sig_type=std_logic lab=vss}
C {lab_wire.sym} 390 -570 0 1 {name=p37 sig_type=std_logic lab=vcmfb}
C {symbols/pfet_03v3.sym} 310 -700 0 1 {name=M1
L=0.54u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 290 -610 3 1 {name=p7 sig_type=std_logic lab=i_bias}
C {iopin.sym} 110 -800 0 0 {name=p8 lab=vdd}
C {iopin.sym} 110 -760 0 0 {name=p9 lab=vss}
C {iopin.sym} 110 -720 0 0 {name=p10 lab=vin_p}
C {iopin.sym} 110 -680 0 0 {name=p11 lab=vin_n}
C {iopin.sym} 110 -640 0 0 {name=p12 lab=vout_p}
C {iopin.sym} 110 -600 0 0 {name=p13 lab=vout_n}
C {iopin.sym} 110 -560 0 0 {name=p14 lab=vcmfb}
C {iopin.sym} 110 -520 0 0 {name=p15 lab=i_bias}
C {OTA/input_stage/input_stage.sym} 550 -510 0 0 {name=x2}
C {OTA/output_stage/output_stage.sym} 770 -560 0 0 {name=x1}
C {symbols/cap_mim_2f0fF.sym} 720 -630 0 0 {name=CCOMP_P
W=25e-6
L=40e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 1050 -630 0 0 {name=CCOMP_N
W=25e-6
L=40e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
