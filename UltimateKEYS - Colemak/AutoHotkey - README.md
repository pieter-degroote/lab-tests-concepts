# UltimateKEYS - Colemak Variant

This modification features a Colemak variant of UltimateKEYS (for AutoHotkey v2/v1.1).

## 1. Change "SendMode" from "Input" to "Event"

**AutoHotkey v1.1&nbsp;: &nbsp;Change `SendMode Input` to&nbsp;:**

    SendMode Event  ; allows chaining of customized key combinations

**AutoHotkey v2&nbsp;: &nbsp;Change `SendMode "Input"` to&nbsp;:**

    SendMode "Event"  ; allows chaining of customized key combinations

## 2. Append the following code to the regular script(s)

**AutoHotkey v2/v1.1&nbsp;:**

    ; Configuration :  Switch letters to Colemak

    e::f
    r::p
    t::g
    y::j
    u::l
    i::u
    o::y
    p::;
    s::r
    d::s
    f::t
    g::d
    j::n
    k::e
    l::i
    `;::o
    n::k


    ; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'Backspace' also to 'Caps Lock'

    LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
    RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

    CapsLock::Backspace  ; assigns 'Backspace' also to 'Caps Lock'
