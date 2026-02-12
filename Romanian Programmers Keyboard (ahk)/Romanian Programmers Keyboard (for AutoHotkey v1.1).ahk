#requires AutoHotkey v1.1

; Romanian Programmers Keyboard (for AutoHotkey v1.1).ahk

; GitHub :   https://github.com/pieter-degroote/lab-tests-concepts

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout :  US QWERTY / KBDUSX



#NoEnv          ; avoids checking empty variables to see if they are environment variables
#KeyHistory 0   ; disables the key history (for privacy and security)
ListLines Off   ; omits recently executed lines from history (for privacy and security)

SendMode Input  ; optimizes for faster and more reliable input

global gEndKeys := "{bs}{esc}"  ; ends dead key input on Backspace or Escape


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


; Dead Key :  Caron

global dkCaron := ComObjCreate("Scripting.Dictionary")
dkCaron.item["a"] := "{u+01ce}"  ; (ǎ) a with caron
dkCaron.item["A"] := "{u+01cd}"  ; (Ǎ) A with caron
dkCaron.item["c"] := "{u+010d}"  ; (č) c with caron
dkCaron.item["C"] := "{u+010c}"  ; (Č) C with caron
dkCaron.item["d"] := "{u+010f}"  ; (ď) d with caron
dkCaron.item["D"] := "{u+010e}"  ; (Ď) D with caron
dkCaron.item["e"] := "{u+011b}"  ; (ě) e with caron
dkCaron.item["E"] := "{u+011a}"  ; (Ě) E with caron
dkCaron.item["g"] := "{u+01e7}"  ; (ǧ) g with caron
dkCaron.item["G"] := "{u+01e6}"  ; (Ǧ) G with caron
dkCaron.item["h"] := "{u+021f}"  ; (ȟ) h with caron
dkCaron.item["H"] := "{u+021e}"  ; (Ȟ) H with caron
dkCaron.item["i"] := "{u+01d0}"  ; (ǐ) i with caron
dkCaron.item["I"] := "{u+01cf}"  ; (Ǐ) I with caron
dkCaron.item["j"] := "{u+01f0}"  ; (ǰ) j with caron
dkCaron.item["k"] := "{u+01e9}"  ; (ǩ) k with caron
dkCaron.item["K"] := "{u+01e8}"  ; (Ǩ) K with caron
dkCaron.item["l"] := "{u+013e}"  ; (ľ) l with caron
dkCaron.item["L"] := "{u+013d}"  ; (Ľ) L with caron
dkCaron.item["n"] := "{u+0148}"  ; (ň) n with caron
dkCaron.item["N"] := "{u+0147}"  ; (Ň) N with caron
dkCaron.item["o"] := "{u+01d2}"  ; (ǒ) o with caron
dkCaron.item["O"] := "{u+01d1}"  ; (Ǒ) O with caron
dkCaron.item["r"] := "{u+0159}"  ; (ř) r with caron
dkCaron.item["R"] := "{u+0158}"  ; (Ř) R with caron
dkCaron.item["s"] := "{u+0161}"  ; (š) s with caron
dkCaron.item["S"] := "{u+0160}"  ; (Š) S with caron
dkCaron.item["t"] := "{u+0165}"  ; (ť) t with caron
dkCaron.item["T"] := "{u+0164}"  ; (Ť) T with caron
dkCaron.item["u"] := "{u+01d4}"  ; (ǔ) u with caron
dkCaron.item["U"] := "{u+01d3}"  ; (Ǔ) U with caron
dkCaron.item["z"] := "{u+017e}"  ; (ž) z with caron
dkCaron.item["Z"] := "{u+017d}"  ; (Ž) Z with caron
dkCaron.item[" "] := "{u+02c7}"  ; (ˇ) caron


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


; Dead Key :  Breve and Special Letters

global dkBreve := ComObjCreate("Scripting.Dictionary")
dkBreve.item["a"] := "{u+0103}"  ; (ă) a with breve
dkBreve.item["A"] := "{u+0102}"  ; (Ă) A with breve
dkBreve.item["e"] := "{u+0115}"  ; (ĕ) e with breve
dkBreve.item["E"] := "{u+0114}"  ; (Ĕ) E with breve
dkBreve.item["g"] := "{u+011f}"  ; (ğ) g with breve
dkBreve.item["G"] := "{u+011e}"  ; (Ğ) G with breve
dkBreve.item["i"] := "{u+012d}"  ; (ĭ) i with breve
dkBreve.item["I"] := "{u+012c}"  ; (Ĭ) I with breve
dkBreve.item["o"] := "{u+014f}"  ; (ŏ) o with breve
dkBreve.item["O"] := "{u+014e}"  ; (Ŏ) O with breve
dkBreve.item["u"] := "{u+016d}"  ; (ŭ) u with breve
dkBreve.item["U"] := "{u+016c}"  ; (Ŭ) U with breve
dkBreve.item[" "] := "{u+02d8}"  ; (˘) breve


; Dead Key :  Ring Above

global dkRingAbove := ComObjCreate("Scripting.Dictionary")
dkRingAbove.item["a"] := "{u+00e5}"  ; (å) a with ring above
dkRingAbove.item["A"] := "{u+00c5}"  ; (Å) A with ring above
dkRingAbove.item["u"] := "{u+016f}"  ; (ů) u with ring above
dkRingAbove.item["U"] := "{u+016e}"  ; (Ů) U with ring above
dkRingAbove.item["w"] := "{u+1e98}"  ; (ẘ) w with ring above
dkRingAbove.item["y"] := "{u+1e99}"  ; (ẙ) y with ring above
dkRingAbove.item[" "] := "{u+00b0}"  ; (°) degree sign



; Dead Key :  Ogonek

global dkOgonek := ComObjCreate("Scripting.Dictionary")
dkOgonek.item["a"] := "{u+0105}"  ; (ą) a with ogonek
dkOgonek.item["A"] := "{u+0104}"  ; (Ą) A with ogonek
dkOgonek.item["e"] := "{u+0119}"  ; (ę) e with ogonek
dkOgonek.item["E"] := "{u+0118}"  ; (Ę) E with ogonek
dkOgonek.item["i"] := "{u+012f}"  ; (į) i with ogonek
dkOgonek.item["I"] := "{u+012e}"  ; (Į) I with ogonek
dkOgonek.item["o"] := "{u+01eb}"  ; (ǫ) o with ogonek
dkOgonek.item["O"] := "{u+01ea}"  ; (Ǫ) O with ogonek
dkOgonek.item["u"] := "{u+0173}"  ; (ų) u with ogonek
dkOgonek.item["U"] := "{u+0172}"  ; (Ų) U with ogonek
dkOgonek.item[" "] := "{u+02db}"  ; (˛) ogonek


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


; Dead Key :  Dot Above

global dkDotAbove := ComObjCreate("Scripting.Dictionary")
dkDotAbove.item["a"] := "{u+0227}"  ; (ȧ) a with dot above
dkDotAbove.item["A"] := "{u+0226}"  ; (Ȧ) A with dot above
dkDotAbove.item["b"] := "{u+1e03}"  ; (ḃ) b with dot above
dkDotAbove.item["B"] := "{u+1e02}"  ; (Ḃ) B with dot above
dkDotAbove.item["c"] := "{u+010b}"  ; (ċ) c with dot above
dkDotAbove.item["C"] := "{u+010a}"  ; (Ċ) C with dot above
dkDotAbove.item["d"] := "{u+1e0b}"  ; (ḋ) d with dot above
dkDotAbove.item["D"] := "{u+1e0a}"  ; (Ḋ) D with dot above
dkDotAbove.item["e"] := "{u+0117}"  ; (ė) e with dot above
dkDotAbove.item["E"] := "{u+0116}"  ; (Ė) E with dot above
dkDotAbove.item["f"] := "{u+1e1f}"  ; (ḟ) f with dot above
dkDotAbove.item["F"] := "{u+1e1e}"  ; (Ḟ) F with dot above
dkDotAbove.item["g"] := "{u+0121}"  ; (ġ) g with dot above
dkDotAbove.item["G"] := "{u+0120}"  ; (Ġ) G with dot above
dkDotAbove.item["h"] := "{u+1e23}"  ; (ḣ) h with dot above
dkDotAbove.item["H"] := "{u+1e22}"  ; (Ḣ) H with dot above
dkDotAbove.item["i"] := "{u+0131}"  ; (ı) dotless i
dkDotAbove.item["I"] := "{u+0130}"  ; (İ) I with dot above
dkDotAbove.item["j"] := "{u+0237}"  ; (ȷ) dotless j
dkDotAbove.item["l"] := "{u+0140}"  ; (ŀ) l with middle dot
dkDotAbove.item["L"] := "{u+013f}"  ; (Ŀ) L with middle dot
dkDotAbove.item["m"] := "{u+1e41}"  ; (ṁ) m with dot above
dkDotAbove.item["M"] := "{u+1e40}"  ; (Ṁ) M with dot above
dkDotAbove.item["n"] := "{u+1e45}"  ; (ṅ) n with dot above
dkDotAbove.item["N"] := "{u+1e44}"  ; (Ṅ) N with dot above
dkDotAbove.item["o"] := "{u+022f}"  ; (ȯ) o with dot above
dkDotAbove.item["O"] := "{u+022e}"  ; (Ȯ) O with dot above
dkDotAbove.item["p"] := "{u+1e57}"  ; (ṗ) p with dot above
dkDotAbove.item["P"] := "{u+1e56}"  ; (Ṗ) P with dot above
dkDotAbove.item["r"] := "{u+1e59}"  ; (ṙ) r with dot above
dkDotAbove.item["R"] := "{u+1e58}"  ; (Ṙ) R with dot above
dkDotAbove.item["s"] := "{u+1e61}"  ; (ṡ) s with dot above
dkDotAbove.item["S"] := "{u+1e60}"  ; (Ṡ) S with dot above
dkDotAbove.item["t"] := "{u+1e6b}"  ; (ṫ) t with dot above
dkDotAbove.item["T"] := "{u+1e6a}"  ; (Ṫ) T with dot above
dkDotAbove.item["w"] := "{u+1e87}"  ; (ẇ) w with dot above
dkDotAbove.item["W"] := "{u+1e86}"  ; (Ẇ) W with dot above
dkDotAbove.item["x"] := "{u+1e8b}"  ; (ẋ) x with dot above
dkDotAbove.item["X"] := "{u+1e8a}"  ; (Ẋ) X with dot above
dkDotAbove.item["y"] := "{u+1e8f}"  ; (ẏ) y with dot above
dkDotAbove.item["Y"] := "{u+1e8e}"  ; (Ẏ) Y with dot above
dkDotAbove.item["z"] := "{u+017c}"  ; (ż) z with dot above
dkDotAbove.item["Z"] := "{u+017b}"  ; (Ż) Z with dot above
dkDotAbove.item[" "] := "{u+00b7}"  ; (·) middle dot


; Dead Key :  Acute Accent

global dkAcute := ComObjCreate("Scripting.Dictionary")
dkAcute.item["a"] := "{u+00e1}"  ; (á) a with acute
dkAcute.item["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcute.item["c"] := "{u+0107}"  ; (ć) c with acute
dkAcute.item["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcute.item["e"] := "{u+00e9}"  ; (é) e with acute
dkAcute.item["E"] := "{u+00c9}"  ; (É) E with acute
dkAcute.item["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcute.item["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcute.item["i"] := "{u+00ed}"  ; (í) i with acute
dkAcute.item["I"] := "{u+00cd}"  ; (Í) I with acute
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


; Dead Key :  Double Acute Accent

global dkDoubleAcute := ComObjCreate("Scripting.Dictionary")
dkDoubleAcute.item["o"] := "{u+0151}"  ; (ő) o with double acute
dkDoubleAcute.item["O"] := "{u+0150}"  ; (Ő) O with double acute
dkDoubleAcute.item["u"] := "{u+0171}"  ; (ű) u with double acute
dkDoubleAcute.item["U"] := "{u+0170}"  ; (Ű) U with double acute
dkDoubleAcute.item[" "] := "{u+02dd}"  ; (˝) double acute accent


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


; Dead Key :  Cedilla

global dkCedilla := ComObjCreate("Scripting.Dictionary")
dkCedilla.item["c"] := "{u+00e7}"  ; (ç) c with cedilla
dkCedilla.item["C"] := "{u+00c7}"  ; (Ç) C with cedilla
dkCedilla.item["d"] := "{u+1e11}"  ; (ḑ) d with cedilla
dkCedilla.item["D"] := "{u+1e10}"  ; (Ḑ) D with cedilla
dkCedilla.item["e"] := "{u+0229}"  ; (ȩ) e with cedilla
dkCedilla.item["E"] := "{u+0228}"  ; (Ȩ) E with cedilla
dkCedilla.item["g"] := "{u+0123}"  ; (ģ) g with cedilla
dkCedilla.item["G"] := "{u+0122}"  ; (Ģ) G with cedilla
dkCedilla.item["h"] := "{u+1e29}"  ; (ḩ) h with cedilla
dkCedilla.item["H"] := "{u+1e28}"  ; (Ḩ) H with cedilla
dkCedilla.item["k"] := "{u+0137}"  ; (ķ) k with cedilla
dkCedilla.item["K"] := "{u+0136}"  ; (Ķ) K with cedilla
dkCedilla.item["l"] := "{u+013c}"  ; (ļ) l with cedilla
dkCedilla.item["L"] := "{u+013b}"  ; (Ļ) L with cedilla
dkCedilla.item["n"] := "{u+0146}"  ; (ņ) n with cedilla
dkCedilla.item["N"] := "{u+0145}"  ; (Ņ) N with cedilla
dkCedilla.item["r"] := "{u+0157}"  ; (ŗ) r with cedilla
dkCedilla.item["R"] := "{u+0156}"  ; (Ŗ) R with cedilla
dkCedilla.item["s"] := "{u+015f}"  ; (ş) s with cedilla
dkCedilla.item["S"] := "{u+015e}"  ; (Ş) S with cedilla
dkCedilla.item["t"] := "{u+0163}"  ; (ţ) t with cedilla
dkCedilla.item["T"] := "{u+0162}"  ; (Ţ) T with cedilla
dkCedilla.item[" "] := "{u+00b8}"  ; (¸) cedilla


; Configuration :  US QWERTY re-assignments (KBDUSX)

+sc007::Send {u+005e}     ; (^) circumflex accent

sc028::Send {u+0027}      ; (') apostrophe
+sc028::Send {u+0022}     ; (") quotation mark

sc029::Send {u+0060}      ; (`) grave accent
+sc029::Send {u+007e}     ; (~) tilde

NumpadDot::Send {u+002e}  ; (.) period


; Configuration :  'AltGr (RAlt)' and 'AltGr (RAlt) + Shift' modifiers

; Key :  1
>!sc002::
<^>!sc002::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkTilde.item[ih.Input]
  return

; Key :  2
>!sc003::
<^>!sc003::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkCaron.item[ih.Input]
  return

; Key :  3
>!sc004::
<^>!sc004::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkCircumflex.item[ih.Input]
  return

; Key :  4
>!sc005::
<^>!sc005::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkBreve.item[ih.Input]
  return

; Key :  5
>!sc006::
<^>!sc006::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkRingAbove.item[ih.Input]
  return

; Key :  6
>!sc007::
<^>!sc007::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkOgonek.item[ih.Input]
  return

; Key :  7
>!sc008::
<^>!sc008::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkGrave.item[ih.Input]
  return

; Key :  8
>!sc009::
<^>!sc009::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkDotAbove.item[ih.Input]
  return

; Key :  9
>!sc00A::
<^>!sc00A::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkAcute.item[ih.Input]
  return

; Key :  0
>!sc00B::
<^>!sc00B::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkDoubleAcute.item[ih.Input]
  return

; Key :  - / _ (hyphen-minus / underscore)
>!sc00C::
<^>!sc00C::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkDiaeresis.item[ih.Input]
  return
>!+sc00C::
<^>!+sc00C::Send {u+2013}  ; (–) en dash

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  Send % dkCedilla.item[ih.Input]
  return
>!+sc00D::
<^>!+sc00D::Send {u+00b1}  ; (±) plus-minus sign

; Key :  Q
>!sc010::
<^>!sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+00c2}  ; (Â) A with circumflex
  else
    Send {u+00e2}  ; (â) a with circumflex
  return
>!+sc010::
<^>!+sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+00e2}  ; (â) a with circumflex
  else
    Send {u+00c2}  ; (Â) A with circumflex
  return

; Key :  W
>!sc011::
<^>!sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  return
>!+sc011::
<^>!+sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  else
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  return

; Key :  E
>!sc012::
<^>!sc012::Send {u+20ac}  ; (€) euro sign

; Key :  T
>!sc014::
<^>!sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+021a}  ; (Ț) T with comma below
  else
    Send {u+021b}  ; (ț) t with comma below
  return
>!+sc014::
<^>!+sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+021b}  ; (ț) t with comma below
  else
    Send {u+021a}  ; (Ț) T with comma below
  return

; Key :  I
>!sc017::
<^>!sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+00ce}  ; (Î) I with circumflex
  else
    Send {u+00ee}  ; (î) i with circumflex
  return
>!+sc017::
<^>!+sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+00ee}  ; (î) i with circumflex
  else
    Send {u+00ce}  ; (Î) I with circumflex
  return

; Key :  P
>!sc019::
<^>!sc019::Send {u+00a7}  ; (§) section sign

; Key :  [ / { (left square bracket / left curly bracket)
>!sc01A::
<^>!sc01A::Send {u+201e}  ; („) double low-9 quotation mark

; Key :  ] / } (right square bracket / right curly bracket)
>!sc01B::
<^>!sc01B::Send {u+201d}  ; (”) right double quotation mark

; Key :  A
>!sc01E::
<^>!sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+0102}  ; (Ă) A with breve
  else
    Send {u+0103}  ; (ă) a with breve
  return
>!+sc01E::
<^>!+sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+0103}  ; (ă) a with breve
  else
    Send {u+0102}  ; (Ă) A with breve
  return

; Key :  S
>!sc01F::
<^>!sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+0218}  ; (Ș) S with comma below
  else
    Send {u+0219}  ; (ș) s with comma below
  return
>!+sc01F::
<^>!+sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+0219}  ; (ș) s with comma below
  else
    Send {u+0218}  ; (Ș) S with comma below
  return

; Key :  D
>!sc020::
<^>!sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+0110}  ; (Đ) D with stroke
  else
    Send {u+0111}  ; (đ) d with stroke
  return
>!+sc020::
<^>!+sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+0111}  ; (đ) d with stroke
  else
    Send {u+0110}  ; (Đ) D with stroke
  return

; Key :  L
>!sc026::
<^>!sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+0141}  ; (Ł) L with stroke
  else
    Send {u+0142}  ; (ł) l with stroke
  return
>!+sc026::
<^>!+sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+0142}  ; (ł) l with stroke
  else
    Send {u+0141}  ; (Ł) L with stroke
  return

; Key :  C
>!sc02E::
<^>!sc02E::Send {u+00a9}  ; (©) copyright sign

; Key :  , / < (comma / less-than sign)
>!sc033::
<^>!sc033::Send {u+00ab}  ; («) left-pointing double angle quotation mark

; Key :  . / > (period / greater-than sign)
>!sc034::
<^>!sc034::Send {u+00bb}  ; (») right-pointing double angle quotation mark

; Key :  (space)
>!sc039::
<^>!sc039::Send {u+00a0}   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send {u+00a0}  ; non-breaking space (NBSP)
