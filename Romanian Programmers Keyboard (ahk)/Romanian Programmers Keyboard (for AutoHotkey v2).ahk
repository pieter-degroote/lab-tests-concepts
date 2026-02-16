#requires AutoHotkey v2

; Romanian Programmers Keyboard (for AutoHotkey v2).ahk

; GitHub :   https://github.com/pieter-degroote/lab-tests-concepts

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout :  US QWERTY / KBDUSX



KeyHistory 0      ; disables the key history (for privacy and security)
ListLines False   ; omits recently executed lines from history (for privacy and security)

SendMode "Input"  ; optimizes for faster and more reliable input

global gEndKeys := "{bs}{del}{esc}"  ; ends dead key input on Backspace, Delete or Escape


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
dkTilde[" "] := "{u+007e}"  ; (~) tilde


; Dead Key :  Caron

global dkCaron := Map()
dkCaron["a"] := "{u+01ce}"  ; (ǎ) a with caron
dkCaron["A"] := "{u+01cd}"  ; (Ǎ) A with caron
dkCaron["c"] := "{u+010d}"  ; (č) c with caron
dkCaron["C"] := "{u+010c}"  ; (Č) C with caron
dkCaron["d"] := "{u+010f}"  ; (ď) d with caron
dkCaron["D"] := "{u+010e}"  ; (Ď) D with caron
dkCaron["e"] := "{u+011b}"  ; (ě) e with caron
dkCaron["E"] := "{u+011a}"  ; (Ě) E with caron
dkCaron["g"] := "{u+01e7}"  ; (ǧ) g with caron
dkCaron["G"] := "{u+01e6}"  ; (Ǧ) G with caron
dkCaron["h"] := "{u+021f}"  ; (ȟ) h with caron
dkCaron["H"] := "{u+021e}"  ; (Ȟ) H with caron
dkCaron["i"] := "{u+01d0}"  ; (ǐ) i with caron
dkCaron["I"] := "{u+01cf}"  ; (Ǐ) I with caron
dkCaron["j"] := "{u+01f0}"  ; (ǰ) j with caron
dkCaron["k"] := "{u+01e9}"  ; (ǩ) k with caron
dkCaron["K"] := "{u+01e8}"  ; (Ǩ) K with caron
dkCaron["l"] := "{u+013e}"  ; (ľ) l with caron
dkCaron["L"] := "{u+013d}"  ; (Ľ) L with caron
dkCaron["n"] := "{u+0148}"  ; (ň) n with caron
dkCaron["N"] := "{u+0147}"  ; (Ň) N with caron
dkCaron["o"] := "{u+01d2}"  ; (ǒ) o with caron
dkCaron["O"] := "{u+01d1}"  ; (Ǒ) O with caron
dkCaron["r"] := "{u+0159}"  ; (ř) r with caron
dkCaron["R"] := "{u+0158}"  ; (Ř) R with caron
dkCaron["s"] := "{u+0161}"  ; (š) s with caron
dkCaron["S"] := "{u+0160}"  ; (Š) S with caron
dkCaron["t"] := "{u+0165}"  ; (ť) t with caron
dkCaron["T"] := "{u+0164}"  ; (Ť) T with caron
dkCaron["u"] := "{u+01d4}"  ; (ǔ) u with caron
dkCaron["U"] := "{u+01d3}"  ; (Ǔ) U with caron
dkCaron["z"] := "{u+017e}"  ; (ž) z with caron
dkCaron["Z"] := "{u+017d}"  ; (Ž) Z with caron
dkCaron[" "] := "{u+02c7}"  ; (ˇ) caron


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
dkCircumflex[" "] := "{u+005e}"  ; (^) circumflex accent


; Dead Key :  Breve and Special Letters

global dkBreve := Map()
dkBreve["a"] := "{u+0103}"  ; (ă) a with breve
dkBreve["A"] := "{u+0102}"  ; (Ă) A with breve
dkBreve["e"] := "{u+0115}"  ; (ĕ) e with breve
dkBreve["E"] := "{u+0114}"  ; (Ĕ) E with breve
dkBreve["g"] := "{u+011f}"  ; (ğ) g with breve
dkBreve["G"] := "{u+011e}"  ; (Ğ) G with breve
dkBreve["i"] := "{u+012d}"  ; (ĭ) i with breve
dkBreve["I"] := "{u+012c}"  ; (Ĭ) I with breve
dkBreve["o"] := "{u+014f}"  ; (ŏ) o with breve
dkBreve["O"] := "{u+014e}"  ; (Ŏ) O with breve
dkBreve["u"] := "{u+016d}"  ; (ŭ) u with breve
dkBreve["U"] := "{u+016c}"  ; (Ŭ) U with breve
dkBreve[" "] := "{u+02d8}"  ; (˘) breve


; Dead Key :  Ring Above

global dkRingAbove := Map()
dkRingAbove["a"] := "{u+00e5}"  ; (å) a with ring above
dkRingAbove["A"] := "{u+00c5}"  ; (Å) A with ring above
dkRingAbove["u"] := "{u+016f}"  ; (ů) u with ring above
dkRingAbove["U"] := "{u+016e}"  ; (Ů) U with ring above
dkRingAbove["w"] := "{u+1e98}"  ; (ẘ) w with ring above
dkRingAbove["y"] := "{u+1e99}"  ; (ẙ) y with ring above
dkRingAbove[" "] := "{u+00b0}"  ; (°) degree sign



; Dead Key :  Ogonek

global dkOgonek := Map()
dkOgonek["a"] := "{u+0105}"  ; (ą) a with ogonek
dkOgonek["A"] := "{u+0104}"  ; (Ą) A with ogonek
dkOgonek["e"] := "{u+0119}"  ; (ę) e with ogonek
dkOgonek["E"] := "{u+0118}"  ; (Ę) E with ogonek
dkOgonek["i"] := "{u+012f}"  ; (į) i with ogonek
dkOgonek["I"] := "{u+012e}"  ; (Į) I with ogonek
dkOgonek["o"] := "{u+01eb}"  ; (ǫ) o with ogonek
dkOgonek["O"] := "{u+01ea}"  ; (Ǫ) O with ogonek
dkOgonek["u"] := "{u+0173}"  ; (ų) u with ogonek
dkOgonek["U"] := "{u+0172}"  ; (Ų) U with ogonek
dkOgonek[" "] := "{u+02db}"  ; (˛) ogonek


; Dead Key :  Grave Accent

global dkGrave := Map()
dkGrave["a"] := "{u+00e0}"  ; (à) a with grave
dkGrave["A"] := "{u+00c0}"  ; (À) A with grave
dkGrave["e"] := "{u+00e8}"  ; (è) e with grave
dkGrave["E"] := "{u+00c8}"  ; (È) E with grave
dkGrave["i"] := "{u+00ec}"  ; (ì) i with grave
dkGrave["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGrave["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGrave["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGrave["o"] := "{u+00f2}"  ; (ò) o with grave
dkGrave["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGrave["u"] := "{u+00f9}"  ; (ù) u with grave
dkGrave["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGrave["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGrave["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGrave["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGrave["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGrave[" "] := "{u+0060}"  ; (`) grave accent


; Dead Key :  Dot Above

global dkDotAbove := Map()
dkDotAbove["a"] := "{u+0227}"  ; (ȧ) a with dot above
dkDotAbove["A"] := "{u+0226}"  ; (Ȧ) A with dot above
dkDotAbove["b"] := "{u+1e03}"  ; (ḃ) b with dot above
dkDotAbove["B"] := "{u+1e02}"  ; (Ḃ) B with dot above
dkDotAbove["c"] := "{u+010b}"  ; (ċ) c with dot above
dkDotAbove["C"] := "{u+010a}"  ; (Ċ) C with dot above
dkDotAbove["d"] := "{u+1e0b}"  ; (ḋ) d with dot above
dkDotAbove["D"] := "{u+1e0a}"  ; (Ḋ) D with dot above
dkDotAbove["e"] := "{u+0117}"  ; (ė) e with dot above
dkDotAbove["E"] := "{u+0116}"  ; (Ė) E with dot above
dkDotAbove["f"] := "{u+1e1f}"  ; (ḟ) f with dot above
dkDotAbove["F"] := "{u+1e1e}"  ; (Ḟ) F with dot above
dkDotAbove["g"] := "{u+0121}"  ; (ġ) g with dot above
dkDotAbove["G"] := "{u+0120}"  ; (Ġ) G with dot above
dkDotAbove["h"] := "{u+1e23}"  ; (ḣ) h with dot above
dkDotAbove["H"] := "{u+1e22}"  ; (Ḣ) H with dot above
dkDotAbove["i"] := "{u+0131}"  ; (ı) dotless i
dkDotAbove["I"] := "{u+0130}"  ; (İ) I with dot above
dkDotAbove["j"] := "{u+0237}"  ; (ȷ) dotless j
dkDotAbove["l"] := "{u+0140}"  ; (ŀ) l with middle dot
dkDotAbove["L"] := "{u+013f}"  ; (Ŀ) L with middle dot
dkDotAbove["m"] := "{u+1e41}"  ; (ṁ) m with dot above
dkDotAbove["M"] := "{u+1e40}"  ; (Ṁ) M with dot above
dkDotAbove["n"] := "{u+1e45}"  ; (ṅ) n with dot above
dkDotAbove["N"] := "{u+1e44}"  ; (Ṅ) N with dot above
dkDotAbove["o"] := "{u+022f}"  ; (ȯ) o with dot above
dkDotAbove["O"] := "{u+022e}"  ; (Ȯ) O with dot above
dkDotAbove["p"] := "{u+1e57}"  ; (ṗ) p with dot above
dkDotAbove["P"] := "{u+1e56}"  ; (Ṗ) P with dot above
dkDotAbove["r"] := "{u+1e59}"  ; (ṙ) r with dot above
dkDotAbove["R"] := "{u+1e58}"  ; (Ṙ) R with dot above
dkDotAbove["s"] := "{u+1e61}"  ; (ṡ) s with dot above
dkDotAbove["S"] := "{u+1e60}"  ; (Ṡ) S with dot above
dkDotAbove["t"] := "{u+1e6b}"  ; (ṫ) t with dot above
dkDotAbove["T"] := "{u+1e6a}"  ; (Ṫ) T with dot above
dkDotAbove["w"] := "{u+1e87}"  ; (ẇ) w with dot above
dkDotAbove["W"] := "{u+1e86}"  ; (Ẇ) W with dot above
dkDotAbove["x"] := "{u+1e8b}"  ; (ẋ) x with dot above
dkDotAbove["X"] := "{u+1e8a}"  ; (Ẋ) X with dot above
dkDotAbove["y"] := "{u+1e8f}"  ; (ẏ) y with dot above
dkDotAbove["Y"] := "{u+1e8e}"  ; (Ẏ) Y with dot above
dkDotAbove["z"] := "{u+017c}"  ; (ż) z with dot above
dkDotAbove["Z"] := "{u+017b}"  ; (Ż) Z with dot above
dkDotAbove[" "] := "{u+00b7}"  ; (·) middle dot


; Dead Key :  Acute Accent

global dkAcute := Map()
dkAcute["a"] := "{u+00e1}"  ; (á) a with acute
dkAcute["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcute["c"] := "{u+0107}"  ; (ć) c with acute
dkAcute["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcute["e"] := "{u+00e9}"  ; (é) e with acute
dkAcute["E"] := "{u+00c9}"  ; (É) E with acute
dkAcute["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcute["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcute["i"] := "{u+00ed}"  ; (í) i with acute
dkAcute["I"] := "{u+00cd}"  ; (Í) I with acute
dkAcute["k"] := "{u+1e31}"  ; (ḱ) k with acute
dkAcute["K"] := "{u+1e30}"  ; (Ḱ) K with acute
dkAcute["l"] := "{u+013a}"  ; (ĺ) l with acute
dkAcute["L"] := "{u+0139}"  ; (Ĺ) L with acute
dkAcute["m"] := "{u+1e3f}"  ; (ḿ) m with acute
dkAcute["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
dkAcute["n"] := "{u+0144}"  ; (ń) n with acute
dkAcute["N"] := "{u+0143}"  ; (Ń) N with acute
dkAcute["o"] := "{u+00f3}"  ; (ó) o with acute
dkAcute["O"] := "{u+00d3}"  ; (Ó) O with acute
dkAcute["p"] := "{u+1e55}"  ; (ṕ) p with acute
dkAcute["P"] := "{u+1e54}"  ; (Ṕ) P with acute
dkAcute["r"] := "{u+0155}"  ; (ŕ) r with acute
dkAcute["R"] := "{u+0154}"  ; (Ŕ) R with acute
dkAcute["s"] := "{u+015b}"  ; (ś) s with acute
dkAcute["S"] := "{u+015a}"  ; (Ś) S with acute
dkAcute["u"] := "{u+00fa}"  ; (ú) u with acute
dkAcute["U"] := "{u+00da}"  ; (Ú) U with acute
dkAcute["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcute["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcute["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcute["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcute["z"] := "{u+017a}"  ; (ź) z with acute
dkAcute["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcute[" "] := "{u+00b4}"  ; (´) acute accent


; Dead Key :  Double Acute Accent

global dkDoubleAcute := Map()
dkDoubleAcute["o"] := "{u+0151}"  ; (ő) o with double acute
dkDoubleAcute["O"] := "{u+0150}"  ; (Ő) O with double acute
dkDoubleAcute["u"] := "{u+0171}"  ; (ű) u with double acute
dkDoubleAcute["U"] := "{u+0170}"  ; (Ű) U with double acute
dkDoubleAcute[" "] := "{u+02dd}"  ; (˝) double acute accent


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


; Dead Key :  Cedilla

global dkCedilla := Map()
dkCedilla["c"] := "{u+00e7}"  ; (ç) c with cedilla
dkCedilla["C"] := "{u+00c7}"  ; (Ç) C with cedilla
dkCedilla["d"] := "{u+1e11}"  ; (ḑ) d with cedilla
dkCedilla["D"] := "{u+1e10}"  ; (Ḑ) D with cedilla
dkCedilla["e"] := "{u+0229}"  ; (ȩ) e with cedilla
dkCedilla["E"] := "{u+0228}"  ; (Ȩ) E with cedilla
dkCedilla["g"] := "{u+0123}"  ; (ģ) g with cedilla
dkCedilla["G"] := "{u+0122}"  ; (Ģ) G with cedilla
dkCedilla["h"] := "{u+1e29}"  ; (ḩ) h with cedilla
dkCedilla["H"] := "{u+1e28}"  ; (Ḩ) H with cedilla
dkCedilla["k"] := "{u+0137}"  ; (ķ) k with cedilla
dkCedilla["K"] := "{u+0136}"  ; (Ķ) K with cedilla
dkCedilla["l"] := "{u+013c}"  ; (ļ) l with cedilla
dkCedilla["L"] := "{u+013b}"  ; (Ļ) L with cedilla
dkCedilla["n"] := "{u+0146}"  ; (ņ) n with cedilla
dkCedilla["N"] := "{u+0145}"  ; (Ņ) N with cedilla
dkCedilla["r"] := "{u+0157}"  ; (ŗ) r with cedilla
dkCedilla["R"] := "{u+0156}"  ; (Ŗ) R with cedilla
dkCedilla["s"] := "{u+015f}"  ; (ş) s with cedilla
dkCedilla["S"] := "{u+015e}"  ; (Ş) S with cedilla
dkCedilla["t"] := "{u+0163}"  ; (ţ) t with cedilla
dkCedilla["T"] := "{u+0162}"  ; (Ţ) T with cedilla
dkCedilla[" "] := "{u+00b8}"  ; (¸) cedilla


; Configuration :  US QWERTY re-assignments (KBDUSX)

+sc007::Send "{u+005e}"     ; (^) circumflex accent

sc028::Send "{u+0027}"      ; (') apostrophe
+sc028::Send "{u+0022}"     ; (") quotation mark

sc029::Send "{u+0060}"      ; (`) grave accent
+sc029::Send "{u+007e}"     ; (~) tilde

NumpadDot::Send "{u+002e}"  ; (.) period


; Configuration :  'AltGr (RAlt)' and 'AltGr (RAlt) + Shift' modifiers

; Key :  1
>!sc002::
<^>!sc002:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkTilde.Has(ih.Input)
    Send dkTilde[ih.Input]
}

; Key :  2
>!sc003::
<^>!sc003:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCaron.Has(ih.Input)
    Send dkCaron[ih.Input]
}

; Key :  3
>!sc004::
<^>!sc004:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCircumflex.Has(ih.Input)
    Send dkCircumflex[ih.Input]
}

; Key :  4
>!sc005::
<^>!sc005:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkBreve.Has(ih.Input)
    Send dkBreve[ih.Input]
}

; Key :  5
>!sc006::
<^>!sc006:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkRingAbove.Has(ih.Input)
    Send dkRingAbove[ih.Input]
}

; Key :  6
>!sc007::
<^>!sc007:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkOgonek.Has(ih.Input)
    Send dkOgonek[ih.Input]
}

; Key :  7
>!sc008::
<^>!sc008:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkGrave.Has(ih.Input)
    Send dkGrave[ih.Input]
}

; Key :  8
>!sc009::
<^>!sc009:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDotAbove.Has(ih.Input)
    Send dkDotAbove[ih.Input]
}

; Key :  9
>!sc00A::
<^>!sc00A:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkAcute.Has(ih.Input)
    Send dkAcute[ih.Input]
}

; Key :  0
>!sc00B::
<^>!sc00B:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDoubleAcute.Has(ih.Input)
    Send dkDoubleAcute[ih.Input]
}

; Key :  - / _ (hyphen-minus / underscore)
>!sc00C::
<^>!sc00C:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDiaeresis.Has(ih.Input)
    Send dkDiaeresis[ih.Input]
}
>!+sc00C::
<^>!+sc00C::Send "{u+2013}"  ; (–) en dash

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCedilla.Has(ih.Input)
    Send dkCedilla[ih.Input]
}
>!+sc00D::
<^>!+sc00D::Send "{u+00b1}"  ; (±) plus-minus sign

; Key :  Q
>!sc010::
<^>!sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c2}"  ; (Â) A with circumflex
  else
    Send "{u+00e2}"  ; (â) a with circumflex
}
>!+sc010::
<^>!+sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e2}"  ; (â) a with circumflex
  else
    Send "{u+00c2}"  ; (Â) A with circumflex
}

; Key :  W
>!sc011::
<^>!sc011:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
}
>!+sc011::
<^>!+sc011:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
  else
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
}

; Key :  E
>!sc012::
<^>!sc012::Send "{u+20ac}"  ; (€) euro sign

; Key :  T
>!sc014::
<^>!sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+021a}"  ; (Ț) T with comma below
  else
    Send "{u+021b}"  ; (ț) t with comma below
}
>!+sc014::
<^>!+sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+021b}"  ; (ț) t with comma below
  else
    Send "{u+021a}"  ; (Ț) T with comma below
}

; Key :  I
>!sc017::
<^>!sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ce}"  ; (Î) I with circumflex
  else
    Send "{u+00ee}"  ; (î) i with circumflex
}
>!+sc017::
<^>!+sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ee}"  ; (î) i with circumflex
  else
    Send "{u+00ce}"  ; (Î) I with circumflex
}

; Key :  P
>!sc019::
<^>!sc019::Send "{u+00a7}"  ; (§) section sign

; Key :  [ / { (left square bracket / left curly bracket)
>!sc01A::
<^>!sc01A::Send "{u+201e}"  ; („) double low-9 quotation mark

; Key :  ] / } (right square bracket / right curly bracket)
>!sc01B::
<^>!sc01B::Send "{u+201d}"  ; (”) right double quotation mark

; Key :  A
>!sc01E::
<^>!sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0102}"  ; (Ă) A with breve
  else
    Send "{u+0103}"  ; (ă) a with breve
}
>!+sc01E::
<^>!+sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0103}"  ; (ă) a with breve
  else
    Send "{u+0102}"  ; (Ă) A with breve
}

; Key :  S
>!sc01F::
<^>!sc01F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0218}"  ; (Ș) S with comma below
  else
    Send "{u+0219}"  ; (ș) s with comma below
}
>!+sc01F::
<^>!+sc01F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0219}"  ; (ș) s with comma below
  else
    Send "{u+0218}"  ; (Ș) S with comma below
}

; Key :  D
>!sc020::
<^>!sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0110}"  ; (Đ) D with stroke
  else
    Send "{u+0111}"  ; (đ) d with stroke
}
>!+sc020::
<^>!+sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0111}"  ; (đ) d with stroke
  else
    Send "{u+0110}"  ; (Đ) D with stroke
}

; Key :  L
>!sc026::
<^>!sc026:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0141}"  ; (Ł) L with stroke
  else
    Send "{u+0142}"  ; (ł) l with stroke
}
>!+sc026::
<^>!+sc026:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0142}"  ; (ł) l with stroke
  else
    Send "{u+0141}"  ; (Ł) L with stroke
}

; Key :  C
>!sc02E::
<^>!sc02E::Send "{u+00a9}"  ; (©) copyright sign

; Key :  , / < (comma / less-than sign)
>!sc033::
<^>!sc033::Send "{u+00ab}"  ; («) left-pointing double angle quotation mark

; Key :  . / > (period / greater-than sign)
>!sc034::
<^>!sc034::Send "{u+00bb}"  ; (») right-pointing double angle quotation mark

; Key :  (space)
>!sc039::
<^>!sc039::Send "{u+00a0}"   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send "{u+00a0}"  ; non-breaking space (NBSP)
