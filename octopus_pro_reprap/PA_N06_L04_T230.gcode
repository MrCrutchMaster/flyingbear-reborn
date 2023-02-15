; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: printer name
; Filament: filament name
; Created: Thu Feb 16 2023 02:08:29 GMT+0300 (Moscow Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.6 mm
; Nozzle Temperature = 230 °C
; Bed Temperature = 70 °C
; Retraction Distance = 0.5 mm
; Layer Height = 0.4 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 340 mm
; Bed Size Y = 300 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4800 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 2400 mm/min
; Unretract Speed = 2400 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.15
; Factor Stepping = 0.01
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 100 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = true
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes
T0 ; Switch to tool 0
G1 Z10 F100 ; Z raise
M104 S230 ; Set nozzle temperature (no wait)
M190 S70 ; Set bed temperature (wait)
M109 S230 ; Wait for nozzle temp
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X170 Y150 F7200 ; move to start
G1 Z0.4 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X121 Y100 F7200 ; move to start
G1 X121 Y200 E29.9341 F1800 ; print line
G1 X122.08 Y200 F7200 ; move to start
G1 X122.08 Y100 E29.9341 F1800 ; print line
G10 ; retract
;
; print anchor frame
;
G1 X131 Y97 F7200 ; move to start
G11 ; un-retract
G1 X131 Y178 E10.6685 F1200 ; print line
G1 X131.72 Y178 F7200 ; move to start
G1 X131.72 Y97 E10.6685 F1200 ; print line
G10 ; retract
G1 X211 Y97 F7200 ; move to start
G11 ; un-retract
G1 X211 Y178 E10.6685 F1200 ; print line
G1 X210.28 Y178 F7200 ; move to start
G1 X210.28 Y97 E10.6685 F1200 ; print line
G10 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X131 Y100 F7200 ; move to start
M572 D0 S0 ; set K-factor
M117 K0 ; 
G11 ; un-retract
G1 X151 Y100 E2.3947 F1200 ; print line
G1 X191 Y100 E4.7895 F4800 ; print line
G1 X211 Y100 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y105 F7200 ; move to start
M572 D0 S0.01 ; set K-factor
M117 K0.01 ; 
G11 ; un-retract
G1 X151 Y105 E2.3947 F1200 ; print line
G1 X191 Y105 E4.7895 F4800 ; print line
G1 X211 Y105 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y110 F7200 ; move to start
M572 D0 S0.02 ; set K-factor
M117 K0.02 ; 
G11 ; un-retract
G1 X151 Y110 E2.3947 F1200 ; print line
G1 X191 Y110 E4.7895 F4800 ; print line
G1 X211 Y110 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y115 F7200 ; move to start
M572 D0 S0.03 ; set K-factor
M117 K0.03 ; 
G11 ; un-retract
G1 X151 Y115 E2.3947 F1200 ; print line
G1 X191 Y115 E4.7895 F4800 ; print line
G1 X211 Y115 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y120 F7200 ; move to start
M572 D0 S0.04 ; set K-factor
M117 K0.04 ; 
G11 ; un-retract
G1 X151 Y120 E2.3947 F1200 ; print line
G1 X191 Y120 E4.7895 F4800 ; print line
G1 X211 Y120 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y125 F7200 ; move to start
M572 D0 S0.05 ; set K-factor
M117 K0.05 ; 
G11 ; un-retract
G1 X151 Y125 E2.3947 F1200 ; print line
G1 X191 Y125 E4.7895 F4800 ; print line
G1 X211 Y125 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y130 F7200 ; move to start
M572 D0 S0.06 ; set K-factor
M117 K0.06 ; 
G11 ; un-retract
G1 X151 Y130 E2.3947 F1200 ; print line
G1 X191 Y130 E4.7895 F4800 ; print line
G1 X211 Y130 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y135 F7200 ; move to start
M572 D0 S0.07 ; set K-factor
M117 K0.07 ; 
G11 ; un-retract
G1 X151 Y135 E2.3947 F1200 ; print line
G1 X191 Y135 E4.7895 F4800 ; print line
G1 X211 Y135 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y140 F7200 ; move to start
M572 D0 S0.08 ; set K-factor
M117 K0.08 ; 
G11 ; un-retract
G1 X151 Y140 E2.3947 F1200 ; print line
G1 X191 Y140 E4.7895 F4800 ; print line
G1 X211 Y140 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y145 F7200 ; move to start
M572 D0 S0.09 ; set K-factor
M117 K0.09 ; 
G11 ; un-retract
G1 X151 Y145 E2.3947 F1200 ; print line
G1 X191 Y145 E4.7895 F4800 ; print line
G1 X211 Y145 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y150 F7200 ; move to start
M572 D0 S0.1 ; set K-factor
M117 K0.1 ; 
G11 ; un-retract
G1 X151 Y150 E2.3947 F1200 ; print line
G1 X191 Y150 E4.7895 F4800 ; print line
G1 X211 Y150 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y155 F7200 ; move to start
M572 D0 S0.11 ; set K-factor
M117 K0.11 ; 
G11 ; un-retract
G1 X151 Y155 E2.3947 F1200 ; print line
G1 X191 Y155 E4.7895 F4800 ; print line
G1 X211 Y155 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y160 F7200 ; move to start
M572 D0 S0.12 ; set K-factor
M117 K0.12 ; 
G11 ; un-retract
G1 X151 Y160 E2.3947 F1200 ; print line
G1 X191 Y160 E4.7895 F4800 ; print line
G1 X211 Y160 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y165 F7200 ; move to start
M572 D0 S0.13 ; set K-factor
M117 K0.13 ; 
G11 ; un-retract
G1 X151 Y165 E2.3947 F1200 ; print line
G1 X191 Y165 E4.7895 F4800 ; print line
G1 X211 Y165 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y170 F7200 ; move to start
M572 D0 S0.14 ; set K-factor
M117 K0.14 ; 
G11 ; un-retract
G1 X151 Y170 E2.3947 F1200 ; print line
G1 X191 Y170 E4.7895 F4800 ; print line
G1 X211 Y170 E2.3947 F1200 ; print line
G10 ; retract
G1 X131 Y175 F7200 ; move to start
M572 D0 S0.15 ; set K-factor
M117 K0.15 ; 
G11 ; un-retract
G1 X151 Y175 E2.3947 F1200 ; print line
G1 X191 Y175 E4.7895 F4800 ; print line
G1 X211 Y175 E2.3947 F1200 ; print line
G10 ; retract
;
; Mark the test area for reference
M117 K0
M572 D0 S0 ; Set K-factor 0
G1 X151 Y180 F7200 ; move to start
G11 ; un-retract
G1 X151 Y200 E2.3947 F1200 ; print line
G10 ; retract
G1 X191 Y180 F7200 ; move to start
G11 ; un-retract
G1 X191 Y200 E2.3947 F1200 ; print line
G10 ; retract
G1 Z0.5 F1200 ; zHop
;
; print K-values
;
G1 X213 Y98 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y98 E0.2395 F1200 ; 0
G1 X215 Y100 E0.2395 F1200 ; 0
G1 X215 Y102 E0.2395 F1200 ; 0
G1 X213 Y102 E0.2395 F1200 ; 0
G1 X213 Y100 E0.2395 F1200 ; 0
G1 X213 Y98 E0.2395 F1200 ; 0
G10 ; retract
G1 Z0.5 F1200 ; zHop
G1 X213 Y108 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y108 E0.2395 F1200 ; 0
G1 X215 Y110 E0.2395 F1200 ; 0
G1 X215 Y112 E0.2395 F1200 ; 0
G1 X213 Y112 E0.2395 F1200 ; 0
G1 X213 Y110 E0.2395 F1200 ; 0
G1 X213 Y108 E0.2395 F1200 ; 0
G10 ; retract
G1 X216 Y108 F7200 ; move to start
G11 ; un-retract
G1 X216 Y108.4 E0.0479 F1200 ; dot
G10 ; retract
G1 X217 Y108 F7200 ; move to start
G11 ; un-retract
G1 X219 Y108 E0.2395 F1200 ; 0
G1 X219 Y110 E0.2395 F1200 ; 0
G1 X219 Y112 E0.2395 F1200 ; 0
G1 X217 Y112 E0.2395 F1200 ; 0
G1 X217 Y110 E0.2395 F1200 ; 0
G1 X217 Y108 E0.2395 F1200 ; 0
G10 ; retract
G1 X220 Y108 F7200 ; move to start
G11 ; un-retract
G1 X220 Y110 F7200 ; move to start
G1 X220 Y112 F7200 ; move to start
G1 X222 Y112 E0.2395 F1200 ; 2
G1 X222 Y110 E0.2395 F1200 ; 2
G1 X220 Y110 E0.2395 F1200 ; 2
G1 X220 Y108 E0.2395 F1200 ; 2
G1 X222 Y108 E0.2395 F1200 ; 2
G10 ; retract
G1 Z0.5 F1200 ; zHop
G1 X213 Y118 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y118 E0.2395 F1200 ; 0
G1 X215 Y120 E0.2395 F1200 ; 0
G1 X215 Y122 E0.2395 F1200 ; 0
G1 X213 Y122 E0.2395 F1200 ; 0
G1 X213 Y120 E0.2395 F1200 ; 0
G1 X213 Y118 E0.2395 F1200 ; 0
G10 ; retract
G1 X216 Y118 F7200 ; move to start
G11 ; un-retract
G1 X216 Y118.4 E0.0479 F1200 ; dot
G10 ; retract
G1 X217 Y118 F7200 ; move to start
G11 ; un-retract
G1 X219 Y118 E0.2395 F1200 ; 0
G1 X219 Y120 E0.2395 F1200 ; 0
G1 X219 Y122 E0.2395 F1200 ; 0
G1 X217 Y122 E0.2395 F1200 ; 0
G1 X217 Y120 E0.2395 F1200 ; 0
G1 X217 Y118 E0.2395 F1200 ; 0
G10 ; retract
G1 X220 Y118 F7200 ; move to start
G11 ; un-retract
G1 X220 Y120 F7200 ; move to start
G1 X220 Y122 F7200 ; move to start
G1 X220 Y120 E0.2395 F1200 ; 4
G1 X222 Y120 E0.2395 F1200 ; 4
G1 X222 Y122 F7200 ; move to start
G1 X222 Y120 E0.2395 F1200 ; 4
G1 X222 Y118 E0.2395 F1200 ; 4
G10 ; retract
G1 Z0.5 F1200 ; zHop
G1 X213 Y128 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y128 E0.2395 F1200 ; 0
G1 X215 Y130 E0.2395 F1200 ; 0
G1 X215 Y132 E0.2395 F1200 ; 0
G1 X213 Y132 E0.2395 F1200 ; 0
G1 X213 Y130 E0.2395 F1200 ; 0
G1 X213 Y128 E0.2395 F1200 ; 0
G10 ; retract
G1 X216 Y128 F7200 ; move to start
G11 ; un-retract
G1 X216 Y128.4 E0.0479 F1200 ; dot
G10 ; retract
G1 X217 Y128 F7200 ; move to start
G11 ; un-retract
G1 X219 Y128 E0.2395 F1200 ; 0
G1 X219 Y130 E0.2395 F1200 ; 0
G1 X219 Y132 E0.2395 F1200 ; 0
G1 X217 Y132 E0.2395 F1200 ; 0
G1 X217 Y130 E0.2395 F1200 ; 0
G1 X217 Y128 E0.2395 F1200 ; 0
G10 ; retract
G1 X220 Y128 F7200 ; move to start
G11 ; un-retract
G1 X220 Y130 F7200 ; move to start
G1 X222 Y130 E0.2395 F1200 ; 6
G1 X222 Y128 E0.2395 F1200 ; 6
G1 X220 Y128 E0.2395 F1200 ; 6
G1 X220 Y130 E0.2395 F1200 ; 6
G1 X220 Y132 E0.2395 F1200 ; 6
G1 X222 Y132 E0.2395 F1200 ; 6
G10 ; retract
G1 Z0.5 F1200 ; zHop
G1 X213 Y138 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y138 E0.2395 F1200 ; 0
G1 X215 Y140 E0.2395 F1200 ; 0
G1 X215 Y142 E0.2395 F1200 ; 0
G1 X213 Y142 E0.2395 F1200 ; 0
G1 X213 Y140 E0.2395 F1200 ; 0
G1 X213 Y138 E0.2395 F1200 ; 0
G10 ; retract
G1 X216 Y138 F7200 ; move to start
G11 ; un-retract
G1 X216 Y138.4 E0.0479 F1200 ; dot
G10 ; retract
G1 X217 Y138 F7200 ; move to start
G11 ; un-retract
G1 X219 Y138 E0.2395 F1200 ; 0
G1 X219 Y140 E0.2395 F1200 ; 0
G1 X219 Y142 E0.2395 F1200 ; 0
G1 X217 Y142 E0.2395 F1200 ; 0
G1 X217 Y140 E0.2395 F1200 ; 0
G1 X217 Y138 E0.2395 F1200 ; 0
G10 ; retract
G1 X220 Y138 F7200 ; move to start
G11 ; un-retract
G1 X220 Y140 F7200 ; move to start
G1 X222 Y140 E0.2395 F1200 ; 8
G1 X222 Y138 E0.2395 F1200 ; 8
G1 X220 Y138 E0.2395 F1200 ; 8
G1 X220 Y140 E0.2395 F1200 ; 8
G1 X220 Y142 E0.2395 F1200 ; 8
G1 X222 Y142 E0.2395 F1200 ; 8
G1 X222 Y140 E0.2395 F1200 ; 8
G10 ; retract
G1 Z0.5 F1200 ; zHop
G1 X213 Y148 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y148 E0.2395 F1200 ; 0
G1 X215 Y150 E0.2395 F1200 ; 0
G1 X215 Y152 E0.2395 F1200 ; 0
G1 X213 Y152 E0.2395 F1200 ; 0
G1 X213 Y150 E0.2395 F1200 ; 0
G1 X213 Y148 E0.2395 F1200 ; 0
G10 ; retract
G1 X216 Y148 F7200 ; move to start
G11 ; un-retract
G1 X216 Y148.4 E0.0479 F1200 ; dot
G10 ; retract
G1 X217 Y148 F7200 ; move to start
G11 ; un-retract
G1 X217 Y150 E0.2395 F1200 ; 1
G1 X217 Y152 E0.2395 F1200 ; 1
G10 ; retract
G1 Z0.5 F1200 ; zHop
G1 X213 Y158 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y158 E0.2395 F1200 ; 0
G1 X215 Y160 E0.2395 F1200 ; 0
G1 X215 Y162 E0.2395 F1200 ; 0
G1 X213 Y162 E0.2395 F1200 ; 0
G1 X213 Y160 E0.2395 F1200 ; 0
G1 X213 Y158 E0.2395 F1200 ; 0
G10 ; retract
G1 X216 Y158 F7200 ; move to start
G11 ; un-retract
G1 X216 Y158.4 E0.0479 F1200 ; dot
G10 ; retract
G1 X217 Y158 F7200 ; move to start
G11 ; un-retract
G1 X217 Y160 E0.2395 F1200 ; 1
G1 X217 Y162 E0.2395 F1200 ; 1
G10 ; retract
G1 X218 Y158 F7200 ; move to start
G11 ; un-retract
G1 X218 Y160 F7200 ; move to start
G1 X218 Y162 F7200 ; move to start
G1 X220 Y162 E0.2395 F1200 ; 2
G1 X220 Y160 E0.2395 F1200 ; 2
G1 X218 Y160 E0.2395 F1200 ; 2
G1 X218 Y158 E0.2395 F1200 ; 2
G1 X220 Y158 E0.2395 F1200 ; 2
G10 ; retract
G1 Z0.5 F1200 ; zHop
G1 X213 Y168 F7200 ; move to start
G1 Z0.4 F1200 ; zHop
G11 ; un-retract
G1 X215 Y168 E0.2395 F1200 ; 0
G1 X215 Y170 E0.2395 F1200 ; 0
G1 X215 Y172 E0.2395 F1200 ; 0
G1 X213 Y172 E0.2395 F1200 ; 0
G1 X213 Y170 E0.2395 F1200 ; 0
G1 X213 Y168 E0.2395 F1200 ; 0
G10 ; retract
G1 X216 Y168 F7200 ; move to start
G11 ; un-retract
G1 X216 Y168.4 E0.0479 F1200 ; dot
G10 ; retract
G1 X217 Y168 F7200 ; move to start
G11 ; un-retract
G1 X217 Y170 E0.2395 F1200 ; 1
G1 X217 Y172 E0.2395 F1200 ; 1
G10 ; retract
G1 X218 Y168 F7200 ; move to start
G11 ; un-retract
G1 X218 Y170 F7200 ; move to start
G1 X218 Y172 F7200 ; move to start
G1 X218 Y170 E0.2395 F1200 ; 4
G1 X220 Y170 E0.2395 F1200 ; 4
G1 X220 Y172 F7200 ; move to start
G1 X220 Y170 E0.2395 F1200 ; 4
G1 X220 Y168 E0.2395 F1200 ; 4
G10 ; retract
G1 Z0.5 F1200 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X340 Y300 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;