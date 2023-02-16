M117 Pre heat started  ;Put Cleaning message on screen 
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M106 S0 H-1; start with model the fan off
G28; Home Axis

; extra start code
;G1 Z5.0 F9000 			;move the head 5mm up for CYA clearance
;G92 E0 					;zero the extruded length
;M117 Cleaning...		;Put Cleaning message on screen
;G1 X40 Y40 F4000 		; move half way along the front edge
;G1 Z0.3 				; move nozzle close to bed
M190 S60				; heat bed to 60C and wait until reached
M109 S220 				; heat nozzle to 220C and wait until reached
G4 P2000 				; wait X seconds for nozzle length to stabilize
M117 Pre heat finished  ;Put Cleaning message on screen
G1 Z20 F12000;
G1 E15 F2400;
G4 P2000 				; wait X seconds to get filamet out

; 
G92 E0 ; reset extruder
M117 Printing...;Put printing message on LCD screen

