# UltimateKEYS - MSKLC (testing - conceptual)

UltimateKEYS for Microsoft Keyboard Layout Creator (MSKLC) Version 1.4.

This is a slimmed-down version (without Compose Key), since MSKLC does not support multiple keystrokes as a sequence for a dead key.

## Bug in MSKLC

During testing, I found a smaller bug with the MSKLC version, as the capital character 'É' did not work correctly.  
The 'É' did not work via AltGr+Shift+F, although it worked fine when enabling Caps Lock and entering AltGr+F (without Shift).  
I believe that this is a bug in MSKLC rather than in the UltimateKEYS port for MSKLC.

## Issue with the SPACE KEY

**_Note that this version does not compile with MSKLC, since the bullet (•) on 'AltGr + Shift + Space' causes this strange malfunctioning._**

**_I also took note that MSKLC 1.4 does not allow this and shows this error message :_**

**_Characters assigned to the SPACE KEY in any shift state must be spacing characters._**

In that case, I am limited to MSKLC's actual functionality, since it does not allow this change.

## Keyboard Layout Image (testing - conceptual)

![UltimateKEYS (MSKLC) - Keyboard Layout Image](UltimateKEYS%20(MSKLC)%20-%20Keyboard%20Layout%20Image.png)
