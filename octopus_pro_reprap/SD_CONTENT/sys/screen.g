; Turn off backlight
M150 K0 X2 R0 U0 B0 S3 F0

; hardware reset of LCD
M42 P1 S0
G4 P500
M42 P1 S1

; Turn display on
M918 P2 C30 F1000000 E4