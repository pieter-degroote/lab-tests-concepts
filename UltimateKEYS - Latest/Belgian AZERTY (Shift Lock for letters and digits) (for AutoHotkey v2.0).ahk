; Belgian AZERTY (Shift Lock for letters and digits) (for AutoHotkey v2.0).ahk - 2022-02-01

; Website :  www.ultimatekeys.info (pieter-degroote.github.io/UltimateKEYS/)

; License :  GNU General Public License Version 3

; GitHub :   github.com/pieter-degroote/UltimateKEYS-testing


; Requirements :

; Keyboard layout (on Windows) :  US QWERTY

; AutoHotkey v2.0 (www.autohotkey.com)



ListLines False   ; omits recently executed lines from history (for privacy and security)
KeyHistory 0      ; disables the key history (for privacy and security)

SendMode "Event"  ; allows chaining of customized key combinations

global dkEndKeys := "{bs}{del}{esc}{home}{end}"  ; ends dead key input on specific keys


; Dead Key :  Circumflex Accent

global dkCircumflex := Map()
dkCircumflex["a"] := "{u+00e2}"  ; (â) a with circumflex
dkCircumflex["A"] := "{u+00c2}"  ; (Â) A with circumflex
dkCircumflex["c"] := "{u+0109}"  ; (ĉ) c with circumflex
dkCircumflex["C"] := "{u+0108}"  ; (Ĉ) C with circumflex
dkCircumflex["e"] := "{u+00ea}"  ; (ê) e with circumflex
dkCircumflex["E"] := "{u+00ca}"  ; (Ê) E with circumflex
dkCircumflex["g"] := "{u+011d}"  ; (ĝ) g with circumflex
dkCircumflex["G"] := "{u+011c}"  ; (Ĝ) G with circumflex
dkCircumflex["h"] := "{u+0125}"  ; (ĥ) h with circumflex
dkCircumflex["H"] := "{u+0124}"  ; (Ĥ) H with circumflex
dkCircumflex["i"] := "{u+00ee}"  ; (î) i with circumflex
dkCircumflex["I"] := "{u+00ce}"  ; (Î) I with circumflex
dkCircumflex["j"] := "{u+0135}"  ; (ĵ) j with circumflex
dkCircumflex["J"] := "{u+0134}"  ; (Ĵ) J with circumflex
dkCircumflex["o"] := "{u+00f4}"  ; (ô) o with circumflex
dkCircumflex["O"] := "{u+00d4}"  ; (Ô) O with circumflex
dkCircumflex["s"] := "{u+015d}"  ; (ŝ) s with circumflex
dkCircumflex["S"] := "{u+015c}"  ; (Ŝ) S with circumflex
dkCircumflex["u"] := "{u+00fb}"  ; (û) u with circumflex
dkCircumflex["U"] := "{u+00db}"  ; (Û) U with circumflex
dkCircumflex["w"] := "{u+0175}"  ; (ŵ) w with circumflex
dkCircumflex["W"] := "{u+0174}"  ; (Ŵ) W with circumflex
dkCircumflex["y"] := "{u+0177}"  ; (ŷ) y with circumflex
dkCircumflex["Y"] := "{u+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex["z"] := "{u+1e91}"  ; (ẑ) z with circumflex
dkCircumflex["Z"] := "{u+1e90}"  ; (Ẑ) Z with circumflex
dkCircumflex[" "] := "{^}"       ;     circumflex accent


; Dead Key :  Acute Accent

global dkAcuteAccent := Map()
dkAcuteAccent["a"] := "{u+00e1}"  ; (á) a with acute
dkAcuteAccent["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcuteAccent["c"] := "{u+0107}"  ; (ć) c with acute
dkAcuteAccent["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcuteAccent["e"] := "{u+00e9}"  ; (é) e with acute
dkAcuteAccent["E"] := "{u+00c9}"  ; (É) E with acute
dkAcuteAccent["f"] := "{u+0192}"  ; (ƒ) f with hook
dkAcuteAccent["F"] := "{u+0191}"  ; (Ƒ) F with hook
dkAcuteAccent["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcuteAccent["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcuteAccent["i"] := "{u+00ed}"  ; (í) i with acute
dkAcuteAccent["I"] := "{u+00cd}"  ; (Í) I with acute
dkAcuteAccent["j"] := "{u+0133}"  ; (ĳ) ligature ij
dkAcuteAccent["J"] := "{u+0132}"  ; (Ĳ) ligature IJ
dkAcuteAccent["k"] := "{u+1e31}"  ; (ḱ) k with acute
dkAcuteAccent["K"] := "{u+1e30}"  ; (Ḱ) K with acute
dkAcuteAccent["l"] := "{u+013a}"  ; (ĺ) l with acute
dkAcuteAccent["L"] := "{u+0139}"  ; (Ĺ) L with acute
dkAcuteAccent["m"] := "{u+1e3f}"  ; (ḿ) m with acute
dkAcuteAccent["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
dkAcuteAccent["n"] := "{u+0144}"  ; (ń) n with acute
dkAcuteAccent["N"] := "{u+0143}"  ; (Ń) N with acute
dkAcuteAccent["o"] := "{u+00f3}"  ; (ó) o with acute
dkAcuteAccent["O"] := "{u+00d3}"  ; (Ó) O with acute
dkAcuteAccent["p"] := "{u+1e55}"  ; (ṕ) p with acute
dkAcuteAccent["P"] := "{u+1e54}"  ; (Ṕ) P with acute
dkAcuteAccent["r"] := "{u+0155}"  ; (ŕ) r with acute
dkAcuteAccent["R"] := "{u+0154}"  ; (Ŕ) R with acute
dkAcuteAccent["s"] := "{u+015b}"  ; (ś) s with acute
dkAcuteAccent["S"] := "{u+015a}"  ; (Ś) S with acute
dkAcuteAccent["u"] := "{u+00fa}"  ; (ú) u with acute
dkAcuteAccent["U"] := "{u+00da}"  ; (Ú) U with acute
dkAcuteAccent["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcuteAccent["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcuteAccent["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcuteAccent["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcuteAccent["z"] := "{u+017a}"  ; (ź) z with acute
dkAcuteAccent["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcuteAccent[" "] := "{u+00b4}"  ; (´) acute accent


; Dead Key :  Diaeresis

global dkDiaeresis := Map()
dkDiaeresis["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkDiaeresis["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkDiaeresis["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkDiaeresis["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkDiaeresis["h"] := "{u+1e27}"  ; (ḧ) h with diaeresis
dkDiaeresis["H"] := "{u+1e26}"  ; (Ḧ) H with diaeresis
dkDiaeresis["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkDiaeresis["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkDiaeresis["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkDiaeresis["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkDiaeresis["t"] := "{u+1e97}"  ; (ẗ) t with diaeresis
dkDiaeresis["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkDiaeresis["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkDiaeresis["w"] := "{u+1e85}"  ; (ẅ) w with diaeresis
dkDiaeresis["W"] := "{u+1e84}"  ; (Ẅ) W with diaeresis
dkDiaeresis["x"] := "{u+1e8d}"  ; (ẍ) x with diaeresis
dkDiaeresis["X"] := "{u+1e8c}"  ; (Ẍ) X with diaeresis
dkDiaeresis["y"] := "{u+00ff}"  ; (ÿ) y with diaeresis
dkDiaeresis["Y"] := "{u+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis[" "] := "{u+00a8}"  ; (¨) diaeresis


; Dead Key :  Grave Accent

global dkGraveAccent := Map()
dkGraveAccent["a"] := "{u+00e0}"  ; (à) a with grave
dkGraveAccent["A"] := "{u+00c0}"  ; (À) A with grave
dkGraveAccent["e"] := "{u+00e8}"  ; (è) e with grave
dkGraveAccent["E"] := "{u+00c8}"  ; (È) E with grave
dkGraveAccent["i"] := "{u+00ec}"  ; (ì) i with grave
dkGraveAccent["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGraveAccent["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGraveAccent["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGraveAccent["o"] := "{u+00f2}"  ; (ò) o with grave
dkGraveAccent["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGraveAccent["u"] := "{u+00f9}"  ; (ù) u with grave
dkGraveAccent["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGraveAccent["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGraveAccent["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGraveAccent["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGraveAccent["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGraveAccent[" "] := "``"        ;     grave accent


; Dead Key :  Tilde

global dkTilde := Map()
dkTilde["a"] := "{u+00e3}"  ; (ã) a with tilde
dkTilde["A"] := "{u+00c3}"  ; (Ã) A with tilde
dkTilde["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
dkTilde["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
dkTilde["i"] := "{u+0129}"  ; (ĩ) i with tilde
dkTilde["I"] := "{u+0128}"  ; (Ĩ) I with tilde
dkTilde["l"] := "{u+026b}"  ; (ɫ) l with middle tilde
dkTilde["L"] := "{u+2c62}"  ; (Ɫ) L with middle tilde
dkTilde["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkTilde["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkTilde["o"] := "{u+00f5}"  ; (õ) o with tilde
dkTilde["O"] := "{u+00d5}"  ; (Õ) O with tilde
dkTilde["u"] := "{u+0169}"  ; (ũ) u with tilde
dkTilde["U"] := "{u+0168}"  ; (Ũ) U with tilde
dkTilde["v"] := "{u+1e7d}"  ; (ṽ) v with tilde
dkTilde["V"] := "{u+1e7c}"  ; (Ṽ) V with tilde
dkTilde["y"] := "{u+1ef9}"  ; (ỹ) y with tilde
dkTilde["Y"] := "{u+1ef8}"  ; (Ỹ) Y with tilde
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
    Send "{u+00e9}"  ; (é) e with acute
}
$+2:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e9}"  ; (é) e with acute
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

>!5::Send "{u+20ac}"  ; (€) euro sign

$6:: {
  if GetKeyState("CapsLock", "T")
    Send "6"         ; digit 6
  else
    Send "{u+00a7}"  ; (§) section sign
}
$+6:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00a7}"  ; (§) section sign
  else
    Send "6"         ; digit 6
}

>!6::Send "{^}"      ; circumflex accent

$7:: {
  if GetKeyState("CapsLock", "T")
    Send "7"         ; digit 7
  else
    Send "{u+00e8}"  ; (è) e with grave
}
$+7:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e8}"  ; (è) e with grave
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
    Send "{u+00e7}"  ; (ç) c with cedilla
}
$+9:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e7}"  ; (ç) c with cedilla
  else
    Send "9"         ; digit 9
}

>!9::Send "{{}"      ; left curly bracket

$0:: {
  if GetKeyState("CapsLock", "T")
    Send "0"         ; digit 0
  else
    Send "{u+00e0}"  ; (à) a with grave
}
$+0:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e0}"  ; (à) a with grave
  else
    Send "0"         ; digit 0
}

>!0::Send "{}}"      ; right curly bracket

$-::Send ")"         ; right parenthesis
$_::Send "{u+00b0}"  ; (°) degree sign

$=::Send "-"          ; hyphen-minus
$+::Send "_"          ; underscore
>!=::Send "{u+00c7}"  ; (Ç) C with cedilla

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
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkTilde.Has(ih.Input)
    Send dkTilde[ih.Input]
}

>!q:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c6}"  ; (Æ) letter AE
  else
    Send "{u+00e6}"  ; (æ) letter ae
}
>!+q:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e6}"  ; (æ) letter ae
  else
    Send "{u+00c6}"  ; (Æ) letter AE
}

>!w:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c5}"  ; (Å) A with ring above
  else
    Send "{u+00e5}"  ; (å) a with ring above
}
>!+w:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e5}"  ; (å) a with ring above
  else
    Send "{u+00c5}"  ; (Å) A with ring above
}

>!c:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c7}"  ; (Ç) C with cedilla
  else
    Send "{u+00e7}"  ; (ç) c with cedilla
}
>!+c:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e7}"  ; (ç) c with cedilla
  else
    Send "{u+00c7}"  ; (Ç) C with cedilla
}

>!d:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d0}"  ; (Ð) capital letter eth
  else
    Send "{u+00f0}"  ; (ð) small letter eth
}
>!+d:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f0}"  ; (ð) small letter eth
  else
    Send "{u+00d0}"  ; (Ð) capital letter eth
}

>!n:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d1}"  ; (Ñ) N with tilde
  else
    Send "{u+00f1}"  ; (ñ) n with tilde
}
>!+n:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f1}"  ; (ñ) n with tilde
  else
    Send "{u+00d1}"  ; (Ñ) N with tilde
}

>!k:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0152}"  ; (Œ) ligature OE
  else
    Send "{u+0153}"  ; (œ) ligature oe
}
>!+k:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0153}"  ; (œ) ligature oe
  else
    Send "{u+0152}"  ; (Œ) ligature OE
}

>!l:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d8}"  ; (Ø) O with stroke
  else
    Send "{u+00f8}"  ; (ø) o with stroke
}
>!+l:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f8}"  ; (ø) o with stroke
  else
    Send "{u+00d8}"  ; (Ø) O with stroke
}

>!s:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
}
>!+s:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
  else
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
}

>!t:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00de}"  ; (Þ) capital letter thorn
  else
    Send "{u+00fe}"  ; (þ) small letter thorn
}
>!+t:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fe}"  ; (þ) small letter thorn
  else
    Send "{u+00de}"  ; (Þ) capital letter thorn
}

>!e::Send "{u+20ac}"  ; (€) euro sign

$'::Send "{u+00f9}"  ; (ù) u with grave
$"::Send "%"         ; percent sign

>!':: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkAcuteAccent.Has(ih.Input)
    Send dkAcuteAccent[ih.Input]
}

$[:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkCircumflex.Has(ih.Input)
    Send dkCircumflex[ih.Input]
}
${:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkDiaeresis.Has(ih.Input)
    Send dkDiaeresis[ih.Input]
}

>![::Send "["  ; left square bracket

$]::Send "$"   ; dollar sign
$}::Send "*"   ; asterisk

>!]::Send "]"  ; right square bracket

$\::Send "{u+00b5}"  ; (µ) micro sign
$|::Send "{u+00a3}"  ; (£) pound sign

>!\:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkGraveAccent.Has(ih.Input)
    Send dkGraveAccent[ih.Input]
}

$`::Send "{u+00b2}"  ; (²) superscript 2
$~::Send "{u+00b3}"  ; (³) superscript 3

sc056::Send "<"    ; less-than sign
+sc056::Send ">"   ; greater-than sign
>!sc056::Send "\"  ; reverse solidus (backslash)

>!space::Send "{u+00a0}"   ; non-breaking space
>!+space::Send "{u+00a0}"  ; non-breaking space
