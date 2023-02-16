; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
M140 S0					; Set bed temp to 0C
M104 S0					; Set hotend temp to 0C

M220 S100				; Set speed factor back to 100% in case it was changed
M221 S100				; Set extrusion factor back to 100% in case it was changed

G91								; Relative positioning
G1 E-1 F300 					; retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+0.5 E-5 X-20 Y-20 F9000 	; move Z up a bit and retract filament even more
G90 							;absolute positioning
G28								; home axis

G4 S10					; Wait 10 sec to cool nozzle befor turn off model fan
M106 P1 S0 H-1			; Turn off model fan
M84						; Steppers off
