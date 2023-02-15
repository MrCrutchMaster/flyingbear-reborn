; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
M140 S0					; Set bed temp to 0C
M104 S0					; Set hotend temp to 0C

M220 S100				; Set speed factor back to 100% in case it was changed
M221 S100				; Set extrusion factor back to 100% in case it was changed

G91						; Relative positioning
G1 E-5 F2400			; Retract filament 5mm
G1 Z20 F500				; raise nozzle 5mm from printed part
G28						; home all axis

G4 S10					; Wait 10 sec to cool nozzle befor turn off model fan
M106 P1 S0 H-1			; Turn off model fan
M84						; Steppers off

