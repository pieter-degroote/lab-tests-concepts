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
        Send {!}  ; exclamation mark
      else
        Send 1    ; digit 1
      return
    +sc002::
      if GetKeyState("ScrollLock", "T")
        Send 1    ; digit 1
      else
        Send {!}  ; exclamation mark
      return
    
    ; Key :  2
    sc003::
      if GetKeyState("ScrollLock", "T")
        Send @  ; at sign
      else
        Send 2  ; digit 2
      return
    +sc003::
      if GetKeyState("ScrollLock", "T")
        Send 2  ; digit 2
      else
        Send @  ; at sign
      return
    
    ; Key :  3
    sc004::
      if GetKeyState("ScrollLock", "T")
        Send {#}  ; number sign
      else
        Send 3    ; digit 3
      return
    +sc004::
      if GetKeyState("ScrollLock", "T")
        Send 3    ; digit 3
      else
        Send {#}  ; number sign
      return
    
    ; Key :  4
    sc005::
      if GetKeyState("ScrollLock", "T")
        Send $  ; dollar sign
      else
        Send 4  ; digit 4
      return
    +sc005::
      if GetKeyState("ScrollLock", "T")
        Send 4  ; digit 4
      else
        Send $  ; dollar sign
      return
    
    ; Key :  5
    sc006::
      if GetKeyState("ScrollLock", "T")
        Send `%  ; percent sign
      else
        Send 5   ; digit 5
      return
    +sc006::
      if GetKeyState("ScrollLock", "T")
        Send 5   ; digit 5
      else
        Send `%  ; percent sign
      return
    
    ; Key :  6
    sc007::
      if GetKeyState("ScrollLock", "T")
        Send {^}  ; circumflex accent
      else
        Send 6    ; digit 6
      return
    +sc007::
      if GetKeyState("ScrollLock", "T")
        Send 6    ; digit 6
      else
        Send {^}  ; circumflex accent
      return
    
    ; Key :  7
    sc008::
      if GetKeyState("ScrollLock", "T")
        Send &  ; ampersand
      else
        Send 7  ; digit 7
      return
    +sc008::
      if GetKeyState("ScrollLock", "T")
        Send 7  ; digit 7
      else
        Send &  ; ampersand
      return
    
    ; Key :  8
    sc009::
      if GetKeyState("ScrollLock", "T")
        Send *  ; asterisk
      else
        Send 8  ; digit 8
      return
    +sc009::
      if GetKeyState("ScrollLock", "T")
        Send 8  ; digit 8
      else
        Send *  ; asterisk
      return
    
    ; Key :  9
    sc00A::
      if GetKeyState("ScrollLock", "T")
        Send (  ; left parenthesis
      else
        Send 9  ; digit 9
      return
    +sc00A::
      if GetKeyState("ScrollLock", "T")
        Send 9  ; digit 9
      else
        Send (  ; left parenthesis
      return
    
    ; Key :  0
    sc00B::
      if GetKeyState("ScrollLock", "T")
        Send )  ; right parenthesis
      else
        Send 0  ; digit 0
      return
    +sc00B::
      if GetKeyState("ScrollLock", "T")
        Send 0  ; digit 0
      else
        Send )  ; right parenthesis
      return

**AutoHotkey v2&nbsp;:**

    ; Configuration :  Switch positions of symbols and digits via Scroll Lock
    
    ; Key :  1
    sc002:: {
      if GetKeyState("ScrollLock", "T")
        Send "{!}"  ; exclamation mark
      else
        Send "1"    ; digit 1
    }
    +sc002:: {
      if GetKeyState("ScrollLock", "T")
        Send "1"    ; digit 1
      else
        Send "{!}"  ; exclamation mark
    }
    
    ; Key :  2
    sc003:: {
      if GetKeyState("ScrollLock", "T")
        Send "@"  ; at sign
      else
        Send "2"  ; digit 2
    }
    +sc003:: {
      if GetKeyState("ScrollLock", "T")
        Send "2"  ; digit 2
      else
        Send "@"  ; at sign
    }
    
    ; Key :  3
    sc004:: {
      if GetKeyState("ScrollLock", "T")
        Send "{#}"  ; number sign
      else
        Send "3"    ; digit 3
    }
    +sc004:: {
      if GetKeyState("ScrollLock", "T")
        Send "3"    ; digit 3
      else
        Send "{#}"  ; number sign
    }
    
    ; Key :  4
    sc005:: {
      if GetKeyState("ScrollLock", "T")
        Send "$"  ; dollar sign
      else
        Send "4"  ; digit 4
    }
    +sc005:: {
      if GetKeyState("ScrollLock", "T")
        Send "4"  ; digit 4
      else
        Send "$"  ; dollar sign
    }
    
    ; Key :  5
    sc006:: {
      if GetKeyState("ScrollLock", "T")
        Send "%"  ; percent sign
      else
        Send "5"  ; digit 5
    }
    +sc006:: {
      if GetKeyState("ScrollLock", "T")
        Send "5"  ; digit 5
      else
        Send "%"  ; percent sign
    }
    
    ; Key :  6
    sc007:: {
      if GetKeyState("ScrollLock", "T")
        Send "{^}"  ; circumflex accent
      else
        Send "6"    ; digit 6
    }
    +sc007:: {
      if GetKeyState("ScrollLock", "T")
        Send "6"    ; digit 6
      else
        Send "{^}"  ; circumflex accent
    }
    
    ; Key :  7
    sc008:: {
      if GetKeyState("ScrollLock", "T")
        Send "&"  ; ampersand
      else
        Send "7"  ; digit 7
    }
    +sc008:: {
      if GetKeyState("ScrollLock", "T")
        Send "7"  ; digit 7
      else
        Send "&"  ; ampersand
    }
    
    ; Key :  8
    sc009:: {
      if GetKeyState("ScrollLock", "T")
        Send "*"  ; asterisk
      else
        Send "8"  ; digit 8
    }
    +sc009:: {
      if GetKeyState("ScrollLock", "T")
        Send "8"  ; digit 8
      else
        Send "*"  ; asterisk
    }
    
    ; Key :  9
    sc00A:: {
      if GetKeyState("ScrollLock", "T")
        Send "("  ; left parenthesis
      else
        Send "9"  ; digit 9
    }
    +sc00A:: {
      if GetKeyState("ScrollLock", "T")
        Send "9"  ; digit 9
      else
        Send "("  ; left parenthesis
    }
    
    ; Key :  0
    sc00B:: {
      if GetKeyState("ScrollLock", "T")
        Send ")"  ; right parenthesis
      else
        Send "0"  ; digit 0
    }
    +sc00B:: {
      if GetKeyState("ScrollLock", "T")
        Send "0"  ; digit 0
      else
        Send ")"  ; right parenthesis
    }
