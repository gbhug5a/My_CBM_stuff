)
  THIS IS NEW ACIA IRQ CODE FOR +4. M  THE IRQ RAM VECTOR AT ($0314) m  NORMALLY POINTS TO $CE0E.   THIS CODE DUPLICATES THAT CODE UP ž  TO THE ACIA, MODIFIES THAT, THEN ä#  JUMPS BACK INTO ROM.  THE CODE IS (  POKED INTO THE CASSETTE BUFFER AT 4-  $0333, BUT CAN BE PLACED ANYWHERE Y2  VISIBLE IN RAM WHEN KERNAL AND ~7  BASIC ROMS ARE BANKED IN.  SYS Ģ<  TO THE FIRST BYTE TO TAKE OVER ËA  $0314. NO NEED TO RE-ASSEMBLE FOR ņF  A DIFFERENT LOCATION - THE CODE K  DETECTS WHERE IT HAS BEEN PLACED. @P  SYS (FIRST BYTE + 26) TO RESTORE aU  THE $0314 VECTOR TO $CE0E. gZ  d CB ē 819:  CASSETTE BUFFER $0333 n  I ē 0 Ī 154 §x  A ī  CBŠI,A Ï  I ē 38 §  (CB Š 26) Õ  Þ   CB ûŠ Vē (Â(789)Ž256) Š Â(788) ī  "IRQ RAM VECTOR NOW";V :ū  120,32,85,252,186,202,189,0 YČ  1,24,105,36,141,20,3,232 vŌ  189,0,1,105,0,141,21,3 Ü  88,96,120,169,14,141,20,3 ·æ  169,206,141,21,3,88,96,173 Ôð  9,255,41,2,240,3,32,96 óú  206,44,216,7,16,98,173,1  253,141,212,7,41,16,240,73 4 32,98,234,169,16,44,212,7 U 240,27,169,15,44,216,7,240 u" 56,206,216,7,44,216,7,208 , 48,173,2,253,41,243,9,8 ī6 141,2,253,208,36,173,2,253 Ó@ 41,243,9,4,141,2,253,162 ōJ 131,142,216,7,169,4,44,3 T 253,208,5,162,3,202,208,253 5^ 173,212,7,13,1,253,141,212 Rh 7,173,212,7,41,8,240,8 sr 169,0,141,213,7,32,156,234 | 76,43,206   