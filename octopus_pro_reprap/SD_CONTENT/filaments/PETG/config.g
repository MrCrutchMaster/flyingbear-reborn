;M561 ; clear all autocalibration  settings
;G29 S1 P"PETG_70c.csv" ; load bed calibration for 70c

M572 D0 S0.07			; set PA to 0.07
M207 S0.4 F2400 R0.1	; set retract F - speed 2400 = 40mm/sec, S - positive length to retract, in mm