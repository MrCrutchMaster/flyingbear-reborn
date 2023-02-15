;M561 ; clear all autocalibration  settings
;G29 S1 P"PLA_50c.csv" ; load bed calibration for 70c

M572 D0 S0.05			; set PA to 0.05
M207 S0.4 F1200 R0.1	; set retract F - speed 1200 = 20mm/sec, S - positive length to retract, in mm