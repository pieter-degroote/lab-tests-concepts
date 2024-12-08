# UltimateKEYS - Caps Lock modifications

These modifications define 'Caps Lock' either as a second 'AltGr' (Right Alt) or as a second 'Backspace' key (like Colemak).

The classic 'Caps Lock' behavior can be triggered (or toggled) by pressing both Shift keys together.

## Append the following code to the script

Add one of the following code snippets to the end of the script (identical for AutoHotkey v2 and v1.1)&nbsp;:

**'Caps Lock' as 'AltGr' (Right Alt)&nbsp;:**

    ; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'AltGr' (Right Alt) also to 'Caps Lock'

    LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
    RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

    CapsLock::vkA5  ; assigns 'AltGr' (Right Alt) also to 'Caps Lock'

**'Caps Lock' as 'Backspace'&nbsp;:**

    ; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'Backspace' also to 'Caps Lock'

    LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
    RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

    CapsLock::Backspace  ; assigns 'Backspace' also to 'Caps Lock'
