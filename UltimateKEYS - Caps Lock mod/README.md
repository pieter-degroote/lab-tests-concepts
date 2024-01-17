# UltimateKEYS - Caps Lock modifications

These modifications define 'Caps Lock' either as a second 'Right Alt' (AltGr) or as a second 'Backspace' key (like Colemak).

The classic 'Caps Lock' behavior can be triggered (or toggled) by pressing both Shift keys together.

## 1. Only for Right Alt (AltGr) mapping&nbsp;: &nbsp;change "SendMode" from "Input" to "Event"

**AutoHotkey v1.1&nbsp;: &nbsp;Change `SendMode Input` to&nbsp;:**

    SendMode Event  ; allows chaining of customized key combinations

**AutoHotkey v2&nbsp;: &nbsp;Change `SendMode "Input"` to&nbsp;:**

    SendMode "Event"  ; allows chaining of customized key combinations

## 2. Append the following code to the script

Add one of the following code snippets to the end of the script (identical for AutoHotkey v1.1 and v2)&nbsp;:

**'Caps Lock' as 'Right Alt' - Overlay scripts for US QWERTY&nbsp;:**


    ; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'Right Alt' also to 'Caps Lock'

    LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
    RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

    CapsLock::RAlt  ; assigns 'Right Alt' also to 'Caps Lock'

**'Caps Lock' as 'AltGr' - Overlay scripts for United States-International (KBDUSX)&nbsp;:**

    ; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'AltGr' also to 'Caps Lock'

    LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
    RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

    CapsLock::vkA5  ; assigns 'AltGr' also to 'Caps Lock'

**'Caps Lock' as 'Backspace' - Overlay scripts for all base keyboard layouts&nbsp;:**

    ; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'Backspace' also to 'Caps Lock'

    LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
    RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

    CapsLock::Backspace  ; assigns 'Backspace' also to 'Caps Lock'
