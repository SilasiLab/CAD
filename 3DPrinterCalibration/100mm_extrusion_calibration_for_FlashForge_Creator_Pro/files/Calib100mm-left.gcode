;- - - Extrude exactly 100mm of filament on the left extruder, for calibration purposes. - - -
;- - - by DrLex; 2017/07. Released under Creative Commons Attribution License. - - -
;- Divide 100mm by the actual length of consumed filament to obtain the extrusion multiplier. -
;
T0; start with the right extruder. We’ll switch to T1 after having moved the print head to provide enough space for the nozzle offset.
M73 P0; enable show build progress

M104 S220 T1; Set extruder temperature here

G21; set units to mm
G90; set positioning to absolute
M320; acceleration enabled for all commands that follow
G162 X Y F9000; home XY axes maximum
G92 X0 Y0 Z0 E0 B0; set (rough) reference point (also set E and B to make GPX happy)
M132 X Y Z A B; recall home offsets
G1 X135 Y75 F1500; do a slow small move to allow Sailfish to initialise XY acceleration
G1 X0 Y0 F9000; center the (left) nozzle
G1 F6000; try in vain to set speed for tool change
T1; switch to left extruder
G4 P0; flush pipeline
G1 X20 Y20 F6000; I still don't understand the tool change behavior. Apparently Sailfish tries to combine it with a travel move.
M6 T1; wait for extruder to heat up
M73 P1; pretend we're progressing
G92 E0; ensure this really is the zero extrusion coordinate

M300 S880 P300; beep
M71; Press OK to start   extruding 100mm     on left extruder
M70 P5; Extruding 100mm on  left extruder...
M73 P1; progress

G1 X20 Y0 F1000.00

G1 F500.00; extrude rather slowly to ensure we're not skipping. You may need to further decrease this for really flexible filaments.
G1 X0 Y0 E10.00
M73 P10; progress
G1 X0 Y20 E20.00
M73 P20; progress
G1 X20 Y20 E30.00
M73 P30; progress
G1 X20 Y0 E40.00
M73 P40; progress
G1 X0 Y0 E50.00
M73 P50; progress
G1 X0 Y20 E60.00
M73 P60; progress
G1 X20 Y20 E70.00
M73 P70; progress
G1 X20 Y0 E80.00
M73 P80; progress
G1 X0 Y0 E90.00
M73 P90; progress
G1 X0 Y20 E100.00

M73 P99; pretend we're progressing
; Make many stupid small moves to fill the pipeline and ensure Sailfish doesn't believe the print is already over when it hasn't even started.
G1 X1 Y20 F1000.00
G1 X1 Y19 F1000.00
G1 X2 Y19 F1000.00
G1 X2 Y18 F1000.00
G1 X3 Y18 F1000.00
G1 X3 Y17 F1000.00
G1 X4 Y17 F1000.00
G1 X4 Y16 F1000.00
G1 X5 Y16 F1000.00
G1 X5 Y15 F1000.00
G1 X6 Y15 F1000.00
G1 X6 Y14 F1000.00
G1 X7 Y14 F1000.00
G1 X7 Y13 F1000.00
G1 X8 Y13 F1000.00
G1 X8 Y12 F1000.00
G1 X9 Y12 F1000.00
G1 X9 Y11 F1000.00
G1 X10 Y11 F1000.00
G1 X10 Y10 F1000.00
G1 X11 Y10 F1000.00
G1 X11 Y9 F1000.00
G1 X12 Y9 F1000.00
G1 X12 Y8 F1000.00
G1 X13 Y8 F1000.00
G1 X13 Y7 F1000.00
G1 X14 Y7 F1000.00
G1 X14 Y6 F1000.00
G1 X15 Y6 F1000.00
G1 X15 Y5 F1000.00
G1 X16 Y5 F1000.00
G1 X16 Y4 F1000.00
G1 X17 Y4 F1000.00
G1 X17 Y3 F1000.00
G1 X18 Y3 F1000.00
G1 X18 Y2 F1000.00
G1 X19 Y2 F1000.00
G1 X19 Y1 F1000.00
G1 X20 Y1 F1000.00
G1 X20 Y0 F1000.00

M73 P100; end build progress
G4 P1000; show the fake 100% for one second
M109 S0 T0; set bed temperature to 0
M104 S0 T0; set 1st extruder temperature to 0
M104 S0 T1; set 2nd extruder temperature to 0
M18; disable all stepper motors
M70 P5; We <3 Calibrating   Things!
M72 P1; Play Ta-Da song
