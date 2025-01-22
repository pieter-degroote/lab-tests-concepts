# UltimateKEYS - SW (Scroll Lock) Variant

This modification features the SW (or 'switched') variant with the Scroll Lock toggle.

This means that when Scroll Lock is on, the symbols !, @, #, $, %, ^, &, \*, (, ) are directly accessible and the numbers via Shift.

## 1. Change "SendMode" from "Input" to "Event"

**AutoHotkey v1.1&nbsp;: &nbsp;Change `SendMode Input` to&nbsp;:**

    SendMode Event  ; allows chaining of customized key combinations

**AutoHotkey v2&nbsp;: &nbsp;Change `SendMode "Input"` to&nbsp;:**

    SendMode "Event"  ; allows chaining of customized key combinations

## 2. Append the following code to the regular script(s)

**AutoHotkey v1.1&nbsp;:**

    ; Configuration :  Switch positions of symbols and digits via Scroll Lock
    
    ; Key :  1
    sc002::
      if GetKeyState("ScrollLock", "T")
        Send {u+0021}  ; (!) exclamation mark
      else
        Send {u+0031}  ; (1) digit 1
      return
    +sc002::
      if GetKeyState("ScrollLock", "T")
        Send {u+0031}  ; (1) digit 1
      else
        Send {u+0021}  ; (!) exclamation mark
      return
    
    ; Key :  2
    sc003::
      if GetKeyState("ScrollLock", "T")
        Send {u+0040}  ; (@) at sign
      else
        Send {u+0032}  ; (2) digit 2
      return
    +sc003::
      if GetKeyState("ScrollLock", "T")
        Send {u+0032}  ; (2) digit 2
      else
        Send {u+0040}  ; (@) at sign
      return
    
    ; Key :  3
    sc004::
      if GetKeyState("ScrollLock", "T")
        Send {u+0023}  ; (#) number sign
      else
        Send {u+0033}  ; (3) digit 3
      return
    +sc004::
      if GetKeyState("ScrollLock", "T")
        Send {u+0033}  ; (3) digit 3
      else
        Send {u+0023}  ; (#) number sign
      return
    
    ; Key :  4
    sc005::
      if GetKeyState("ScrollLock", "T")
        Send {u+0024}  ; ($) dollar sign
      else
        Send {u+0034}  ; (4) digit 4
      return
    +sc005::
      if GetKeyState("ScrollLock", "T")
        Send {u+0034}  ; (4) digit 4
      else
        Send {u+0024}  ; ($) dollar sign
      return
    
    ; Key :  5
    sc006::
      if GetKeyState("ScrollLock", "T")
        Send {u+0025}  ; (%) percent sign
      else
        Send {u+0035}  ; (5) digit 5
      return
    +sc006::
      if GetKeyState("ScrollLock", "T")
        Send {u+0035}  ; (5) digit 5
      else
        Send {u+0025}  ; (%) percent sign
      return
    
    ; Key :  6
    sc007::
      if GetKeyState("ScrollLock", "T")
        Send {u+005e}  ; (^) circumflex accent
      else
        Send {u+0036}  ; (6) digit 6
      return
    +sc007::
      if GetKeyState("ScrollLock", "T")
        Send {u+0036}  ; (6) digit 6
      else
        Send {u+005e}  ; (^) circumflex accent
      return
    
    ; Key :  7
    sc008::
      if GetKeyState("ScrollLock", "T")
        Send {u+0026}  ; (&) ampersand
      else
        Send {u+0037}  ; (7) digit 7
      return
    +sc008::
      if GetKeyState("ScrollLock", "T")
        Send {u+0037}  ; (7) digit 7
      else
        Send {u+0026}  ; (&) ampersand
      return
    
    ; Key :  8
    sc009::
      if GetKeyState("ScrollLock", "T")
        Send {u+002a}  ; (*) asterisk
      else
        Send {u+0038}  ; (8) digit 8
      return
    +sc009::
      if GetKeyState("ScrollLock", "T")
        Send {u+0038}  ; (8) digit 8
      else
        Send {u+002a}  ; (*) asterisk
      return
    
    ; Key :  9
    sc00A::
      if GetKeyState("ScrollLock", "T")
        Send {u+0028}  ; (() left parenthesis
      else
        Send {u+0039}  ; (9) digit 9
      return
    +sc00A::
      if GetKeyState("ScrollLock", "T")
        Send {u+0039}  ; (9) digit 9
      else
        Send {u+0028}  ; (() left parenthesis
      return
    
    ; Key :  0
    sc00B::
      if GetKeyState("ScrollLock", "T")
        Send {u+0029}  ; ()) right parenthesis
      else
        Send {u+0030}  ; (0) digit 0
      return
    +sc00B::
      if GetKeyState("ScrollLock", "T")
        Send {u+0030}  ; (0) digit 0
      else
        Send {u+0029}  ; ()) right parenthesis
      return

**AutoHotkey v2&nbsp;:**

    ; Configuration :  Switch positions of symbols and digits via Scroll Lock
    
    ; Key :  1
    sc002:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0021}"  ; (!) exclamation mark
      else
        Send "{u+0031}"  ; (1) digit 1
    }
    +sc002:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0031}"  ; (1) digit 1
      else
        Send "{u+0021}"  ; (!) exclamation mark
    }
    
    ; Key :  2
    sc003:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0040}"  ; (@) at sign
      else
        Send "{u+0032}"  ; (2) digit 2
    }
    +sc003:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0032}"  ; (2) digit 2
      else
        Send "{u+0040}"  ; (@) at sign
    }
    
    ; Key :  3
    sc004:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0023}"  ; (#) number sign
      else
        Send "{u+0033}"  ; (3) digit 3
    }
    +sc004:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0033}"  ; (3) digit 3
      else
        Send "{u+0023}"  ; (#) number sign
    }
    
    ; Key :  4
    sc005:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0024}"  ; ($) dollar sign
      else
        Send "{u+0034}"  ; (4) digit 4
    }
    +sc005:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0034}"  ; (4) digit 4
      else
        Send "{u+0024}"  ; ($) dollar sign
    }
    
    ; Key :  5
    sc006:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0025}"  ; (%) percent sign
      else
        Send "{u+0035}"  ; (5) digit 5
    }
    +sc006:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0035}"  ; (5) digit 5
      else
        Send "{u+0025}"  ; (%) percent sign
    }
    
    ; Key :  6
    sc007:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+005e}"  ; (^) circumflex accent
      else
        Send "{u+0036}"  ; (6) digit 6
    }
    +sc007:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0036}"  ; (6) digit 6
      else
        Send "{u+005e}"  ; (^) circumflex accent
    }
    
    ; Key :  7
    sc008:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0026}"  ; (&) ampersand
      else
        Send "{u+0037}"  ; (7) digit 7
    }
    +sc008:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0037}"  ; (7) digit 7
      else
        Send "{u+0026}"  ; (&) ampersand
    }
    
    ; Key :  8
    sc009:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+002a}"  ; (*) asterisk
      else
        Send "{u+0038}"  ; (8) digit 8
    }
    +sc009:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0038}"  ; (8) digit 8
      else
        Send "{u+002a}"  ; (*) asterisk
    }
    
    ; Key :  9
    sc00A:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0028}"  ; (() left parenthesis
      else
        Send "{u+0039}"  ; (9) digit 9
    }
    +sc00A:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0039}"  ; (9) digit 9
      else
        Send "{u+0028}"  ; (() left parenthesis
    }
    
    ; Key :  0
    sc00B:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0029}"  ; ()) right parenthesis
      else
        Send "{u+0030}"  ; (0) digit 0
    }
    +sc00B:: {
      if GetKeyState("ScrollLock", "T")
        Send "{u+0030}"  ; (0) digit 0
      else
        Send "{u+0029}"  ; ()) right parenthesis
    }
