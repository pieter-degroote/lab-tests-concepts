# UltimateKEYS - KBDUSX Variant

These modifications allow the scripts to work with "United States-International" as the base layout, instead of the standard "US QWERTY".

## 1. Change "SendMode" from "Input" to "Event"

**AutoHotkey v1.1&nbsp;: &nbsp;Change `SendMode Input` to&nbsp;:**

    SendMode Event  ; allows chaining of customized key combinations

**AutoHotkey v2&nbsp;: &nbsp;Change `SendMode "Input"` to&nbsp;:**

    SendMode "Event"  ; allows chaining of customized key combinations

## 2. Append the following code to the regular script(s)

**AutoHotkey v1.1 - For Classic version&nbsp;:**

    ; Configuration :  No dead keys on standard layout
    
    $+6::Send {^}{space}  ; circumflex accent
    
    $`::Send ``{space}    ; grave accent
    $~::Send ~{space}     ; tilde
    
    $'::Send '{space}     ; apostrophe
    $"::Send `"{space}    ; quotation mark

**AutoHotkey v2 - For Classic version&nbsp;:**

    ; Configuration :  No dead keys on standard layout
    
    $+6::Send "{^} "  ; circumflex accent
    
    $`::Send "`` "    ; grave accent
    $~::Send "~ "     ; tilde
    
    $'::Send "' "     ; apostrophe
    $"::Send "`" "    ; quotation mark

**AutoHotkey v1.1 - For conversion to SW variant&nbsp;:**

    ; Configuration :  Switch positions of symbols and digits with Scroll Lock; no dead keys on standard layout
    
    $1::
      if GetKeyState("ScrollLock", "T")
        Send {!}  ; exclamation mark
      else
        Send 1    ; digit 1
      return
    $+1::
      if GetKeyState("ScrollLock", "T")
        Send 1    ; digit 1
      else
        Send {!}  ; exclamation mark
      return
    
    $2::
      if GetKeyState("ScrollLock", "T")
        Send @  ; at sign
      else
        Send 2  ; digit 2
      return
    $+2::
      if GetKeyState("ScrollLock", "T")
        Send 2  ; digit 2
      else
        Send @  ; at sign
      return
    
    $3::
      if GetKeyState("ScrollLock", "T")
        Send {#}  ; number sign
      else
        Send 3    ; digit 3
      return
    $+3::
      if GetKeyState("ScrollLock", "T")
        Send 3    ; digit 3
      else
        Send {#}  ; number sign
      return
    
    $4::
      if GetKeyState("ScrollLock", "T")
        Send $  ; dollar sign
      else
        Send 4  ; digit 4
      return
    $+4::
      if GetKeyState("ScrollLock", "T")
        Send 4  ; digit 4
      else
        Send $  ; dollar sign
      return
    
    $5::
      if GetKeyState("ScrollLock", "T")
        Send `%  ; percent sign
      else
        Send 5   ; digit 5
      return
    $+5::
      if GetKeyState("ScrollLock", "T")
        Send 5   ; digit 5
      else
        Send `%  ; percent sign
      return
    
    $6::
      if GetKeyState("ScrollLock", "T")
        Send {^}{space}  ; circumflex accent
      else
        Send 6           ; digit 6
      return
    $+6::
      if GetKeyState("ScrollLock", "T")
        Send 6           ; digit 6
      else
        Send {^}{space}  ; circumflex accent
      return
    
    $7::
      if GetKeyState("ScrollLock", "T")
        Send &  ; ampersand
      else
        Send 7  ; digit 7
      return
    $+7::
      if GetKeyState("ScrollLock", "T")
        Send 7  ; digit 7
      else
        Send &  ; ampersand
      return
    
    $8::
      if GetKeyState("ScrollLock", "T")
        Send *  ; asterisk
      else
        Send 8  ; digit 8
      return
    $+8::
      if GetKeyState("ScrollLock", "T")
        Send 8  ; digit 8
      else
        Send *  ; asterisk
      return
    
    $9::
      if GetKeyState("ScrollLock", "T")
        Send (  ; left parenthesis
      else
        Send 9  ; digit 9
      return
    $+9::
      if GetKeyState("ScrollLock", "T")
        Send 9  ; digit 9
      else
        Send (  ; left parenthesis
      return
    
    $0::
      if GetKeyState("ScrollLock", "T")
        Send )  ; right parenthesis
      else
        Send 0  ; digit 0
      return
    $+0::
      if GetKeyState("ScrollLock", "T")
        Send 0  ; digit 0
      else
        Send )  ; right parenthesis
      return
    
    $`::Send ``{space}  ; grave accent
    $~::Send ~{space}   ; tilde
    
    $'::Send '{space}   ; apostrophe
    $"::Send `"{space}  ; quotation mark

**AutoHotkey v2 - For conversion to SW variant&nbsp;:**

    ; Configuration :  Switch positions of symbols and digits with Scroll Lock; no dead keys on standard layout
    
    $1:: {
      if GetKeyState("ScrollLock", "T")
        Send "{!}"  ; exclamation mark
      else
        Send "1"    ; digit 1
    }
    $+1:: {
      if GetKeyState("ScrollLock", "T")
        Send "1"    ; digit 1
      else
        Send "{!}"  ; exclamation mark
    }
    
    $2:: {
      if GetKeyState("ScrollLock", "T")
        Send "@"  ; at sign
      else
        Send "2"  ; digit 2
    }
    $+2:: {
      if GetKeyState("ScrollLock", "T")
        Send "2"  ; digit 2
      else
        Send "@"  ; at sign
    }
    
    $3:: {
      if GetKeyState("ScrollLock", "T")
        Send "{#}"  ; number sign
      else
        Send "3"    ; digit 3
    }
    $+3:: {
      if GetKeyState("ScrollLock", "T")
        Send "3"    ; digit 3
      else
        Send "{#}"  ; number sign
    }
    
    $4:: {
      if GetKeyState("ScrollLock", "T")
        Send "$"  ; dollar sign
      else
        Send "4"  ; digit 4
    }
    $+4:: {
      if GetKeyState("ScrollLock", "T")
        Send "4"  ; digit 4
      else
        Send "$"  ; dollar sign
    }
    
    $5:: {
      if GetKeyState("ScrollLock", "T")
        Send "%"  ; percent sign
      else
        Send "5"  ; digit 5
    }
    $+5:: {
      if GetKeyState("ScrollLock", "T")
        Send "5"  ; digit 5
      else
        Send "%"  ; percent sign
    }
    
    $6:: {
      if GetKeyState("ScrollLock", "T")
        Send "{^} "  ; circumflex accent
      else
        Send "6"     ; digit 6
    }
    $+6:: {
      if GetKeyState("ScrollLock", "T")
        Send "6"     ; digit 6
      else
        Send "{^} "  ; circumflex accent
    }
    
    $7:: {
      if GetKeyState("ScrollLock", "T")
        Send "&"  ; ampersand
      else
        Send "7"  ; digit 7
    }
    $+7:: {
      if GetKeyState("ScrollLock", "T")
        Send "7"  ; digit 7
      else
        Send "&"  ; ampersand
    }
    
    $8:: {
      if GetKeyState("ScrollLock", "T")
        Send "*"  ; asterisk
      else
        Send "8"  ; digit 8
    }
    $+8:: {
      if GetKeyState("ScrollLock", "T")
        Send "8"  ; digit 8
      else
        Send "*"  ; asterisk
    }
    
    $9:: {
      if GetKeyState("ScrollLock", "T")
        Send "("  ; left parenthesis
      else
        Send "9"  ; digit 9
    }
    $+9:: {
      if GetKeyState("ScrollLock", "T")
        Send "9"  ; digit 9
      else
        Send "("  ; left parenthesis
    }
    
    $0:: {
      if GetKeyState("ScrollLock", "T")
        Send ")"  ; right parenthesis
      else
        Send "0"  ; digit 0
    }
    $+0:: {
      if GetKeyState("ScrollLock", "T")
        Send "0"  ; digit 0
      else
        Send ")"  ; right parenthesis
    }
    
    $`::Send "`` "    ; grave accent
    $~::Send "~ "     ; tilde
    
    $'::Send "' "     ; apostrophe
    $"::Send "`" "    ; quotation mark

## 3. Replace all occurrences of ">!" with "<^>!"

**Replace all occurrences of `>!` with `<^>!`.**
