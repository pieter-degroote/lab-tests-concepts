#requires AutoHotkey v1.1

; Belgian AZERTY (Shift Lock for letters and digits) (for AutoHotkey v1.1).ahk - 2025-02-06

; Website :  https://pieter-degroote.github.io/UltimateKEYS/

; GitHub :   https://github.com/pieter-degroote/lab-tests-concepts

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout (on Windows) :  US QWERTY



#NoEnv          ; avoids checking empty variables to see if they are environment variables
#KeyHistory 0   ; disables the key history (for privacy and security)
ListLines Off   ; omits recently executed lines from history (for privacy and security)

SendMode Event  ; allows chaining of customized key combinations

global gEndKeys := "{bs}{esc}"  ; ends dead key input on Backspace or Escape


; Dead Key :  Acute Accent

global dkAcute := ComObjCreate("Scripting.Dictionary")
dkAcute.item["a"] := "{u+00e1}"  ; (á) a with acute
dkAcute.item["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcute.item["c"] := "{u+0107}"  ; (ć) c with acute
dkAcute.item["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcute.item["e"] := "{u+00e9}"  ; (é) e with acute
dkAcute.item["E"] := "{u+00c9}"  ; (É) E with acute
dkAcute.item["f"] := "{u+0192}"  ; (ƒ) f with hook
dkAcute.item["F"] := "{u+0191}"  ; (Ƒ) F with hook
dkAcute.item["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcute.item["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcute.item["i"] := "{u+00ed}"  ; (í) i with acute
dkAcute.item["I"] := "{u+00cd}"  ; (Í) I with acute
dkAcute.item["j"] := "{u+0133}"  ; (ĳ) ligature ij
dkAcute.item["J"] := "{u+0132}"  ; (Ĳ) ligature IJ
dkAcute.item["k"] := "{u+1e31}"  ; (ḱ) k with acute
dkAcute.item["K"] := "{u+1e30}"  ; (Ḱ) K with acute
dkAcute.item["l"] := "{u+013a}"  ; (ĺ) l with acute
dkAcute.item["L"] := "{u+0139}"  ; (Ĺ) L with acute
dkAcute.item["m"] := "{u+1e3f}"  ; (ḿ) m with acute
dkAcute.item["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
dkAcute.item["n"] := "{u+0144}"  ; (ń) n with acute
dkAcute.item["N"] := "{u+0143}"  ; (Ń) N with acute
dkAcute.item["o"] := "{u+00f3}"  ; (ó) o with acute
dkAcute.item["O"] := "{u+00d3}"  ; (Ó) O with acute
dkAcute.item["p"] := "{u+1e55}"  ; (ṕ) p with acute
dkAcute.item["P"] := "{u+1e54}"  ; (Ṕ) P with acute
dkAcute.item["r"] := "{u+0155}"  ; (ŕ) r with acute
dkAcute.item["R"] := "{u+0154}"  ; (Ŕ) R with acute
dkAcute.item["s"] := "{u+015b}"  ; (ś) s with acute
dkAcute.item["S"] := "{u+015a}"  ; (Ś) S with acute
dkAcute.item["u"] := "{u+00fa}"  ; (ú) u with acute
dkAcute.item["U"] := "{u+00da}"  ; (Ú) U with acute
dkAcute.item["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcute.item["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcute.item["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcute.item["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcute.item["z"] := "{u+017a}"  ; (ź) z with acute
dkAcute.item["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcute.item[" "] := "{u+00b4}"  ; (´) acute accent


; Dead Key :  Grave Accent

global dkGrave := ComObjCreate("Scripting.Dictionary")
dkGrave.item["a"] := "{u+00e0}"  ; (à) a with grave
dkGrave.item["A"] := "{u+00c0}"  ; (À) A with grave
dkGrave.item["e"] := "{u+00e8}"  ; (è) e with grave
dkGrave.item["E"] := "{u+00c8}"  ; (È) E with grave
dkGrave.item["i"] := "{u+00ec}"  ; (ì) i with grave
dkGrave.item["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGrave.item["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGrave.item["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGrave.item["o"] := "{u+00f2}"  ; (ò) o with grave
dkGrave.item["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGrave.item["u"] := "{u+00f9}"  ; (ù) u with grave
dkGrave.item["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGrave.item["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGrave.item["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGrave.item["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGrave.item["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGrave.item[" "] := "{u+0060}"  ; (`) grave accent


; Dead Key :  Circumflex Accent

global dkCircumflex := ComObjCreate("Scripting.Dictionary")
dkCircumflex.item["a"] := "{u+00e2}"  ; (â) a with circumflex
dkCircumflex.item["A"] := "{u+00c2}"  ; (Â) A with circumflex
dkCircumflex.item["c"] := "{u+0109}"  ; (ĉ) c with circumflex
dkCircumflex.item["C"] := "{u+0108}"  ; (Ĉ) C with circumflex
dkCircumflex.item["e"] := "{u+00ea}"  ; (ê) e with circumflex
dkCircumflex.item["E"] := "{u+00ca}"  ; (Ê) E with circumflex
dkCircumflex.item["g"] := "{u+011d}"  ; (ĝ) g with circumflex
dkCircumflex.item["G"] := "{u+011c}"  ; (Ĝ) G with circumflex
dkCircumflex.item["h"] := "{u+0125}"  ; (ĥ) h with circumflex
dkCircumflex.item["H"] := "{u+0124}"  ; (Ĥ) H with circumflex
dkCircumflex.item["i"] := "{u+00ee}"  ; (î) i with circumflex
dkCircumflex.item["I"] := "{u+00ce}"  ; (Î) I with circumflex
dkCircumflex.item["j"] := "{u+0135}"  ; (ĵ) j with circumflex
dkCircumflex.item["J"] := "{u+0134}"  ; (Ĵ) J with circumflex
dkCircumflex.item["o"] := "{u+00f4}"  ; (ô) o with circumflex
dkCircumflex.item["O"] := "{u+00d4}"  ; (Ô) O with circumflex
dkCircumflex.item["s"] := "{u+015d}"  ; (ŝ) s with circumflex
dkCircumflex.item["S"] := "{u+015c}"  ; (Ŝ) S with circumflex
dkCircumflex.item["u"] := "{u+00fb}"  ; (û) u with circumflex
dkCircumflex.item["U"] := "{u+00db}"  ; (Û) U with circumflex
dkCircumflex.item["w"] := "{u+0175}"  ; (ŵ) w with circumflex
dkCircumflex.item["W"] := "{u+0174}"  ; (Ŵ) W with circumflex
dkCircumflex.item["y"] := "{u+0177}"  ; (ŷ) y with circumflex
dkCircumflex.item["Y"] := "{u+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex.item["z"] := "{u+1e91}"  ; (ẑ) z with circumflex
dkCircumflex.item["Z"] := "{u+1e90}"  ; (Ẑ) Z with circumflex
dkCircumflex.item[" "] := "{u+005e}"  ; (^) circumflex accent


; Dead Key :  Diaeresis

global dkDiaeresis := ComObjCreate("Scripting.Dictionary")
dkDiaeresis.item["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkDiaeresis.item["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkDiaeresis.item["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkDiaeresis.item["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkDiaeresis.item["h"] := "{u+1e27}"  ; (ḧ) h with diaeresis
dkDiaeresis.item["H"] := "{u+1e26}"  ; (Ḧ) H with diaeresis
dkDiaeresis.item["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkDiaeresis.item["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkDiaeresis.item["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkDiaeresis.item["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkDiaeresis.item["t"] := "{u+1e97}"  ; (ẗ) t with diaeresis
dkDiaeresis.item["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkDiaeresis.item["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkDiaeresis.item["w"] := "{u+1e85}"  ; (ẅ) w with diaeresis
dkDiaeresis.item["W"] := "{u+1e84}"  ; (Ẅ) W with diaeresis
dkDiaeresis.item["x"] := "{u+1e8d}"  ; (ẍ) x with diaeresis
dkDiaeresis.item["X"] := "{u+1e8c}"  ; (Ẍ) X with diaeresis
dkDiaeresis.item["y"] := "{u+00ff}"  ; (ÿ) y with diaeresis
dkDiaeresis.item["Y"] := "{u+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis.item[" "] := "{u+00a8}"  ; (¨) diaeresis


; Dead Key :  Tilde

global dkTilde := ComObjCreate("Scripting.Dictionary")
dkTilde.item["a"] := "{u+00e3}"  ; (ã) a with tilde
dkTilde.item["A"] := "{u+00c3}"  ; (Ã) A with tilde
dkTilde.item["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
dkTilde.item["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
dkTilde.item["i"] := "{u+0129}"  ; (ĩ) i with tilde
dkTilde.item["I"] := "{u+0128}"  ; (Ĩ) I with tilde
dkTilde.item["l"] := "{u+026b}"  ; (ɫ) l with middle tilde
dkTilde.item["L"] := "{u+2c62}"  ; (Ɫ) L with middle tilde
dkTilde.item["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkTilde.item["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkTilde.item["o"] := "{u+00f5}"  ; (õ) o with tilde
dkTilde.item["O"] := "{u+00d5}"  ; (Õ) O with tilde
dkTilde.item["u"] := "{u+0169}"  ; (ũ) u with tilde
dkTilde.item["U"] := "{u+0168}"  ; (Ũ) U with tilde
dkTilde.item["v"] := "{u+1e7d}"  ; (ṽ) v with tilde
dkTilde.item["V"] := "{u+1e7c}"  ; (Ṽ) V with tilde
dkTilde.item["y"] := "{u+1ef9}"  ; (ỹ) y with tilde
dkTilde.item["Y"] := "{u+1ef8}"  ; (Ỹ) Y with tilde
dkTilde.item[" "] := "{u+007e}"  ; (~) tilde


; Configuration :  Swap keys to Belgian AZERTY

sc00D::sc00C  ; = becomes -
sc010::sc01E  ; Q becomes A
sc011::sc02C  ; W becomes Z
sc01E::sc010  ; A becomes Q
sc027::sc032  ; ; becomes M
sc02C::sc011  ; Z becomes W
sc035::sc00D  ; / becomes =

NumpadDot::Send {u+002e}  ; (.) period


; Configuration :  Detailed conversion to Belgian AZERTY

; Key :  1
sc002::
  if GetKeyState("CapsLock", "T")
    Send {u+0031}  ; (1) digit 1
  else
    Send {u+0026}  ; (&) ampersand
  return
+sc002::
  if GetKeyState("CapsLock", "T")
    Send {u+0026}  ; (&) ampersand
  else
    Send {u+0031}  ; (1) digit 1
  return
>!sc002::
<^>!sc002::Send {u+007c}  ; (|) vertical line

; Key :  2
sc003::
  if GetKeyState("CapsLock", "T")
    Send {u+0032}  ; (2) digit 2
  else
    Send {u+00e9}  ; (é) e with acute
  return
+sc003::
  if GetKeyState("CapsLock", "T")
    Send {u+00e9}  ; (é) e with acute
  else
    Send {u+0032}  ; (2) digit 2
  return
>!sc003::
<^>!sc003::Send {u+0040}  ; (@) at sign

; Key :  3
sc004::
  if GetKeyState("CapsLock", "T")
    Send {u+0033}  ; (3) digit 3
  else
    Send {u+0022}  ; (") quotation mark
  return
+sc004::
  if GetKeyState("CapsLock", "T")
    Send {u+0022}  ; (") quotation mark
  else
    Send {u+0033}  ; (3) digit 3
  return
>!sc004::
<^>!sc004::Send {u+0023}  ; (#) number sign

; Key :  4
sc005::
  if GetKeyState("CapsLock", "T")
    Send {u+0034}  ; (4) digit 4
  else
    Send {u+0027}  ; (') apostrophe
  return
+sc005::
  if GetKeyState("CapsLock", "T")
    Send {u+0027}  ; (') apostrophe
  else
    Send {u+0034}  ; (4) digit 4
  return
>!sc005::
<^>!sc005::Send {u+007b}  ; ({) left curly bracket

; Key :  5
sc006::
  if GetKeyState("CapsLock", "T")
    Send {u+0035}  ; (5) digit 5
  else
    Send {u+0028}  ; (() left parenthesis
  return
+sc006::
  if GetKeyState("CapsLock", "T")
    Send {u+0028}  ; (() left parenthesis
  else
    Send {u+0035}  ; (5) digit 5
  return
>!sc006::
<^>!sc006::Send {u+20ac}  ; (€) euro sign

; Key :  6
sc007::
  if GetKeyState("CapsLock", "T")
    Send {u+0036}  ; (6) digit 6
  else
    Send {u+00a7}  ; (§) section sign
  return
+sc007::
  if GetKeyState("CapsLock", "T")
    Send {u+00a7}  ; (§) section sign
  else
    Send {u+0036}  ; (6) digit 6
  return
>!sc007::
<^>!sc007::Send {u+005e}  ; (^) circumflex accent

; Key :  7
sc008::
  if GetKeyState("CapsLock", "T")
    Send {u+0037}  ; (7) digit 7
  else
    Send {u+00e8}  ; (è) e with grave
  return
+sc008::
  if GetKeyState("CapsLock", "T")
    Send {u+00e8}  ; (è) e with grave
  else
    Send {u+0037}  ; (7) digit 7
  return

; Key :  8
sc009::
  if GetKeyState("CapsLock", "T")
    Send {u+0038}  ; (8) digit 8
  else
    Send {u+0021}  ; (!) exclamation mark
  return
+sc009::
  if GetKeyState("CapsLock", "T")
    Send {u+0021}  ; (!) exclamation mark
  else
    Send {u+0038}  ; (8) digit 8
  return

; Key :  9
sc00A::
  if GetKeyState("CapsLock", "T")
    Send {u+0039}  ; (9) digit 9
  else
    Send {u+00e7}  ; (ç) c with cedilla
  return
+sc00A::
  if GetKeyState("CapsLock", "T")
    Send {u+00e7}  ; (ç) c with cedilla
  else
    Send {u+0039}  ; (9) digit 9
  return
>!sc00A::
<^>!sc00A::Send {u+007b}  ; ({) left curly bracket

; Key :  0
sc00B::
  if GetKeyState("CapsLock", "T")
    Send {u+0030}  ; (0) digit 0
  else
    Send {u+00e0}  ; (à) a with grave
  return
+sc00B::
  if GetKeyState("CapsLock", "T")
    Send {u+00e0}  ; (à) a with grave
  else
    Send {u+0030}  ; (0) digit 0
  return
>!sc00B::
<^>!sc00B::Send {u+007d}  ; (}) right curly bracket

; Key :  - / _ (hyphen-minus / underscore)
sc00C::Send {u+0029}   ; ()) right parenthesis
+sc00C::Send {u+00b0}  ; (°) degree sign

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D::Send {u+00c7}  ; (Ç) C with cedilla

; Key :  Q
>!sc010::
<^>!sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+00c6}  ; (Æ) letter AE
  else
    Send {u+00e6}  ; (æ) letter ae
  return
>!+sc010::
<^>!+sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+00e6}  ; (æ) letter ae
  else
    Send {u+00c6}  ; (Æ) letter AE
  return

; Key :  W
>!sc011::
<^>!sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+00c5}  ; (Å) A with ring above
  else
    Send {u+00e5}  ; (å) a with ring above
  return
>!+sc011::
<^>!+sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+00e5}  ; (å) a with ring above
  else
    Send {u+00c5}  ; (Å) A with ring above
  return

; Key :  E
>!sc012::
<^>!sc012::Send {u+20ac}  ; (€) euro sign

; Key :  T
>!sc014::
<^>!sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+00de}  ; (Þ) capital letter thorn
  else
    Send {u+00fe}  ; (þ) small letter thorn
  return
>!+sc014::
<^>!+sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+00fe}  ; (þ) small letter thorn
  else
    Send {u+00de}  ; (Þ) capital letter thorn
  return

; Key :  [ / { (left square bracket / left curly bracket)
sc01A::
  dead := InputHook("L1", gEndKeys)
  dead.Start()
  dead.Wait()
  Send % dkCircumflex.item[dead.Input]
  return
+sc01A::
  dead := InputHook("L1", gEndKeys)
  dead.Start()
  dead.Wait()
  Send % dkDiaeresis.item[dead.Input]
  return
>!sc01A::
<^>!sc01A::Send {u+005b}  ; ([) left square bracket

; Key :  ] / } (right square bracket / right curly bracket)
sc01B::Send {u+0024}   ; ($) dollar sign
+sc01B::Send {u+002a}  ; (*) asterisk
>!sc01B::
<^>!sc01B::Send {u+005d}  ; (]) right square bracket

; Key :  S
>!sc01F::
<^>!sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  return
>!+sc01F::
<^>!+sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  else
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  return

; Key :  D
>!sc020::
<^>!sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+00d0}  ; (Ð) capital letter eth
  else
    Send {u+00f0}  ; (ð) small letter eth
  return
>!+sc020::
<^>!+sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+00f0}  ; (ð) small letter eth
  else
    Send {u+00d0}  ; (Ð) capital letter eth
  return

; Key :  K
>!sc025::
<^>!sc025::
  if GetKeyState("CapsLock", "T")
    Send {u+0152}  ; (Œ) ligature OE
  else
    Send {u+0153}  ; (œ) ligature oe
  return
>!+sc025::
<^>!+sc025::
  if GetKeyState("CapsLock", "T")
    Send {u+0153}  ; (œ) ligature oe
  else
    Send {u+0152}  ; (Œ) ligature OE
  return

; Key :  L
>!sc026::
<^>!sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+00d8}  ; (Ø) O with stroke
  else
    Send {u+00f8}  ; (ø) o with stroke
  return
>!+sc026::
<^>!+sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+00f8}  ; (ø) o with stroke
  else
    Send {u+00d8}  ; (Ø) O with stroke
  return

; Key :  ' / " (apostrophe / quotation mark)
sc028::Send {u+00f9}   ; (ù) u with grave
+sc028::Send {u+0025}  ; (%) percent sign
>!sc028::
<^>!sc028::
  dead := InputHook("L1", gEndKeys)
  dead.Start()
  dead.Wait()
  Send % dkAcute.item[dead.Input]
  return

; Key :  ` / ~ (grave accent / tilde)
sc029::Send {u+00b2}   ; (²) superscript 2
+sc029::Send {u+00b3}  ; (³) superscript 3

; Key :  \ / | (backslash / vertical line)
sc02B::Send {u+00b5}   ; (µ) micro sign
+sc02B::Send {u+00a3}  ; (£) pound sign
>!sc02B::
<^>!sc02B::
  dead := InputHook("L1", gEndKeys)
  dead.Start()
  dead.Wait()
  Send % dkGrave.item[dead.Input]
  return

; Key :  C
>!sc02E::
<^>!sc02E::
  if GetKeyState("CapsLock", "T")
    Send {u+00c7}  ; (Ç) C with cedilla
  else
    Send {u+00e7}  ; (ç) c with cedilla
  return
>!+sc02E::
<^>!+sc02E::
  if GetKeyState("CapsLock", "T")
    Send {u+00e7}  ; (ç) c with cedilla
  else
    Send {u+00c7}  ; (Ç) C with cedilla
  return

; Key :  N
>!sc031::
<^>!sc031::
  if GetKeyState("CapsLock", "T")
    Send {u+00d1}  ; (Ñ) N with tilde
  else
    Send {u+00f1}  ; (ñ) n with tilde
  return
>!+sc031::
<^>!+sc031::
  if GetKeyState("CapsLock", "T")
    Send {u+00f1}  ; (ñ) n with tilde
  else
    Send {u+00d1}  ; (Ñ) N with tilde
  return

; Key :  M
sc032::Send {u+002c}   ; (,) comma
+sc032::Send {u+003f}  ; (?) question mark
>!sc032::
<^>!sc032::Send {u+005c}  ; (\) backslash

; Key :  , / < (comma / less-than sign)
sc033::Send {u+003b}   ; (;) semicolon
+sc033::Send {u+002e}  ; (.) period
>!sc033::
<^>!sc033::Send {u+003c}  ; (<) less-than sign

; Key :  . / > (period / greater-than sign)
sc034::Send {u+003a}   ; (:) colon
+sc034::Send {u+002f}  ; (/) slash
>!sc034::
<^>!sc034::Send {u+003e}  ; (>) greater-than sign

; Key :  / / ? (slash / question mark)
>!sc035::
<^>!sc035::
  dead := InputHook("L1", gEndKeys)
  dead.Start()
  dead.Wait()
  Send % dkTilde.item[dead.Input]
  return

; Key :  (space)
>!sc039::
<^>!sc039::Send {u+00a0}   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send {u+00a0}  ; non-breaking space (NBSP)

; Key :  ISO key
sc056::Send {u+003c}   ; (<) less-than sign
+sc056::Send {u+003e}  ; (>) greater-than sign
>!sc056::
<^>!sc056::Send {u+005c}  ; (\) backslash
