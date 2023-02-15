M117 START.G;	Put printing message on LCD screen

;Play a tone
M300 S1250 P200
G4 P201
M300 S1500 P200
G4 P201
M300 S1100 P200
G4 P201
M300 S950 P300
G4 P400
M300 S1175 P300
G4 S1

; 
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
G4 P5000 				; wait 5 seconds for nozzle length to stabilize
M117 Pre heat finished  ;Put Cleaning message on screen
G1 E10;
;G1 Z10 F12000 E10 		; move bed 10 mm down, fast, while extruding 10mm

; 
G92 E0 ; reset extruder
M117 Printing...;Put printing message on LCD screen

