#requires AutoHotkey v2

; Belgian AZERTY (Shift Lock for letters and digits) (for AutoHotkey v2).ahk - 2022-02-01

; Website :  https://pieter-degroote.github.io/UltimateKEYS/

; GitHub :   https://github.com/pieter-degroote/UltimateKEYS-testing

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout (on Windows) :  US QWERTY



KeyHistory 0      ; disables the key history (for privacy and security)
ListLines False   ; omits recently executed lines from history (for privacy and security)

SendMode "Event"  ; allows chaining of customized key combinations

global gEndKeys := "{bs}{del}{esc}{home}{end}"  ; ends dead key input on specific keys


; Dead Key :  Circumflex Accent

global dkCircumflex := Map()
dkCircumflex["a"] := "{U+00E2}"  ; (â) a with circumflex
dkCircumflex["A"] := "{U+00C2}"  ; (Â) A with circumflex
dkCircumflex["c"] := "{U+0109}"  ; (ĉ) c with circumflex
dkCircumflex["C"] := "{U+0108}"  ; (Ĉ) C with circumflex
dkCircumflex["e"] := "{U+00EA}"  ; (ê) e with circumflex
dkCircumflex["E"] := "{U+00CA}"  ; (Ê) E with circumflex
dkCircumflex["g"] := "{U+011D}"  ; (ĝ) g with circumflex
dkCircumflex["G"] := "{U+011C}"  ; (Ĝ) G with circumflex
dkCircumflex["h"] := "{U+0125}"  ; (ĥ) h with circumflex
dkCircumflex["H"] := "{U+0124}"  ; (Ĥ) H with circumflex
dkCircumflex["i"] := "{U+00EE}"  ; (î) i with circumflex
dkCircumflex["I"] := "{U+00CE}"  ; (Î) I with circumflex
dkCircumflex["j"] := "{U+0135}"  ; (ĵ) j with circumflex
dkCircumflex["J"] := "{U+0134}"  ; (Ĵ) J with circumflex
dkCircumflex["o"] := "{U+00F4}"  ; (ô) o with circumflex
dkCircumflex["O"] := "{U+00D4}"  ; (Ô) O with circumflex
dkCircumflex["s"] := "{U+015D}"  ; (ŝ) s with circumflex
dkCircumflex["S"] := "{U+015C}"  ; (Ŝ) S with circumflex
dkCircumflex["u"] := "{U+00FB}"  ; (û) u with circumflex
dkCircumflex["U"] := "{U+00DB}"  ; (Û) U with circumflex
dkCircumflex["w"] := "{U+0175}"  ; (ŵ) w with circumflex
dkCircumflex["W"] := "{U+0174}"  ; (Ŵ) W with circumflex
dkCircumflex["y"] := "{U+0177}"  ; (ŷ) y with circumflex
dkCircumflex["Y"] := "{U+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex["z"] := "{U+1E91}"  ; (ẑ) z with circumflex
dkCircumflex["Z"] := "{U+1E90}"  ; (Ẑ) Z with circumflex
dkCircumflex[" "] := "{^}"       ;     circumflex accent


; Dead Key :  Acute Accent

global dkAcuteAccent := Map()
dkAcuteAccent["a"] := "{U+00E1}"  ; (á) a with acute
dkAcuteAccent["A"] := "{U+00C1}"  ; (Á) A with acute
dkAcuteAccent["c"] := "{U+0107}"  ; (ć) c with acute
dkAcuteAccent["C"] := "{U+0106}"  ; (Ć) C with acute
dkAcuteAccent["e"] := "{U+00E9}"  ; (é) e with acute
dkAcuteAccent["E"] := "{U+00C9}"  ; (É) E with acute
dkAcuteAccent["f"] := "{U+0192}"  ; (ƒ) f with hook
dkAcuteAccent["F"] := "{U+0191}"  ; (Ƒ) F with hook
dkAcuteAccent["g"] := "{U+01F5}"  ; (ǵ) g with acute
dkAcuteAccent["G"] := "{U+01F4}"  ; (Ǵ) G with acute
dkAcuteAccent["i"] := "{U+00ED}"  ; (í) i with acute
dkAcuteAccent["I"] := "{U+00CD}"  ; (Í) I with acute
dkAcuteAccent["j"] := "{U+0133}"  ; (ĳ) ligature ij
dkAcuteAccent["J"] := "{U+0132}"  ; (Ĳ) ligature IJ
dkAcuteAccent["k"] := "{U+1E31}"  ; (ḱ) k with acute
dkAcuteAccent["K"] := "{U+1E30}"  ; (Ḱ) K with acute
dkAcuteAccent["l"] := "{U+013A}"  ; (ĺ) l with acute
dkAcuteAccent["L"] := "{U+0139}"  ; (Ĺ) L with acute
dkAcuteAccent["m"] := "{U+1E3F}"  ; (ḿ) m with acute
dkAcuteAccent["M"] := "{U+1E3E}"  ; (Ḿ) M with acute
dkAcuteAccent["n"] := "{U+0144}"  ; (ń) n with acute
dkAcuteAccent["N"] := "{U+0143}"  ; (Ń) N with acute
dkAcuteAccent["o"] := "{U+00F3}"  ; (ó) o with acute
dkAcuteAccent["O"] := "{U+00D3}"  ; (Ó) O with acute
dkAcuteAccent["p"] := "{U+1E55}"  ; (ṕ) p with acute
dkAcuteAccent["P"] := "{U+1E54}"  ; (Ṕ) P with acute
dkAcuteAccent["r"] := "{U+0155}"  ; (ŕ) r with acute
dkAcuteAccent["R"] := "{U+0154}"  ; (Ŕ) R with acute
dkAcuteAccent["s"] := "{U+015B}"  ; (ś) s with acute
dkAcuteAccent["S"] := "{U+015A}"  ; (Ś) S with acute
dkAcuteAccent["u"] := "{U+00FA}"  ; (ú) u with acute
dkAcuteAccent["U"] := "{U+00DA}"  ; (Ú) U with acute
dkAcuteAccent["w"] := "{U+1E83}"  ; (ẃ) w with acute
dkAcuteAccent["W"] := "{U+1E82}"  ; (Ẃ) W with acute
dkAcuteAccent["y"] := "{U+00FD}"  ; (ý) y with acute
dkAcuteAccent["Y"] := "{U+00DD}"  ; (Ý) Y with acute
dkAcuteAccent["z"] := "{U+017A}"  ; (ź) z with acute
dkAcuteAccent["Z"] := "{U+0179}"  ; (Ź) Z with acute
dkAcuteAccent[" "] := "{U+00B4}"  ; (´) acute accent


; Dead Key :  Diaeresis

global dkDiaeresis := Map()
dkDiaeresis["a"] := "{U+00E4}"  ; (ä) a with diaeresis
dkDiaeresis["A"] := "{U+00C4}"  ; (Ä) A with diaeresis
dkDiaeresis["e"] := "{U+00EB}"  ; (ë) e with diaeresis
dkDiaeresis["E"] := "{U+00CB}"  ; (Ë) E with diaeresis
dkDiaeresis["h"] := "{U+1E27}"  ; (ḧ) h with diaeresis
dkDiaeresis["H"] := "{U+1E26}"  ; (Ḧ) H with diaeresis
dkDiaeresis["i"] := "{U+00EF}"  ; (ï) i with diaeresis
dkDiaeresis["I"] := "{U+00CF}"  ; (Ï) I with diaeresis
dkDiaeresis["o"] := "{U+00F6}"  ; (ö) o with diaeresis
dkDiaeresis["O"] := "{U+00D6}"  ; (Ö) O with diaeresis
dkDiaeresis["t"] := "{U+1E97}"  ; (ẗ) t with diaeresis
dkDiaeresis["u"] := "{U+00FC}"  ; (ü) u with diaeresis
dkDiaeresis["U"] := "{U+00DC}"  ; (Ü) U with diaeresis
dkDiaeresis["w"] := "{U+1E85}"  ; (ẅ) w with diaeresis
dkDiaeresis["W"] := "{U+1E84}"  ; (Ẅ) W with diaeresis
dkDiaeresis["x"] := "{U+1E8D}"  ; (ẍ) x with diaeresis
dkDiaeresis["X"] := "{U+1E8C}"  ; (Ẍ) X with diaeresis
dkDiaeresis["y"] := "{U+00FF}"  ; (ÿ) y with diaeresis
dkDiaeresis["Y"] := "{U+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis[" "] := "{U+00A8}"  ; (¨) diaeresis


; Dead Key :  Grave Accent

global dkGraveAccent := Map()
dkGraveAccent["a"] := "{U+00E0}"  ; (à) a with grave
dkGraveAccent["A"] := "{U+00C0}"  ; (À) A with grave
dkGraveAccent["e"] := "{U+00E8}"  ; (è) e with grave
dkGraveAccent["E"] := "{U+00C8}"  ; (È) E with grave
dkGraveAccent["i"] := "{U+00EC}"  ; (ì) i with grave
dkGraveAccent["I"] := "{U+00CC}"  ; (Ì) I with grave
dkGraveAccent["n"] := "{U+01F9}"  ; (ǹ) n with grave
dkGraveAccent["N"] := "{U+01F8}"  ; (Ǹ) N with grave
dkGraveAccent["o"] := "{U+00F2}"  ; (ò) o with grave
dkGraveAccent["O"] := "{U+00D2}"  ; (Ò) O with grave
dkGraveAccent["u"] := "{U+00F9}"  ; (ù) u with grave
dkGraveAccent["U"] := "{U+00D9}"  ; (Ù) U with grave
dkGraveAccent["w"] := "{U+1E81}"  ; (ẁ) w with grave
dkGraveAccent["W"] := "{U+1E80}"  ; (Ẁ) W with grave
dkGraveAccent["y"] := "{U+1EF3}"  ; (ỳ) y with grave
dkGraveAccent["Y"] := "{U+1EF2}"  ; (Ỳ) Y with grave
dkGraveAccent[" "] := "``"        ;     grave accent


; Dead Key :  Tilde

global dkTilde := Map()
dkTilde["a"] := "{U+00E3}"  ; (ã) a with tilde
dkTilde["A"] := "{U+00C3}"  ; (Ã) A with tilde
dkTilde["e"] := "{U+1EBD}"  ; (ẽ) e with tilde
dkTilde["E"] := "{U+1EBC}"  ; (Ẽ) E with tilde
dkTilde["i"] := "{U+0129}"  ; (ĩ) i with tilde
dkTilde["I"] := "{U+0128}"  ; (Ĩ) I with tilde
dkTilde["l"] := "{U+026B}"  ; (ɫ) l with middle tilde
dkTilde["L"] := "{U+2C62}"  ; (Ɫ) L with middle tilde
dkTilde["n"] := "{U+00F1}"  ; (ñ) n with tilde
dkTilde["N"] := "{U+00D1}"  ; (Ñ) N with tilde
dkTilde["o"] := "{U+00F5}"  ; (õ) o with tilde
dkTilde["O"] := "{U+00D5}"  ; (Õ) O with tilde
dkTilde["u"] := "{U+0169}"  ; (ũ) u with tilde
dkTilde["U"] := "{U+0168}"  ; (Ũ) U with tilde
dkTilde["v"] := "{U+1E7D}"  ; (ṽ) v with tilde
dkTilde["V"] := "{U+1E7C}"  ; (Ṽ) V with tilde
dkTilde["y"] := "{U+1EF9}"  ; (ỹ) y with tilde
dkTilde["Y"] := "{U+1EF8}"  ; (Ỹ) Y with tilde
dkTilde[" "] := "~"         ;     tilde


; Configuration :  Convert US QWERTY to Belgian AZERTY

q::a   ; assign 'A' to 'Q'
w::z   ; assign 'Z' to 'W'
a::q   ; assign 'Q' to 'A'
z::w   ; assign 'W' to 'Z'
`;::m  ; assign 'M' to ';/:'

$1:: {
  if GetKeyState("CapsLock", "T")
    Send "1"   ; digit 1
  else
    Send "&"   ; ampersand
}
$+1:: {
  if GetKeyState("CapsLock", "T")
    Send "&"   ; ampersand
  else
    Send "1"   ; digit 1
}

>!1::Send "|"  ; vertical line

$2:: {
  if GetKeyState("CapsLock", "T")
    Send "2"         ; digit 2
  else
    Send "{U+00E9}"  ; (é) e with acute
}
$+2:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E9}"  ; (é) e with acute
  else
    Send "2"         ; digit 2
}

>!2::Send "@"        ; at sign

$3:: {
  if GetKeyState("CapsLock", "T")
    Send "3"     ; digit 3
  else
    Send "`""    ; quotation mark
}
$+3:: {
  if GetKeyState("CapsLock", "T")
    Send "`""    ; quotation mark
  else
    Send "3"     ; digit 3
}

>!3::Send "{#}"  ; number sign

$4:: {
  if GetKeyState("CapsLock", "T")
    Send "4"     ; digit 4
  else
    Send "'"     ; apostrophe
}
$+4:: {
  if GetKeyState("CapsLock", "T")
    Send "'"     ; apostrophe
  else
    Send "4"     ; digit 4
}

>!4::Send "{{}"  ; left curly bracket

$5:: {
  if GetKeyState("CapsLock", "T")
    Send "5"          ; digit 5
  else
    Send "("          ; left parenthesis
}
$+5:: {
  if GetKeyState("CapsLock", "T")
    Send "("          ; left parenthesis
  else
    Send "5"          ; digit 5
}

>!5::Send "{U+20AC}"  ; (€) euro sign

$6:: {
  if GetKeyState("CapsLock", "T")
    Send "6"         ; digit 6
  else
    Send "{U+00A7}"  ; (§) section sign
}
$+6:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00A7}"  ; (§) section sign
  else
    Send "6"         ; digit 6
}

>!6::Send "{^}"      ; circumflex accent

$7:: {
  if GetKeyState("CapsLock", "T")
    Send "7"         ; digit 7
  else
    Send "{U+00E8}"  ; (è) e with grave
}
$+7:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E8}"  ; (è) e with grave
  else
    Send "7"         ; digit 7
}

$8:: {
  if GetKeyState("CapsLock", "T")
    Send "8"    ; digit 8
  else
    Send "{!}"  ; exclamation mark
}
$+8:: {
  if GetKeyState("CapsLock", "T")
    Send "{!}"  ; exclamation mark
  else
    Send "8"    ; digit 8
}

$9:: {
  if GetKeyState("CapsLock", "T")
    Send "9"         ; digit 9
  else
    Send "{U+00E7}"  ; (ç) c with cedilla
}
$+9:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E7}"  ; (ç) c with cedilla
  else
    Send "9"         ; digit 9
}

>!9::Send "{{}"      ; left curly bracket

$0:: {
  if GetKeyState("CapsLock", "T")
    Send "0"         ; digit 0
  else
    Send "{U+00E0}"  ; (à) a with grave
}
$+0:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E0}"  ; (à) a with grave
  else
    Send "0"         ; digit 0
}

>!0::Send "{}}"      ; right curly bracket

$-::Send ")"         ; right parenthesis
$_::Send "{U+00B0}"  ; (°) degree sign

$=::Send "-"          ; hyphen-minus
$+::Send "_"          ; underscore
>!=::Send "{U+00C7}"  ; (Ç) C with cedilla

$m::Send ","   ; comma
$+m::Send "?"  ; question mark
>!m::Send "\"  ; reverse solidus (backslash)

$,::Send ";"   ; semicolon
$<::Send "."   ; full stop (period)
>!,::Send "<"  ; less-than sign

$.::Send ":"   ; colon
$>::Send "/"   ; solidus (slash)
>!.::Send ">"  ; greater-than sign

$/::Send "="    ; equals sign
$?::Send "{+}"  ; plus sign

>!/:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start()
  ih.Wait()
  if dkTilde.Has(ih.Input)
    Send dkTilde[ih.Input]
}

>!q:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C6}"  ; (Æ) letter AE
  else
    Send "{U+00E6}"  ; (æ) letter ae
}
>!+q:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E6}"  ; (æ) letter ae
  else
    Send "{U+00C6}"  ; (Æ) letter AE
}

>!w:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C5}"  ; (Å) A with ring above
  else
    Send "{U+00E5}"  ; (å) a with ring above
}
>!+w:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E5}"  ; (å) a with ring above
  else
    Send "{U+00C5}"  ; (Å) A with ring above
}

>!c:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C7}"  ; (Ç) C with cedilla
  else
    Send "{U+00E7}"  ; (ç) c with cedilla
}
>!+c:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E7}"  ; (ç) c with cedilla
  else
    Send "{U+00C7}"  ; (Ç) C with cedilla
}

>!d:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D0}"  ; (Ð) capital letter eth
  else
    Send "{U+00F0}"  ; (ð) small letter eth
}
>!+d:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F0}"  ; (ð) small letter eth
  else
    Send "{U+00D0}"  ; (Ð) capital letter eth
}

>!n:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D1}"  ; (Ñ) N with tilde
  else
    Send "{U+00F1}"  ; (ñ) n with tilde
}
>!+n:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F1}"  ; (ñ) n with tilde
  else
    Send "{U+00D1}"  ; (Ñ) N with tilde
}

>!k:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+0152}"  ; (Œ) ligature OE
  else
    Send "{U+0153}"  ; (œ) ligature oe
}
>!+k:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+0153}"  ; (œ) ligature oe
  else
    Send "{U+0152}"  ; (Œ) ligature OE
}

>!l:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D8}"  ; (Ø) O with stroke
  else
    Send "{U+00F8}"  ; (ø) o with stroke
}
>!+l:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F8}"  ; (ø) o with stroke
  else
    Send "{U+00D8}"  ; (Ø) O with stroke
}

>!s:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+1E9E}"  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send "{U+00DF}"  ; (ß) small sharp s (Eszett)
}
>!+s:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00DF}"  ; (ß) small sharp s (Eszett)
  else
    Send "{U+1E9E}"  ; (ẞ) capital sharp S (capital Eszett)
}

>!t:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00DE}"  ; (Þ) capital letter thorn
  else
    Send "{U+00FE}"  ; (þ) small letter thorn
}
>!+t:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00FE}"  ; (þ) small letter thorn
  else
    Send "{U+00DE}"  ; (Þ) capital letter thorn
}

>!e::Send "{U+20AC}"  ; (€) euro sign

$'::Send "{U+00F9}"  ; (ù) u with grave
$"::Send "%"         ; percent sign

>!':: {
  ih := InputHook("L1", gEndKeys)
  ih.Start()
  ih.Wait()
  if dkAcuteAccent.Has(ih.Input)
    Send dkAcuteAccent[ih.Input]
}

$[:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start()
  ih.Wait()
  if dkCircumflex.Has(ih.Input)
    Send dkCircumflex[ih.Input]
}
${:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start()
  ih.Wait()
  if dkDiaeresis.Has(ih.Input)
    Send dkDiaeresis[ih.Input]
}

>![::Send "["  ; left square bracket

$]::Send "$"   ; dollar sign
$}::Send "*"   ; asterisk

>!]::Send "]"  ; right square bracket

$\::Send "{U+00B5}"  ; (µ) micro sign
$|::Send "{U+00A3}"  ; (£) pound sign

>!\:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start()
  ih.Wait()
  if dkGraveAccent.Has(ih.Input)
    Send dkGraveAccent[ih.Input]
}

$`::Send "{U+00B2}"  ; (²) superscript 2
$~::Send "{U+00B3}"  ; (³) superscript 3

sc056::Send "<"    ; less-than sign
+sc056::Send ">"   ; greater-than sign
>!sc056::Send "\"  ; reverse solidus (backslash)

>!space::Send "{U+00A0}"   ; non-breaking space (NBSP)
>!+space::Send "{U+00A0}"  ; non-breaking space (NBSP)
