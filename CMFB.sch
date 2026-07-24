v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {CMFB amplifier, drawn with the same GF180 MOS pin geometry as OTA/input_stage.
Pins: vdd vss vout_p vout_n vocm_set i_bias vcmfb.} -120 -790 0 0 0.3 0.3 {}
T {vout_p/vout_n are sensed only by the resistor divider.
The PMOS input gates compare vocm_set and vocm_sense.} -120 -725 0 0 0.25 0.25 {}
T {Output branch uses a diode-connected NMOS load to lower CMFB gain and remove the current-mirror output pole.} -120 -670 0 0 0.25 0.25 {}
N 360 -720 360 -700 {lab=vdd}
N 360 -720 390 -720 {lab=vdd}
N 390 -720 390 -670 {lab=vdd}
N 360 -670 390 -670 {lab=vdd}
N 180 -670 320 -670 {lab=i_bias}
N 360 -640 360 -540 {lab=cmfb_tail}
N 200 -540 360 -540 {lab=cmfb_tail}
N 360 -540 540 -540 {lab=cmfb_tail}
N 200 -540 200 -480 {lab=cmfb_tail}
N 540 -540 540 -480 {lab=cmfb_tail}
N 200 -450 230 -450 {lab=vdd}
N 500 -450 540 -450 {lab=vdd}
N 500 -500 500 -450 {lab=vdd}
N 100 -450 160 -450 {lab=vocm_set}
N 580 -450 640 -450 {lab=vocm_sense}
N 200 -420 200 -180 {lab=cmfb_ref}
N 540 -420 540 -180 {lab=vcmfb}
N 80 -150 160 -150 {lab=cmfb_ref}
N 80 -250 200 -250 {lab=cmfb_ref}
N 470 -150 500 -150 {lab=cmfb_ref}
N 320 -150 440 -150 {lab=cmfb_ref}
N 320 -180 320 -150 {lab=cmfb_ref}
N 200 -250 320 -250 {lab=cmfb_ref}
N 200 -120 200 -80 {lab=vss}
N 540 -120 540 -80 {lab=vss}
N 200 -80 540 -80 {lab=vss}
N 200 -150 230 -150 {lab=vss}
N 230 -150 230 -80 {lab=vss}
N 540 -150 570 -150 {lab=vss}
N 570 -150 570 -80 {lab=vss}
N 540 -80 570 -80 {lab=vss}
N 750 -490 830 -490 {lab=OTAout_p}
N 750 -410 810 -410 {lab=OTAout_n}
N 690 -490 690 -450 {lab=vocm_sense}
N 690 -450 690 -410 {lab=vocm_sense}
N 540 -180 700 -180 {lab=vcmfb}
N 700 -180 700 -140 {lab=vcmfb}
N 540 -80 700 -80 {lab=vss}
N 640 -450 690 -450 {lab=vocm_sense}
N 320 -250 320 -180 {lab=cmfb_ref}
N 80 -250 80 -150 {lab=cmfb_ref}
N 810 -410 830 -410 {lab=OTAout_n}
N 500 -720 500 -500 {lab=vdd}
N 390 -720 500 -720 {lab=vdd}
N 230 -450 500 -450 {lab=vdd}
N 440 -150 470 -150 {lab=cmfb_ref}
C {symbols/pfet_03v3.sym} 340 -670 0 0 {name=MTAIL
L=2u
W=1u
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
C {symbols/pfet_03v3.sym} 180 -450 0 0 {name=MP_REF
L=2u
W=1u
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
C {symbols/pfet_03v3.sym} 560 -450 0 1 {name=MP_SENSE
L=2u
W=1u
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
C {symbols/nfet_03v3.sym} 180 -150 0 0 {name=MN_DIODE
L=4u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 520 -150 0 0 {name=MN_OUT
L=4u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {res.sym} 720 -490 3 1 {name=RVP
value=20Meg
footprint=1206
device=resistor
m=1}
C {res.sym} 720 -410 3 1 {name=RVN
value=20Meg
footprint=1206
device=resistor
m=1}
C {capa.sym} 700 -110 0 0 {name=CCMFB
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 360 -720 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 180 -670 0 1 {name=p2 sig_type=std_logic lab=i_bias}
C {lab_wire.sym} 360 -560 0 0 {name=p3 sig_type=std_logic lab=cmfb_tail}
C {lab_wire.sym} 100 -450 0 1 {name=p4 sig_type=std_logic lab=vocm_set}
C {lab_wire.sym} 680 -450 0 0 {name=p5 sig_type=std_logic lab=vocm_sense}
C {lab_wire.sym} 320 -250 0 0 {name=p6 sig_type=std_logic lab=cmfb_ref}
C {lab_wire.sym} 650 -180 0 0 {name=p7 sig_type=std_logic lab=vcmfb}
C {lab_wire.sym} 380 -80 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} 830 -490 0 0 {name=p9 sig_type=std_logic lab=OTAout_p}
C {lab_wire.sym} 830 -410 0 0 {name=p10 sig_type=std_logic lab=OTAout_n}
C {iopin.sym} -80 -600 0 0 {name=pin_vdd lab=vdd}
C {iopin.sym} -80 -560 0 0 {name=pin_vss lab=vss}
C {iopin.sym} -80 -520 0 0 {name=pin_vout_p lab=OTAout_p}
C {iopin.sym} -80 -480 0 0 {name=pin_vout_n lab=OTAout_n}
C {iopin.sym} -80 -440 0 0 {name=pin_vocm_set lab=vocm_set}
C {iopin.sym} -80 -400 0 0 {name=pin_i_bias lab=i_bias}
C {iopin.sym} -80 -360 0 0 {name=pin_vcmfb lab=vcmfb}
