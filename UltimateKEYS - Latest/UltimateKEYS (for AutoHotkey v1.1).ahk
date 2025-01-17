#requires AutoHotkey v1.1

; UltimateKEYS (for AutoHotkey v1.1).ahk - 2025-01-15

; Website :  https://pieter-degroote.github.io/UltimateKEYS/

; GitHub :   https://github.com/pieter-degroote/UltimateKEYS

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout :  US QWERTY



#NoEnv          ; avoids checking empty variables to see if they are environment variables
#KeyHistory 0   ; disables the key history (for privacy and security)
ListLines Off   ; omits recently executed lines from history (for privacy and security)

SendMode Input  ; optimizes for faster and more reliable input


; Compose :  Acute Accent (')

cmpAcuteAccent := ComObjCreate("Scripting.Dictionary")
cmpAcuteAccent.item["a"] := "{u+00e1}"  ; (á) a with acute
cmpAcuteAccent.item["A"] := "{u+00c1}"  ; (Á) A with acute
cmpAcuteAccent.item["c"] := "{u+0107}"  ; (ć) c with acute
cmpAcuteAccent.item["C"] := "{u+0106}"  ; (Ć) C with acute
cmpAcuteAccent.item["d"] := "{u+1e09}"  ; (ḉ) c with cedilla and acute
cmpAcuteAccent.item["D"] := "{u+1e08}"  ; (Ḉ) C with cedilla and acute
cmpAcuteAccent.item["e"] := "{u+00e9}"  ; (é) e with acute
cmpAcuteAccent.item["E"] := "{u+00c9}"  ; (É) E with acute
cmpAcuteAccent.item["g"] := "{u+01f5}"  ; (ǵ) g with acute
cmpAcuteAccent.item["G"] := "{u+01f4}"  ; (Ǵ) G with acute
cmpAcuteAccent.item["i"] := "{u+00ed}"  ; (í) i with acute
cmpAcuteAccent.item["I"] := "{u+00cd}"  ; (Í) I with acute
cmpAcuteAccent.item["j"] := "{u+01ff}"  ; (ǿ) o with stroke and acute
cmpAcuteAccent.item["J"] := "{u+01fe}"  ; (Ǿ) O with stroke and acute
cmpAcuteAccent.item["k"] := "{u+1e31}"  ; (ḱ) k with acute
cmpAcuteAccent.item["K"] := "{u+1e30}"  ; (Ḱ) K with acute
cmpAcuteAccent.item["l"] := "{u+013a}"  ; (ĺ) l with acute
cmpAcuteAccent.item["L"] := "{u+0139}"  ; (Ĺ) L with acute
cmpAcuteAccent.item["m"] := "{u+1e3f}"  ; (ḿ) m with acute
cmpAcuteAccent.item["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
cmpAcuteAccent.item["n"] := "{u+0144}"  ; (ń) n with acute
cmpAcuteAccent.item["N"] := "{u+0143}"  ; (Ń) N with acute
cmpAcuteAccent.item["o"] := "{u+00f3}"  ; (ó) o with acute
cmpAcuteAccent.item["O"] := "{u+00d3}"  ; (Ó) O with acute
cmpAcuteAccent.item["p"] := "{u+1e55}"  ; (ṕ) p with acute
cmpAcuteAccent.item["P"] := "{u+1e54}"  ; (Ṕ) P with acute
cmpAcuteAccent.item["q"] := "{u+01fd}"  ; (ǽ) ae with acute
cmpAcuteAccent.item["Q"] := "{u+01fc}"  ; (Ǽ) AE with acute
cmpAcuteAccent.item["r"] := "{u+0155}"  ; (ŕ) r with acute
cmpAcuteAccent.item["R"] := "{u+0154}"  ; (Ŕ) R with acute
cmpAcuteAccent.item["s"] := "{u+015b}"  ; (ś) s with acute
cmpAcuteAccent.item["S"] := "{u+015a}"  ; (Ś) S with acute
cmpAcuteAccent.item["u"] := "{u+00fa}"  ; (ú) u with acute
cmpAcuteAccent.item["U"] := "{u+00da}"  ; (Ú) U with acute
cmpAcuteAccent.item["w"] := "{u+1e83}"  ; (ẃ) w with acute
cmpAcuteAccent.item["W"] := "{u+1e82}"  ; (Ẃ) W with acute
cmpAcuteAccent.item["x"] := "{u+01fb}"  ; (ǻ) a with ring above and acute
cmpAcuteAccent.item["X"] := "{u+01fa}"  ; (Ǻ) A with ring above and acute
cmpAcuteAccent.item["y"] := "{u+00fd}"  ; (ý) y with acute
cmpAcuteAccent.item["Y"] := "{u+00dd}"  ; (Ý) Y with acute
cmpAcuteAccent.item["z"] := "{u+017a}"  ; (ź) z with acute
cmpAcuteAccent.item["Z"] := "{u+0179}"  ; (Ź) Z with acute


; Compose :  Grave Accent (`)

cmpGraveAccent := ComObjCreate("Scripting.Dictionary")
cmpGraveAccent.item["a"] := "{u+00e0}"  ; (à) a with grave
cmpGraveAccent.item["A"] := "{u+00c0}"  ; (À) A with grave
cmpGraveAccent.item["e"] := "{u+00e8}"  ; (è) e with grave
cmpGraveAccent.item["E"] := "{u+00c8}"  ; (È) E with grave
cmpGraveAccent.item["i"] := "{u+00ec}"  ; (ì) i with grave
cmpGraveAccent.item["I"] := "{u+00cc}"  ; (Ì) I with grave
cmpGraveAccent.item["n"] := "{u+01f9}"  ; (ǹ) n with grave
cmpGraveAccent.item["N"] := "{u+01f8}"  ; (Ǹ) N with grave
cmpGraveAccent.item["o"] := "{u+00f2}"  ; (ò) o with grave
cmpGraveAccent.item["O"] := "{u+00d2}"  ; (Ò) O with grave
cmpGraveAccent.item["u"] := "{u+00f9}"  ; (ù) u with grave
cmpGraveAccent.item["U"] := "{u+00d9}"  ; (Ù) U with grave
cmpGraveAccent.item["w"] := "{u+1e81}"  ; (ẁ) w with grave
cmpGraveAccent.item["W"] := "{u+1e80}"  ; (Ẁ) W with grave
cmpGraveAccent.item["y"] := "{u+1ef3}"  ; (ỳ) y with grave
cmpGraveAccent.item["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave


; Compose :  Diaeresis (")

cmpDiaeresis := ComObjCreate("Scripting.Dictionary")
cmpDiaeresis.item["a"] := "{u+00e4}"  ; (ä) a with diaeresis
cmpDiaeresis.item["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
cmpDiaeresis.item["e"] := "{u+00eb}"  ; (ë) e with diaeresis
cmpDiaeresis.item["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
cmpDiaeresis.item["h"] := "{u+1e27}"  ; (ḧ) h with diaeresis
cmpDiaeresis.item["H"] := "{u+1e26}"  ; (Ḧ) H with diaeresis
cmpDiaeresis.item["i"] := "{u+00ef}"  ; (ï) i with diaeresis
cmpDiaeresis.item["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
cmpDiaeresis.item["o"] := "{u+00f6}"  ; (ö) o with diaeresis
cmpDiaeresis.item["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
cmpDiaeresis.item["t"] := "{u+1e97}"  ; (ẗ) t with diaeresis
cmpDiaeresis.item["u"] := "{u+00fc}"  ; (ü) u with diaeresis
cmpDiaeresis.item["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
cmpDiaeresis.item["w"] := "{u+1e85}"  ; (ẅ) w with diaeresis
cmpDiaeresis.item["W"] := "{u+1e84}"  ; (Ẅ) W with diaeresis
cmpDiaeresis.item["x"] := "{u+1e8d}"  ; (ẍ) x with diaeresis
cmpDiaeresis.item["X"] := "{u+1e8c}"  ; (Ẍ) X with diaeresis
cmpDiaeresis.item["y"] := "{u+00ff}"  ; (ÿ) y with diaeresis
cmpDiaeresis.item["Y"] := "{u+0178}"  ; (Ÿ) Y with diaeresis


; Compose :  Circumflex Accent (c)

cmpCircumflex := ComObjCreate("Scripting.Dictionary")
cmpCircumflex.item["a"] := "{u+00e2}"  ; (â) a with circumflex
cmpCircumflex.item["A"] := "{u+00c2}"  ; (Â) A with circumflex
cmpCircumflex.item["c"] := "{u+0109}"  ; (ĉ) c with circumflex
cmpCircumflex.item["C"] := "{u+0108}"  ; (Ĉ) C with circumflex
cmpCircumflex.item["e"] := "{u+00ea}"  ; (ê) e with circumflex
cmpCircumflex.item["E"] := "{u+00ca}"  ; (Ê) E with circumflex
cmpCircumflex.item["g"] := "{u+011d}"  ; (ĝ) g with circumflex
cmpCircumflex.item["G"] := "{u+011c}"  ; (Ĝ) G with circumflex
cmpCircumflex.item["h"] := "{u+0125}"  ; (ĥ) h with circumflex
cmpCircumflex.item["H"] := "{u+0124}"  ; (Ĥ) H with circumflex
cmpCircumflex.item["i"] := "{u+00ee}"  ; (î) i with circumflex
cmpCircumflex.item["I"] := "{u+00ce}"  ; (Î) I with circumflex
cmpCircumflex.item["j"] := "{u+0135}"  ; (ĵ) j with circumflex
cmpCircumflex.item["J"] := "{u+0134}"  ; (Ĵ) J with circumflex
cmpCircumflex.item["o"] := "{u+00f4}"  ; (ô) o with circumflex
cmpCircumflex.item["O"] := "{u+00d4}"  ; (Ô) O with circumflex
cmpCircumflex.item["s"] := "{u+015d}"  ; (ŝ) s with circumflex
cmpCircumflex.item["S"] := "{u+015c}"  ; (Ŝ) S with circumflex
cmpCircumflex.item["u"] := "{u+00fb}"  ; (û) u with circumflex
cmpCircumflex.item["U"] := "{u+00db}"  ; (Û) U with circumflex
cmpCircumflex.item["w"] := "{u+0175}"  ; (ŵ) w with circumflex
cmpCircumflex.item["W"] := "{u+0174}"  ; (Ŵ) W with circumflex
cmpCircumflex.item["y"] := "{u+0177}"  ; (ŷ) y with circumflex
cmpCircumflex.item["Y"] := "{u+0176}"  ; (Ŷ) Y with circumflex
cmpCircumflex.item["z"] := "{u+1e91}"  ; (ẑ) z with circumflex
cmpCircumflex.item["Z"] := "{u+1e90}"  ; (Ẑ) Z with circumflex


; Compose :  Tilde (~)

cmpTilde := ComObjCreate("Scripting.Dictionary")
cmpTilde.item["a"] := "{u+00e3}"  ; (ã) a with tilde
cmpTilde.item["A"] := "{u+00c3}"  ; (Ã) A with tilde
cmpTilde.item["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
cmpTilde.item["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
cmpTilde.item["i"] := "{u+0129}"  ; (ĩ) i with tilde
cmpTilde.item["I"] := "{u+0128}"  ; (Ĩ) I with tilde
cmpTilde.item["l"] := "{u+026b}"  ; (ɫ) l with middle tilde
cmpTilde.item["L"] := "{u+2c62}"  ; (Ɫ) L with middle tilde
cmpTilde.item["n"] := "{u+00f1}"  ; (ñ) n with tilde
cmpTilde.item["N"] := "{u+00d1}"  ; (Ñ) N with tilde
cmpTilde.item["o"] := "{u+00f5}"  ; (õ) o with tilde
cmpTilde.item["O"] := "{u+00d5}"  ; (Õ) O with tilde
cmpTilde.item["u"] := "{u+0169}"  ; (ũ) u with tilde
cmpTilde.item["U"] := "{u+0168}"  ; (Ũ) U with tilde
cmpTilde.item["v"] := "{u+1e7d}"  ; (ṽ) v with tilde
cmpTilde.item["V"] := "{u+1e7c}"  ; (Ṽ) V with tilde
cmpTilde.item["y"] := "{u+1ef9}"  ; (ỹ) y with tilde
cmpTilde.item["Y"] := "{u+1ef8}"  ; (Ỹ) Y with tilde


; Compose :  Cedilla and Ogonek (,)

cmpCedillaOgonek := ComObjCreate("Scripting.Dictionary")
cmpCedillaOgonek.item["a"] := "{u+0105}"  ; (ą) a with ogonek
cmpCedillaOgonek.item["A"] := "{u+0104}"  ; (Ą) A with ogonek
cmpCedillaOgonek.item["c"] := "{u+00e7}"  ; (ç) c with cedilla
cmpCedillaOgonek.item["C"] := "{u+00c7}"  ; (Ç) C with cedilla
cmpCedillaOgonek.item["d"] := "{u+1e11}"  ; (ḑ) d with cedilla
cmpCedillaOgonek.item["D"] := "{u+1e10}"  ; (Ḑ) D with cedilla
cmpCedillaOgonek.item["e"] := "{u+0119}"  ; (ę) e with ogonek
cmpCedillaOgonek.item["E"] := "{u+0118}"  ; (Ę) E with ogonek
cmpCedillaOgonek.item["f"] := "{u+0229}"  ; (ȩ) e with cedilla
cmpCedillaOgonek.item["F"] := "{u+0228}"  ; (Ȩ) E with cedilla
cmpCedillaOgonek.item["g"] := "{u+0123}"  ; (ģ) g with cedilla
cmpCedillaOgonek.item["G"] := "{u+0122}"  ; (Ģ) G with cedilla
cmpCedillaOgonek.item["h"] := "{u+1e29}"  ; (ḩ) h with cedilla
cmpCedillaOgonek.item["H"] := "{u+1e28}"  ; (Ḩ) H with cedilla
cmpCedillaOgonek.item["i"] := "{u+012f}"  ; (į) i with ogonek
cmpCedillaOgonek.item["I"] := "{u+012e}"  ; (Į) I with ogonek
cmpCedillaOgonek.item["k"] := "{u+0137}"  ; (ķ) k with cedilla
cmpCedillaOgonek.item["K"] := "{u+0136}"  ; (Ķ) K with cedilla
cmpCedillaOgonek.item["l"] := "{u+013c}"  ; (ļ) l with cedilla
cmpCedillaOgonek.item["L"] := "{u+013b}"  ; (Ļ) L with cedilla
cmpCedillaOgonek.item["n"] := "{u+0146}"  ; (ņ) n with cedilla
cmpCedillaOgonek.item["N"] := "{u+0145}"  ; (Ņ) N with cedilla
cmpCedillaOgonek.item["o"] := "{u+01eb}"  ; (ǫ) o with ogonek
cmpCedillaOgonek.item["O"] := "{u+01ea}"  ; (Ǫ) O with ogonek
cmpCedillaOgonek.item["r"] := "{u+0157}"  ; (ŗ) r with cedilla
cmpCedillaOgonek.item["R"] := "{u+0156}"  ; (Ŗ) R with cedilla
cmpCedillaOgonek.item["s"] := "{u+015f}"  ; (ş) s with cedilla
cmpCedillaOgonek.item["S"] := "{u+015e}"  ; (Ş) S with cedilla
cmpCedillaOgonek.item["t"] := "{u+0163}"  ; (ţ) t with cedilla
cmpCedillaOgonek.item["T"] := "{u+0162}"  ; (Ţ) T with cedilla
cmpCedillaOgonek.item["u"] := "{u+0173}"  ; (ų) u with ogonek
cmpCedillaOgonek.item["U"] := "{u+0172}"  ; (Ų) U with ogonek


; Compose :  Caron (v)

cmpCaron := ComObjCreate("Scripting.Dictionary")
cmpCaron.item["a"] := "{u+01ce}"  ; (ǎ) a with caron
cmpCaron.item["A"] := "{u+01cd}"  ; (Ǎ) A with caron
cmpCaron.item["c"] := "{u+010d}"  ; (č) c with caron
cmpCaron.item["C"] := "{u+010c}"  ; (Č) C with caron
cmpCaron.item["d"] := "{u+010f}"  ; (ď) d with caron
cmpCaron.item["D"] := "{u+010e}"  ; (Ď) D with caron
cmpCaron.item["e"] := "{u+011b}"  ; (ě) e with caron
cmpCaron.item["E"] := "{u+011a}"  ; (Ě) E with caron
cmpCaron.item["g"] := "{u+01e7}"  ; (ǧ) g with caron
cmpCaron.item["G"] := "{u+01e6}"  ; (Ǧ) G with caron
cmpCaron.item["h"] := "{u+021f}"  ; (ȟ) h with caron
cmpCaron.item["H"] := "{u+021e}"  ; (Ȟ) H with caron
cmpCaron.item["i"] := "{u+01d0}"  ; (ǐ) i with caron
cmpCaron.item["I"] := "{u+01cf}"  ; (Ǐ) I with caron
cmpCaron.item["j"] := "{u+01f0}"  ; (ǰ) j with caron
cmpCaron.item["k"] := "{u+01e9}"  ; (ǩ) k with caron
cmpCaron.item["K"] := "{u+01e8}"  ; (Ǩ) K with caron
cmpCaron.item["l"] := "{u+013e}"  ; (ľ) l with caron
cmpCaron.item["L"] := "{u+013d}"  ; (Ľ) L with caron
cmpCaron.item["n"] := "{u+0148}"  ; (ň) n with caron
cmpCaron.item["N"] := "{u+0147}"  ; (Ň) N with caron
cmpCaron.item["o"] := "{u+01d2}"  ; (ǒ) o with caron
cmpCaron.item["O"] := "{u+01d1}"  ; (Ǒ) O with caron
cmpCaron.item["r"] := "{u+0159}"  ; (ř) r with caron
cmpCaron.item["R"] := "{u+0158}"  ; (Ř) R with caron
cmpCaron.item["s"] := "{u+0161}"  ; (š) s with caron
cmpCaron.item["S"] := "{u+0160}"  ; (Š) S with caron
cmpCaron.item["t"] := "{u+0165}"  ; (ť) t with caron
cmpCaron.item["T"] := "{u+0164}"  ; (Ť) T with caron
cmpCaron.item["u"] := "{u+01d4}"  ; (ǔ) u with caron
cmpCaron.item["U"] := "{u+01d3}"  ; (Ǔ) U with caron
cmpCaron.item["z"] := "{u+017e}"  ; (ž) z with caron
cmpCaron.item["Z"] := "{u+017d}"  ; (Ž) Z with caron
cmpCaron.item["3"] := "{u+01ef}"  ; (ǯ) small letter ezh with caron
cmpCaron.item["#"] := "{u+01ee}"  ; (Ǯ) capital letter ezh with caron


; Compose :  Dot Above (.)

cmpDotAbove := ComObjCreate("Scripting.Dictionary")
cmpDotAbove.item["a"] := "{u+0227}"  ; (ȧ) a with dot above
cmpDotAbove.item["A"] := "{u+0226}"  ; (Ȧ) A with dot above
cmpDotAbove.item["b"] := "{u+1e03}"  ; (ḃ) b with dot above
cmpDotAbove.item["B"] := "{u+1e02}"  ; (Ḃ) B with dot above
cmpDotAbove.item["c"] := "{u+010b}"  ; (ċ) c with dot above
cmpDotAbove.item["C"] := "{u+010a}"  ; (Ċ) C with dot above
cmpDotAbove.item["d"] := "{u+1e0b}"  ; (ḋ) d with dot above
cmpDotAbove.item["D"] := "{u+1e0a}"  ; (Ḋ) D with dot above
cmpDotAbove.item["e"] := "{u+0117}"  ; (ė) e with dot above
cmpDotAbove.item["E"] := "{u+0116}"  ; (Ė) E with dot above
cmpDotAbove.item["f"] := "{u+1e1f}"  ; (ḟ) f with dot above
cmpDotAbove.item["F"] := "{u+1e1e}"  ; (Ḟ) F with dot above
cmpDotAbove.item["g"] := "{u+0121}"  ; (ġ) g with dot above
cmpDotAbove.item["G"] := "{u+0120}"  ; (Ġ) G with dot above
cmpDotAbove.item["h"] := "{u+1e23}"  ; (ḣ) h with dot above
cmpDotAbove.item["H"] := "{u+1e22}"  ; (Ḣ) H with dot above
cmpDotAbove.item["i"] := "{u+0131}"  ; (ı) dotless i (Turkish, Azerbaijani)
cmpDotAbove.item["I"] := "{u+0130}"  ; (İ) I with dot above (Turkish, Azerbaijani)
cmpDotAbove.item["j"] := "{u+0237}"  ; (ȷ) dotless j
cmpDotAbove.item["l"] := "{u+0140}"  ; (ŀ) l with middle dot
cmpDotAbove.item["L"] := "{u+013f}"  ; (Ŀ) L with middle dot
cmpDotAbove.item["m"] := "{u+1e41}"  ; (ṁ) m with dot above
cmpDotAbove.item["M"] := "{u+1e40}"  ; (Ṁ) M with dot above
cmpDotAbove.item["n"] := "{u+1e45}"  ; (ṅ) n with dot above
cmpDotAbove.item["N"] := "{u+1e44}"  ; (Ṅ) N with dot above
cmpDotAbove.item["o"] := "{u+022f}"  ; (ȯ) o with dot above
cmpDotAbove.item["O"] := "{u+022e}"  ; (Ȯ) O with dot above
cmpDotAbove.item["p"] := "{u+1e57}"  ; (ṗ) p with dot above
cmpDotAbove.item["P"] := "{u+1e56}"  ; (Ṗ) P with dot above
cmpDotAbove.item["q"] := "{u+1e9b}"  ; (ẛ) long s with dot above
cmpDotAbove.item["r"] := "{u+1e59}"  ; (ṙ) r with dot above
cmpDotAbove.item["R"] := "{u+1e58}"  ; (Ṙ) R with dot above
cmpDotAbove.item["s"] := "{u+1e61}"  ; (ṡ) s with dot above
cmpDotAbove.item["S"] := "{u+1e60}"  ; (Ṡ) S with dot above
cmpDotAbove.item["t"] := "{u+1e6b}"  ; (ṫ) t with dot above
cmpDotAbove.item["T"] := "{u+1e6a}"  ; (Ṫ) T with dot above
cmpDotAbove.item["u"] := "{u+016f}"  ; (ů) u with ring above
cmpDotAbove.item["U"] := "{u+016e}"  ; (Ů) U with ring above
cmpDotAbove.item["w"] := "{u+1e87}"  ; (ẇ) w with dot above
cmpDotAbove.item["W"] := "{u+1e86}"  ; (Ẇ) W with dot above
cmpDotAbove.item["x"] := "{u+1e8b}"  ; (ẋ) x with dot above
cmpDotAbove.item["X"] := "{u+1e8a}"  ; (Ẋ) X with dot above
cmpDotAbove.item["y"] := "{u+1e8f}"  ; (ẏ) y with dot above
cmpDotAbove.item["Y"] := "{u+1e8e}"  ; (Ẏ) Y with dot above
cmpDotAbove.item["z"] := "{u+017c}"  ; (ż) z with dot above
cmpDotAbove.item["Z"] := "{u+017b}"  ; (Ż) Z with dot above


; Compose :  Ring Above (o)

cmpRingAbove := ComObjCreate("Scripting.Dictionary")
cmpRingAbove.item["a"] := "{u+00e5}"  ; (å) a with ring above
cmpRingAbove.item["A"] := "{u+00c5}"  ; (Å) A with ring above
cmpRingAbove.item["u"] := "{u+016f}"  ; (ů) u with ring above
cmpRingAbove.item["U"] := "{u+016e}"  ; (Ů) U with ring above
cmpRingAbove.item["w"] := "{u+1e98}"  ; (ẘ) w with ring above
cmpRingAbove.item["y"] := "{u+1e99}"  ; (ẙ) y with ring above


; Compose :  Macron and Stroke (-)

cmpMacronStroke := ComObjCreate("Scripting.Dictionary")
cmpMacronStroke.item["a"] := "{u+0101}"  ; (ā) a with macron
cmpMacronStroke.item["A"] := "{u+0100}"  ; (Ā) A with macron
cmpMacronStroke.item["b"] := "{u+0180}"  ; (ƀ) b with stroke
cmpMacronStroke.item["B"] := "{u+0243}"  ; (Ƀ) B with stroke
cmpMacronStroke.item["d"] := "{u+0111}"  ; (đ) d with stroke
cmpMacronStroke.item["D"] := "{u+0110}"  ; (Đ) D with stroke
cmpMacronStroke.item["e"] := "{u+0113}"  ; (ē) e with macron
cmpMacronStroke.item["E"] := "{u+0112}"  ; (Ē) E with macron
cmpMacronStroke.item["g"] := "{u+01e5}"  ; (ǥ) g with stroke (Skolt Sami)
cmpMacronStroke.item["G"] := "{u+01e4}"  ; (Ǥ) G with stroke (Skolt Sami)
cmpMacronStroke.item["h"] := "{u+0127}"  ; (ħ) h with stroke (Maltese)
cmpMacronStroke.item["H"] := "{u+0126}"  ; (Ħ) H with stroke (Maltese)
cmpMacronStroke.item["i"] := "{u+012b}"  ; (ī) i with macron
cmpMacronStroke.item["I"] := "{u+012a}"  ; (Ī) I with macron
cmpMacronStroke.item["j"] := "{u+0249}"  ; (ɉ) j with stroke
cmpMacronStroke.item["J"] := "{u+0248}"  ; (Ɉ) J with stroke
cmpMacronStroke.item["l"] := "{u+0142}"  ; (ł) l with stroke
cmpMacronStroke.item["L"] := "{u+0141}"  ; (Ł) L with stroke
cmpMacronStroke.item["o"] := "{u+014d}"  ; (ō) o with macron
cmpMacronStroke.item["O"] := "{u+014c}"  ; (Ō) O with macron
cmpMacronStroke.item["p"] := "{u+1d7d}"  ; (ᵽ) p with stroke
cmpMacronStroke.item["P"] := "{u+2c63}"  ; (Ᵽ) P with stroke
cmpMacronStroke.item["q"] := "{u+01ed}"  ; (ǭ) o with ogonek and macron
cmpMacronStroke.item["Q"] := "{u+01ec}"  ; (Ǭ) O with ogonek and macron
cmpMacronStroke.item["r"] := "{u+024d}"  ; (ɍ) r with stroke
cmpMacronStroke.item["R"] := "{u+024c}"  ; (Ɍ) R with stroke
cmpMacronStroke.item["t"] := "{u+0167}"  ; (ŧ) t with stroke
cmpMacronStroke.item["T"] := "{u+0166}"  ; (Ŧ) T with stroke
cmpMacronStroke.item["u"] := "{u+016b}"  ; (ū) u with macron
cmpMacronStroke.item["U"] := "{u+016a}"  ; (Ū) U with macron
cmpMacronStroke.item["y"] := "{u+0233}"  ; (ȳ) y with macron
cmpMacronStroke.item["Y"] := "{u+0232}"  ; (Ȳ) Y with macron
cmpMacronStroke.item["z"] := "{u+01b6}"  ; (ƶ) z with stroke
cmpMacronStroke.item["Z"] := "{u+01b5}"  ; (Ƶ) Z with stroke


; Compose :  Macron and Stroke (additional) (_)

cmpMacronStrokeAdd := ComObjCreate("Scripting.Dictionary")
cmpMacronStrokeAdd.item["f"] := "{u+1e9d}"  ; (ẝ) long s with high stroke
cmpMacronStrokeAdd.item["g"] := "{u+1e21}"  ; (ḡ) g with macron
cmpMacronStrokeAdd.item["G"] := "{u+1e20}"  ; (Ḡ) G with macron
cmpMacronStrokeAdd.item["i"] := "{u+0268}"  ; (ɨ) i with stroke
cmpMacronStrokeAdd.item["I"] := "{u+0197}"  ; (Ɨ) I with stroke
cmpMacronStrokeAdd.item["l"] := "{u+019a}"  ; (ƚ) l with bar
cmpMacronStrokeAdd.item["L"] := "{u+023d}"  ; (Ƚ) L with bar
cmpMacronStrokeAdd.item["o"] := "{u+0275}"  ; (ɵ) barred o
cmpMacronStrokeAdd.item["O"] := "{u+019f}"  ; (Ɵ) O with middle tilde
cmpMacronStrokeAdd.item["q"] := "{u+01e3}"  ; (ǣ) ae with macron
cmpMacronStrokeAdd.item["Q"] := "{u+01e2}"  ; (Ǣ) AE with macron
cmpMacronStrokeAdd.item["u"] := "{u+0289}"  ; (ʉ) u with bar
cmpMacronStrokeAdd.item["U"] := "{u+0244}"  ; (Ʉ) U with bar
cmpMacronStrokeAdd.item["y"] := "{u+024f}"  ; (ɏ) y with stroke
cmpMacronStrokeAdd.item["Y"] := "{u+024e}"  ; (Ɏ) Y with stroke


; Compose :  Oblique/Diagonal Stroke (/)

cmpStroke := ComObjCreate("Scripting.Dictionary")
cmpStroke.item["a"] := "{u+2c65}"  ; (ⱥ) a with stroke
cmpStroke.item["A"] := "{u+023a}"  ; (Ⱥ) A with stroke
cmpStroke.item["c"] := "{u+023c}"  ; (ȼ) c with stroke
cmpStroke.item["C"] := "{u+023b}"  ; (Ȼ) C with stroke
cmpStroke.item["e"] := "{u+0247}"  ; (ɇ) e with stroke
cmpStroke.item["E"] := "{u+0246}"  ; (Ɇ) E with stroke
cmpStroke.item["f"] := "{u+1e9c}"  ; (ẜ) long s with diagonal stroke
cmpStroke.item["g"] := "{u+a7a1}"  ; (ꞡ) g with oblique stroke
cmpStroke.item["G"] := "{u+a7a0}"  ; (Ꞡ) G with oblique stroke
cmpStroke.item["k"] := "{u+a7a3}"  ; (ꞣ) k with oblique stroke
cmpStroke.item["K"] := "{u+a7a2}"  ; (Ꞣ) K with oblique stroke
cmpStroke.item["l"] := "{u+0142}"  ; (ł) l with stroke
cmpStroke.item["L"] := "{u+0141}"  ; (Ł) L with stroke
cmpStroke.item["n"] := "{u+a7a5}"  ; (ꞥ) n with oblique stroke
cmpStroke.item["N"] := "{u+a7a4}"  ; (Ꞥ) N with oblique stroke
cmpStroke.item["o"] := "{u+00f8}"  ; (ø) o with stroke
cmpStroke.item["O"] := "{u+00d8}"  ; (Ø) O with stroke
cmpStroke.item["r"] := "{u+a7a7}"  ; (ꞧ) r with oblique stroke
cmpStroke.item["R"] := "{u+a7a6}"  ; (Ꞧ) R with oblique stroke
cmpStroke.item["s"] := "{u+a7a9}"  ; (ꞩ) s with oblique stroke
cmpStroke.item["S"] := "{u+a7a8}"  ; (Ꞩ) S with oblique stroke
cmpStroke.item["t"] := "{u+2c66}"  ; (ⱦ) t with stroke
cmpStroke.item["T"] := "{u+023e}"  ; (Ⱦ) T with stroke


; Compose :  Breve and Special Letters (b)

cmpBreveSpecial := ComObjCreate("Scripting.Dictionary")
cmpBreveSpecial.item["a"] := "{u+0103}"  ; (ă) a with breve
cmpBreveSpecial.item["A"] := "{u+0102}"  ; (Ă) A with breve
cmpBreveSpecial.item["d"] := "{u+0256}"  ; (ɖ) small letter d with tail
cmpBreveSpecial.item["D"] := "{u+0189}"  ; (Ɖ) capital letter African D
cmpBreveSpecial.item["e"] := "{u+0115}"  ; (ĕ) e with breve
cmpBreveSpecial.item["E"] := "{u+0114}"  ; (Ĕ) E with breve
cmpBreveSpecial.item["f"] := "{u+0259}"  ; (ə) small letter schwa (Azerbaijani)
cmpBreveSpecial.item["F"] := "{u+018f}"  ; (Ə) capital letter schwa (Azerbaijani)
cmpBreveSpecial.item["g"] := "{u+011f}"  ; (ğ) g with breve
cmpBreveSpecial.item["G"] := "{u+011e}"  ; (Ğ) G with breve
cmpBreveSpecial.item["i"] := "{u+012d}"  ; (ĭ) i with breve
cmpBreveSpecial.item["I"] := "{u+012c}"  ; (Ĭ) I with breve
cmpBreveSpecial.item["o"] := "{u+014f}"  ; (ŏ) o with breve
cmpBreveSpecial.item["O"] := "{u+014e}"  ; (Ŏ) O with breve
cmpBreveSpecial.item["s"] := "{u+0219}"  ; (ș) s with comma below (Romanian)
cmpBreveSpecial.item["S"] := "{u+0218}"  ; (Ș) S with comma below (Romanian)
cmpBreveSpecial.item["t"] := "{u+021b}"  ; (ț) t with comma below (Romanian)
cmpBreveSpecial.item["T"] := "{u+021a}"  ; (Ț) T with comma below (Romanian)
cmpBreveSpecial.item["u"] := "{u+016d}"  ; (ŭ) u with breve
cmpBreveSpecial.item["U"] := "{u+016c}"  ; (Ŭ) U with breve
cmpBreveSpecial.item["w"] := "{u+01bf}"  ; (ƿ) small letter wynn
cmpBreveSpecial.item["W"] := "{u+01f7}"  ; (Ƿ) capital letter wynn
cmpBreveSpecial.item["y"] := "{u+021d}"  ; (ȝ) small letter yogh
cmpBreveSpecial.item["Y"] := "{u+021c}"  ; (Ȝ) capital letter yogh
cmpBreveSpecial.item["3"] := "{u+0292}"  ; (ʒ) small letter ezh
cmpBreveSpecial.item["#"] := "{u+01b7}"  ; (Ʒ) capital letter ezh


; Compose :  Double Acute Accent (=)

cmpDoubleAcute := ComObjCreate("Scripting.Dictionary")
cmpDoubleAcute.item["o"] := "{u+0151}"  ; (ő) o with double acute
cmpDoubleAcute.item["O"] := "{u+0150}"  ; (Ő) O with double acute
cmpDoubleAcute.item["u"] := "{u+0171}"  ; (ű) u with double acute
cmpDoubleAcute.item["U"] := "{u+0170}"  ; (Ű) U with double acute


; Compose :  Hook, Horn and Variations (h)

cmpSmallH := ComObjCreate("Scripting.Dictionary")
cmpSmallH.item["b"] := "{u+0253}"  ; (ɓ) b with hook
cmpSmallH.item["B"] := "{u+0181}"  ; (Ɓ) B with hook
cmpSmallH.item["c"] := "{u+0188}"  ; (ƈ) c with hook
cmpSmallH.item["C"] := "{u+0187}"  ; (Ƈ) C with hook
cmpSmallH.item["d"] := "{u+0257}"  ; (ɗ) d with hook
cmpSmallH.item["D"] := "{u+018a}"  ; (Ɗ) D with hook
cmpSmallH.item["e"] := "{u+025a}"  ; (ɚ) small letter schwa with hook
cmpSmallH.item["f"] := "{u+0192}"  ; (ƒ) f with hook
cmpSmallH.item["F"] := "{u+0191}"  ; (Ƒ) F with hook
cmpSmallH.item["g"] := "{u+0260}"  ; (ɠ) g with hook
cmpSmallH.item["G"] := "{u+0193}"  ; (Ɠ) G with hook
cmpSmallH.item["h"] := "{u+0266}"  ; (ɦ) h with hook
cmpSmallH.item["H"] := "{u+a7aa}"  ; (Ɦ) H with hook
cmpSmallH.item["j"] := "{u+0267}"  ; (ɧ) small letter heng with hook
cmpSmallH.item["k"] := "{u+0199}"  ; (ƙ) k with hook
cmpSmallH.item["K"] := "{u+0198}"  ; (Ƙ) K with hook
cmpSmallH.item["l"] := "{u+026c}"  ; (ɬ) l with belt
cmpSmallH.item["L"] := "{u+a7ad}"  ; (Ɬ) L with belt
cmpSmallH.item["m"] := "{u+0271}"  ; (ɱ) m with hook
cmpSmallH.item["M"] := "{u+2c6e}"  ; (Ɱ) M with hook
cmpSmallH.item["n"] := "{u+0272}"  ; (ɲ) n with left hook
cmpSmallH.item["N"] := "{u+019d}"  ; (Ɲ) N with left hook
cmpSmallH.item["o"] := "{u+01a1}"  ; (ơ) o with horn
cmpSmallH.item["O"] := "{u+01a0}"  ; (Ơ) O with horn
cmpSmallH.item["p"] := "{u+01a5}"  ; (ƥ) p with hook
cmpSmallH.item["P"] := "{u+01a4}"  ; (Ƥ) P with hook
cmpSmallH.item["q"] := "{u+024b}"  ; (ɋ) q with hook tail
cmpSmallH.item["Q"] := "{u+024a}"  ; (Ɋ) Q with hook tail
cmpSmallH.item["r"] := "{u+027d}"  ; (ɽ) r with tail
cmpSmallH.item["R"] := "{u+2c64}"  ; (Ɽ) R with tail
cmpSmallH.item["s"] := "{u+0282}"  ; (ʂ) s with hook
cmpSmallH.item["t"] := "{u+01ad}"  ; (ƭ) t with hook
cmpSmallH.item["T"] := "{u+01ac}"  ; (Ƭ) T with hook
cmpSmallH.item["u"] := "{u+01b0}"  ; (ư) u with horn
cmpSmallH.item["U"] := "{u+01af}"  ; (Ư) U with horn
cmpSmallH.item["v"] := "{u+028b}"  ; (ʋ) v with hook
cmpSmallH.item["V"] := "{u+01b2}"  ; (Ʋ) V with hook
cmpSmallH.item["w"] := "{u+2c73}"  ; (ⱳ) w with hook
cmpSmallH.item["W"] := "{u+2c72}"  ; (Ⱳ) W with hook
cmpSmallH.item["y"] := "{u+01b4}"  ; (ƴ) y with hook
cmpSmallH.item["Y"] := "{u+01b3}"  ; (Ƴ) Y with hook
cmpSmallH.item["z"] := "{u+0225}"  ; (ȥ) z with hook
cmpSmallH.item["Z"] := "{u+0224}"  ; (Ȥ) Z with hook


; Compose :  Retroflex Hook and Variations (f)

cmpSmallF := ComObjCreate("Scripting.Dictionary")
cmpSmallF.item["d"] := "{u+1d91}"  ; (ᶑ) d with hook and tail
cmpSmallF.item["e"] := "{u+025d}"  ; (ɝ) small letter reversed open e with hook
cmpSmallF.item["f"] := "{u+1d94}"  ; (ᶔ) small letter reversed open e with retroflex hook
cmpSmallF.item["g"] := "{u+ab36}"  ; (ꬶ) small letter script g with crossed-tail
cmpSmallF.item["h"] := "{u+a727}"  ; (ꜧ) small letter heng
cmpSmallF.item["H"] := "{u+a726}"  ; (Ꜧ) capital letter heng
cmpSmallF.item["j"] := "{u+029d}"  ; (ʝ) j with crossed-tail
cmpSmallF.item["J"] := "{u+a7b2}"  ; (Ʝ) J with crossed-tail
cmpSmallF.item["l"] := "{u+026d}"  ; (ɭ) l with retroflex hook
cmpSmallF.item["n"] := "{u+0273}"  ; (ɳ) n with retroflex hook
cmpSmallF.item["q"] := "{u+02a0}"  ; (ʠ) q with hook
cmpSmallF.item["r"] := "{u+027e}"  ; (ɾ) r with fishhook
cmpSmallF.item["t"] := "{u+0288}"  ; (ʈ) t with retroflex hook
cmpSmallF.item["T"] := "{u+01ae}"  ; (Ʈ) T with retroflex hook
cmpSmallF.item["v"] := "{u+2c71}"  ; (ⱱ) v with right hook
cmpSmallF.item["z"] := "{u+0290}"  ; (ʐ) z with retroflex hook


; Compose :  Swash Tail and Other Variations (t)

cmpSmallT := ComObjCreate("Scripting.Dictionary")
cmpSmallT.item["c"] := "{u+a793}"  ; (ꞓ) c with bar
cmpSmallT.item["C"] := "{u+a792}"  ; (Ꞓ) C with bar
cmpSmallT.item["f"] := "{u+a799}"  ; (ꞙ) f with stroke
cmpSmallT.item["F"] := "{u+a798}"  ; (Ꞙ) F with stroke
cmpSmallT.item["l"] := "{u+2c61}"  ; (ⱡ) l with double bar
cmpSmallT.item["L"] := "{u+2c60}"  ; (Ⱡ) L with double bar
cmpSmallT.item["s"] := "{u+023f}"  ; (ȿ) s with swash tail
cmpSmallT.item["S"] := "{u+2c7e}"  ; (Ȿ) S with swash tail
cmpSmallT.item["z"] := "{u+0240}"  ; (ɀ) z with swash tail
cmpSmallT.item["Z"] := "{u+2c7f}"  ; (Ɀ) Z with swash tail


; Compose :  Latin Greek Letters and Variations (l)

cmpSmallL := ComObjCreate("Scripting.Dictionary")
cmpSmallL.item["a"] := "{u+0251}"  ; (ɑ) Latin small letter alpha
cmpSmallL.item["A"] := "{u+2c6d}"  ; (Ɑ) Latin capital letter alpha
cmpSmallL.item["b"] := "{u+025e}"  ; (ɞ) small letter closed reversed open e
cmpSmallL.item["d"] := "{u+1e9f}"  ; (ẟ) Latin small letter delta
cmpSmallL.item["e"] := "{u+025b}"  ; (ɛ) small letter open e (Latin small epsilon)
cmpSmallL.item["E"] := "{u+0190}"  ; (Ɛ) capital letter open E (Latin capital epsilon)
cmpSmallL.item["f"] := "{u+0278}"  ; (ɸ) Latin small letter phi
cmpSmallL.item["g"] := "{u+0261}"  ; (ɡ) small letter script g
cmpSmallL.item["G"] := "{u+a7ac}"  ; (Ɡ) capital letter script G
cmpSmallL.item["h"] := "{u+01a3}"  ; (ƣ) small letter gha
cmpSmallL.item["H"] := "{u+01a2}"  ; (Ƣ) capital letter gha
cmpSmallL.item["i"] := "{u+0269}"  ; (ɩ) Latin small letter iota
cmpSmallL.item["I"] := "{u+0196}"  ; (Ɩ) Latin capital letter iota
cmpSmallL.item["j"] := "{u+0263}"  ; (ɣ) Latin small letter gamma
cmpSmallL.item["J"] := "{u+0194}"  ; (Ɣ) Latin capital letter gamma
cmpSmallL.item["k"] := "{u+0138}"  ; (ĸ) small letter kra
cmpSmallL.item["l"] := "{u+019b}"  ; (ƛ) Latin small letter lambda with stroke (barred lambda)
cmpSmallL.item["m"] := "{u+0270}"  ; (ɰ) small letter turned m with long leg
cmpSmallL.item["n"] := "{u+019e}"  ; (ƞ) small letter n with long right leg
cmpSmallL.item["N"] := "{u+0220}"  ; (Ƞ) capital letter N with long right leg
cmpSmallL.item["o"] := "{u+0254}"  ; (ɔ) small letter open o
cmpSmallL.item["O"] := "{u+0186}"  ; (Ɔ) capital letter open O
cmpSmallL.item["q"] := "{u+0277}"  ; (ɷ) Latin small letter closed omega
cmpSmallL.item["s"] := "{u+0283}"  ; (ʃ) Latin small letter esh
cmpSmallL.item["S"] := "{u+01a9}"  ; (Ʃ) Latin capital letter esh
cmpSmallL.item["u"] := "{u+028a}"  ; (ʊ) Latin small letter upsilon
cmpSmallL.item["U"] := "{u+01b1}"  ; (Ʊ) Latin capital letter upsilon
cmpSmallL.item["8"] := "{u+0223}"  ; (ȣ) small letter ou
cmpSmallL.item["*"] := "{u+0222}"  ; (Ȣ) capital letter OU
cmpSmallL.item["7"] := "{u+0242}"  ; (ɂ) small letter glottal stop
cmpSmallL.item["&"] := "{u+0241}"  ; (Ɂ) capital letter glottal stop
cmpSmallL.item["?"] := "{u+0294}"  ; (ʔ) unicase letter glottal stop


; Compose :  Turned and Reversed Letters (r)

cmpSmallR := ComObjCreate("Scripting.Dictionary")
cmpSmallR.item["a"] := "{u+0250}"  ; (ɐ) small letter turned a
cmpSmallR.item["A"] := "{u+2c6f}"  ; (Ɐ) capital letter turned A
cmpSmallR.item["b"] := "{u+025c}"  ; (ɜ) small letter reversed open e
cmpSmallR.item["B"] := "{u+a7ab}"  ; (Ɜ) capital letter reversed open E
cmpSmallR.item["d"] := "{u+018d}"  ; (ƍ) Latin small letter turned delta
cmpSmallR.item["e"] := "{u+01dd}"  ; (ǝ) small letter turned e
cmpSmallR.item["E"] := "{u+018e}"  ; (Ǝ) capital letter reversed E
cmpSmallR.item["f"] := "{u+0258}"  ; (ɘ) small letter reversed e
cmpSmallR.item["g"] := "{u+1d77}"  ; (ᵷ) small letter turned g
cmpSmallR.item["G"] := "{u+2141}"  ; (⅁) capital letter turned G
cmpSmallR.item["h"] := "{u+0265}"  ; (ɥ) small letter turned h
cmpSmallR.item["H"] := "{u+a78d}"  ; (Ɥ) capital letter turned H
cmpSmallR.item["i"] := "{u+1d09}"  ; (ᴉ) small letter turned i
cmpSmallR.item["k"] := "{u+029e}"  ; (ʞ) small letter turned k
cmpSmallR.item["K"] := "{u+a7b0}"  ; (Ʞ) capital letter turned K
cmpSmallR.item["m"] := "{u+026f}"  ; (ɯ) small letter turned m
cmpSmallR.item["M"] := "{u+019c}"  ; (Ɯ) capital letter turned M
cmpSmallR.item["o"] := "{u+0264}"  ; (ɤ) small letter ram's horn (baby gamma)
cmpSmallR.item["q"] := "{u+0252}"  ; (ɒ) Latin small letter turned alpha
cmpSmallR.item["Q"] := "{u+2c70}"  ; (Ɒ) Latin capital letter turned alpha
cmpSmallR.item["r"] := "{u+0279}"  ; (ɹ) small letter turned r
cmpSmallR.item["t"] := "{u+0287}"  ; (ʇ) small letter turned t
cmpSmallR.item["T"] := "{u+a7b1}"  ; (Ʇ) small letter turned T
cmpSmallR.item["v"] := "{u+028c}"  ; (ʌ) small letter turned v
cmpSmallR.item["V"] := "{u+0245}"  ; (Ʌ) capital letter turned V
cmpSmallR.item["w"] := "{u+028d}"  ; (ʍ) small letter turned w
cmpSmallR.item["y"] := "{u+028e}"  ; (ʎ) small letter turned y
cmpSmallR.item["z"] := "{u+01b9}"  ; (ƹ) Latin small letter ezh reversed
cmpSmallR.item["Z"] := "{u+01b8}"  ; (Ƹ) Latin capital letter ezh reversed


; Compose :  Currency Symbols ($)

cmpCurrency := ComObjCreate("Scripting.Dictionary")
cmpCurrency.item["a"] := "{u+058f}"  ; (֏) Armenian dram
cmpCurrency.item["A"] := "{u+20b3}"  ; (₳) Argentine austral
cmpCurrency.item["b"] := "{u+20bf}"  ; (₿) bitcoin
cmpCurrency.item["B"] := "{u+0e3f}"  ; (฿) Thai baht
cmpCurrency.item["c"] := "{u+20a1}"  ; (₡) Costa Rican colón
cmpCurrency.item["C"] := "{u+20b5}"  ; (₵) Ghanaian cedi
cmpCurrency.item["d"] := "{u+20ab}"  ; (₫) Vietnamese dong
cmpCurrency.item["D"] := "{u+20af}"  ; (₯) Greek drachma
cmpCurrency.item["e"] := "{u+20ac}"  ; (€) euro sign
cmpCurrency.item["E"] := "{u+20a0}"  ; (₠) euro-currency sign
cmpCurrency.item["f"] := "{u+20a3}"  ; (₣) French franc
cmpCurrency.item["F"] := "{u+20a3}"  ; (₣) French franc
cmpCurrency.item["g"] := "{u+20b2}"  ; (₲) Paraguayan guaraní
cmpCurrency.item["G"] := "{u+20be}"  ; (₾) Georgian lari
cmpCurrency.item["h"] := "{u+20b4}"  ; (₴) Ukrainian hryvnia
cmpCurrency.item["H"] := "{u+20b4}"  ; (₴) Ukrainian hryvnia
cmpCurrency.item["i"] := "{u+20a4}"  ; (₤) lira
cmpCurrency.item["I"] := "{u+20b6}"  ; (₶) livre tournois
cmpCurrency.item["k"] := "{u+20ad}"  ; (₭) Laotian kip
cmpCurrency.item["K"] := "{u+20ad}"  ; (₭) Laotian kip
cmpCurrency.item["l"] := "{u+20ba}"  ; (₺) Turkish lira
cmpCurrency.item["L"] := "{u+00a3}"  ; (£) pound sign
cmpCurrency.item["m"] := "{u+20bc}"  ; (₼) Azerbaijani manat
cmpCurrency.item["M"] := "{u+20a5}"  ; (₥) mill sign
cmpCurrency.item["n"] := "{u+20a6}"  ; (₦) Nigerian naira
cmpCurrency.item["N"] := "{u+20bb}"  ; (₻) Nordic mark
cmpCurrency.item["o"] := "{u+00a2}"  ; (¢) cent sign (dollar)
cmpCurrency.item["p"] := "{u+20b1}"  ; (₱) Philippine peso
cmpCurrency.item["P"] := "{u+20a7}"  ; (₧) Spanish pesetas
cmpCurrency.item["r"] := "{u+20b9}"  ; (₹) Indian rupee
cmpCurrency.item["R"] := "{u+20bd}"  ; (₽) Russian ruble
cmpCurrency.item["s"] := "{u+20aa}"  ; (₪) Israeli new shekel
cmpCurrency.item["S"] := "{u+20b7}"  ; (₷) spesmilo
cmpCurrency.item["t"] := "{u+20ae}"  ; (₮) Mongolian tögrög (tugrik)
cmpCurrency.item["T"] := "{u+20b8}"  ; (₸) Kazakh tenge
cmpCurrency.item["u"] := "{u+20a8}"  ; (₨) rupee sign
cmpCurrency.item["U"] := "{u+20a2}"  ; (₢) Brazilian cruzeiro
cmpCurrency.item["w"] := "{u+20a9}"  ; (₩) South Korean won
cmpCurrency.item["W"] := "{u+20a9}"  ; (₩) South Korean won
cmpCurrency.item["x"] := "{u+00a4}"  ; (¤) currency sign
cmpCurrency.item["y"] := "{u+00a5}"  ; (¥) yen sign
cmpCurrency.item["Y"] := "{u+00a5}"  ; (¥) yen sign


; Compose :  Greek Alphabet (g)

cmpGreek := ComObjCreate("Scripting.Dictionary")
cmpGreek.item["a"] := "{u+03b1}"  ; (α) Greek small alpha
cmpGreek.item["A"] := "{u+0391}"  ; (Α) Greek capital alpha
cmpGreek.item["b"] := "{u+03b2}"  ; (β) Greek small beta
cmpGreek.item["B"] := "{u+0392}"  ; (Β) Greek capital beta
cmpGreek.item["v"] := "{u+03b2}"  ; (β) Greek small beta
cmpGreek.item["V"] := "{u+0392}"  ; (Β) Greek capital beta
cmpGreek.item["g"] := "{u+03b3}"  ; (γ) Greek small gamma
cmpGreek.item["G"] := "{u+0393}"  ; (Γ) Greek capital gamma
cmpGreek.item["d"] := "{u+03b4}"  ; (δ) Greek small delta
cmpGreek.item["D"] := "{u+0394}"  ; (Δ) Greek capital delta
cmpGreek.item["e"] := "{u+03b5}"  ; (ε) Greek small epsilon
cmpGreek.item["E"] := "{u+0395}"  ; (Ε) Greek capital epsilon
cmpGreek.item["z"] := "{u+03b6}"  ; (ζ) Greek small zeta
cmpGreek.item["Z"] := "{u+0396}"  ; (Ζ) Greek capital zeta
cmpGreek.item["h"] := "{u+03b7}"  ; (η) Greek small eta
cmpGreek.item["H"] := "{u+0397}"  ; (Η) Greek capital eta
cmpGreek.item["j"] := "{u+03b8}"  ; (θ) Greek small theta
cmpGreek.item["J"] := "{u+0398}"  ; (Θ) Greek capital theta
cmpGreek.item["i"] := "{u+03b9}"  ; (ι) Greek small iota
cmpGreek.item["I"] := "{u+0399}"  ; (Ι) Greek capital iota
cmpGreek.item["k"] := "{u+03ba}"  ; (κ) Greek small kappa
cmpGreek.item["K"] := "{u+039a}"  ; (Κ) Greek capital kappa
cmpGreek.item["l"] := "{u+03bb}"  ; (λ) Greek small lambda
cmpGreek.item["L"] := "{u+039b}"  ; (Λ) Greek capital lambda
cmpGreek.item["m"] := "{u+03bc}"  ; (μ) Greek small mu
cmpGreek.item["M"] := "{u+039c}"  ; (Μ) Greek capital mu
cmpGreek.item["n"] := "{u+03bd}"  ; (ν) Greek small nu
cmpGreek.item["N"] := "{u+039d}"  ; (Ν) Greek capital nu
cmpGreek.item["x"] := "{u+03be}"  ; (ξ) Greek small xi
cmpGreek.item["X"] := "{u+039e}"  ; (Ξ) Greek capital xi
cmpGreek.item["o"] := "{u+03bf}"  ; (ο) Greek small omicron
cmpGreek.item["O"] := "{u+039f}"  ; (Ο) Greek capital omicron
cmpGreek.item["p"] := "{u+03c0}"  ; (π) Greek small pi
cmpGreek.item["P"] := "{u+03a0}"  ; (Π) Greek capital pi
cmpGreek.item["r"] := "{u+03c1}"  ; (ρ) Greek small rho
cmpGreek.item["R"] := "{u+03a1}"  ; (Ρ) Greek capital rho
cmpGreek.item["s"] := "{u+03c3}"  ; (σ) Greek small sigma
cmpGreek.item[","] := "{u+03c2}"  ; (ς) Greek small final sigma
cmpGreek.item["S"] := "{u+03a3}"  ; (Σ) Greek capital sigma
cmpGreek.item["t"] := "{u+03c4}"  ; (τ) Greek small tau
cmpGreek.item["T"] := "{u+03a4}"  ; (Τ) Greek capital tau
cmpGreek.item["u"] := "{u+03c5}"  ; (υ) Greek small upsilon
cmpGreek.item["U"] := "{u+03a5}"  ; (Υ) Greek capital upsilon
cmpGreek.item["y"] := "{u+03c5}"  ; (υ) Greek small upsilon
cmpGreek.item["Y"] := "{u+03a5}"  ; (Υ) Greek capital upsilon
cmpGreek.item["f"] := "{u+03c6}"  ; (φ) Greek small phi
cmpGreek.item["F"] := "{u+03a6}"  ; (Φ) Greek capital phi
cmpGreek.item["c"] := "{u+03c7}"  ; (χ) Greek small chi
cmpGreek.item["C"] := "{u+03a7}"  ; (Χ) Greek capital chi
cmpGreek.item["w"] := "{u+03c8}"  ; (ψ) Greek small psi
cmpGreek.item["W"] := "{u+03a8}"  ; (Ψ) Greek capital psi
cmpGreek.item["q"] := "{u+03c9}"  ; (ω) Greek small omega
cmpGreek.item["Q"] := "{u+03a9}"  ; (Ω) Greek capital omega


; Compose :  Superscript Characters (p)

cmpSuperscript := ComObjCreate("Scripting.Dictionary")
cmpSuperscript.item["1"] := "{u+00b9}"  ; (¹) superscript 1
cmpSuperscript.item["2"] := "{u+00b2}"  ; (²) superscript 2
cmpSuperscript.item["3"] := "{u+00b3}"  ; (³) superscript 3
cmpSuperscript.item["4"] := "{u+2074}"  ; (⁴) superscript 4
cmpSuperscript.item["5"] := "{u+2075}"  ; (⁵) superscript 5
cmpSuperscript.item["6"] := "{u+2076}"  ; (⁶) superscript 6
cmpSuperscript.item["7"] := "{u+2077}"  ; (⁷) superscript 7
cmpSuperscript.item["8"] := "{u+2078}"  ; (⁸) superscript 8
cmpSuperscript.item["9"] := "{u+2079}"  ; (⁹) superscript 9
cmpSuperscript.item["0"] := "{u+2070}"  ; (⁰) superscript 0
cmpSuperscript.item["i"] := "{u+2071}"  ; (ⁱ) superscript i
cmpSuperscript.item["n"] := "{u+207f}"  ; (ⁿ) superscript n
cmpSuperscript.item["+"] := "{u+207a}"  ; (⁺) superscript +
cmpSuperscript.item["-"] := "{u+207b}"  ; (⁻) superscript -
cmpSuperscript.item["="] := "{u+207c}"  ; (⁼) superscript =
cmpSuperscript.item["("] := "{u+207d}"  ; (⁽) superscript (
cmpSuperscript.item[")"] := "{u+207e}"  ; (⁾) superscript )


; Compose :  Subscript Characters (u)

cmpSubscript := ComObjCreate("Scripting.Dictionary")
cmpSubscript.item["1"] := "{u+2081}"  ; (₁) subscript 1
cmpSubscript.item["2"] := "{u+2082}"  ; (₂) subscript 2
cmpSubscript.item["3"] := "{u+2083}"  ; (₃) subscript 3
cmpSubscript.item["4"] := "{u+2084}"  ; (₄) subscript 4
cmpSubscript.item["5"] := "{u+2085}"  ; (₅) subscript 5
cmpSubscript.item["6"] := "{u+2086}"  ; (₆) subscript 6
cmpSubscript.item["7"] := "{u+2087}"  ; (₇) subscript 7
cmpSubscript.item["8"] := "{u+2088}"  ; (₈) subscript 8
cmpSubscript.item["9"] := "{u+2089}"  ; (₉) subscript 9
cmpSubscript.item["0"] := "{u+2080}"  ; (₀) subscript 0
cmpSubscript.item["a"] := "{u+2090}"  ; (ₐ) subscript a
cmpSubscript.item["b"] := "{u+1d66}"  ; (ᵦ) subscript beta
cmpSubscript.item["c"] := "{u+1d6a}"  ; (ᵪ) subscript chi
cmpSubscript.item["e"] := "{u+2091}"  ; (ₑ) subscript e
cmpSubscript.item["E"] := "{u+2094}"  ; (ₔ) subscript schwa
cmpSubscript.item["f"] := "{u+1d69}"  ; (ᵩ) subscript phi
cmpSubscript.item["g"] := "{u+1d67}"  ; (ᵧ) subscript gamma
cmpSubscript.item["h"] := "{u+2095}"  ; (ₕ) subscript h
cmpSubscript.item["i"] := "{u+1d62}"  ; (ᵢ) subscript i
cmpSubscript.item["j"] := "{u+2c7c}"  ; (ⱼ) subscript j
cmpSubscript.item["k"] := "{u+2096}"  ; (ₖ) subscript k
cmpSubscript.item["l"] := "{u+2097}"  ; (ₗ) subscript l
cmpSubscript.item["m"] := "{u+2098}"  ; (ₘ) subscript m
cmpSubscript.item["n"] := "{u+2099}"  ; (ₙ) subscript n
cmpSubscript.item["o"] := "{u+2092}"  ; (ₒ) subscript o
cmpSubscript.item["p"] := "{u+209a}"  ; (ₚ) subscript p
cmpSubscript.item["r"] := "{u+1d63}"  ; (ᵣ) subscript r
cmpSubscript.item["R"] := "{u+1d68}"  ; (ᵨ) subscript rho
cmpSubscript.item["s"] := "{u+209b}"  ; (ₛ) subscript s
cmpSubscript.item["t"] := "{u+209c}"  ; (ₜ) subscript t
cmpSubscript.item["u"] := "{u+1d64}"  ; (ᵤ) subscript u
cmpSubscript.item["v"] := "{u+1d65}"  ; (ᵥ) subscript v
cmpSubscript.item["x"] := "{u+2093}"  ; (ₓ) subscript x
cmpSubscript.item["+"] := "{u+208a}"  ; (₊) subscript +
cmpSubscript.item["-"] := "{u+208b}"  ; (₋) subscript -
cmpSubscript.item["="] := "{u+208c}"  ; (₌) subscript =
cmpSubscript.item["("] := "{u+208d}"  ; (₍) subscript (
cmpSubscript.item[")"] := "{u+208e}"  ; (₎) subscript )


; Compose :  Spacing Characters and Dashes

cmpSpace := ComObjCreate("Scripting.Dictionary")
cmpQuad := ComObjCreate("Scripting.Dictionary")
cmpSpace.item["1"] := "{u+2004}"  ; three-per-em space
cmpSpace.item["2"] := "{u+2002}"  ; en space
cmpSpace.item["3"] := "{u+2003}"  ; em space
cmpSpace.item["4"] := "{u+2005}"  ; four-per-em space
cmpSpace.item["5"] := "{u+2008}"  ; punctuation space
cmpSpace.item["6"] := "{u+2006}"  ; six-per-em space
cmpSpace.item["7"] := "{u+2009}"  ; thin space
cmpSpace.item["8"] := "{u+200a}"  ; hair space
cmpSpace.item["9"] := "{u+2007}"  ; figure space
cmpSpace.item["0"] := "{u+200b}"  ; zero-width space (ZWSP)
cmpSpace.item["b"] := "{u+00a0}"  ; non-breaking space (NBSP)
cmpSpace.item["m"] := "{u+205f}"  ; medium mathematical space (MMSP)
cmpSpace.item["n"] := "{u+202f}"  ; narrow no-break space (NNBSP)
cmpSpace.item["."] := "{u+2008}"  ; punctuation space
cmpMacronStroke.item["2"] := "{u+2013}"  ; (–) en dash
cmpMacronStroke.item["3"] := "{u+2014}"  ; (—) em dash
cmpMacronStroke.item["4"] := "{u+2015}"  ; (―) horizontal bar
cmpMacronStroke.item["5"] := "{u+2010}"  ; (‐) hyphen
cmpMacronStroke.item["9"] := "{u+2012}"  ; (‒) figure dash
cmpMacronStroke.item["0"] := "{u+00ad}"  ; (­) soft hyphen (SHY)
cmpMacronStroke.item["-"] := "{u+2011}"  ; (‑) non-breaking hyphen
cmpQuad.item["2"] := "{u+2000}"  ; en quad
cmpQuad.item["3"] := "{u+2001}"  ; em quad


; Compose :  Arrows and Pointing Triangles

cmpArrow := ComObjCreate("Scripting.Dictionary")
cmpArrow.item["w"] := "{u+25b2}"  ; (▲) black up-pointing triangle
cmpArrow.item["a"] := "{u+25c0}"  ; (◀) black left-pointing triangle
cmpArrow.item["s"] := "{u+25bc}"  ; (▼) black down-pointing triangle
cmpArrow.item["d"] := "{u+25b6}"  ; (▶) black right-pointing triangle
cmpArrow.item["i"] := "{u+25b3}"  ; (△) white up-pointing triangle
cmpArrow.item["j"] := "{u+25c1}"  ; (◁) white left-pointing triangle
cmpArrow.item["k"] := "{u+25bd}"  ; (▽) white down-pointing triangle
cmpArrow.item["l"] := "{u+25b7}"  ; (▷) white right-pointing triangle
cmpArrow.item["1"] := "{u+2199}"  ; (↙) south west arrow
cmpArrow.item["2"] := "{u+2193}"  ; (↓) downwards arrow
cmpArrow.item["3"] := "{u+2198}"  ; (↘) south east arrow
cmpArrow.item["4"] := "{u+2190}"  ; (←) leftwards arrow
cmpArrow.item["5"] := "{u+2195}"  ; (↕) up down arrow
cmpArrow.item["6"] := "{u+2192}"  ; (→) rightwards arrow
cmpArrow.item["7"] := "{u+2196}"  ; (↖) north west arrow
cmpArrow.item["8"] := "{u+2191}"  ; (↑) upwards arrow
cmpArrow.item["9"] := "{u+2197}"  ; (↗) north east arrow
cmpArrow.item["0"] := "{u+2194}"  ; (↔) left right arrow
cmpDoubleAcute.item["1"] := "{u+21d9}"  ; (⇙) south west double arrow
cmpDoubleAcute.item["2"] := "{u+21d3}"  ; (⇓) downwards double arrow
cmpDoubleAcute.item["3"] := "{u+21d8}"  ; (⇘) south east double arrow
cmpDoubleAcute.item["4"] := "{u+21d0}"  ; (⇐) leftwards double arrow
cmpDoubleAcute.item["5"] := "{u+21d5}"  ; (⇕) up down double arrow
cmpDoubleAcute.item["6"] := "{u+21d2}"  ; (⇒) rightwards double arrow
cmpDoubleAcute.item["7"] := "{u+21d6}"  ; (⇖) north west double arrow
cmpDoubleAcute.item["8"] := "{u+21d1}"  ; (⇑) upwards double arrow
cmpDoubleAcute.item["9"] := "{u+21d7}"  ; (⇗) north east double arrow
cmpDoubleAcute.item["0"] := "{u+21d4}"  ; (⇔) left right double arrow


; Compose :  Various Symbols (s)

cmpSymbols := ComObjCreate("Scripting.Dictionary")
cmpSymbols.item["a"] := "{u+2100}"  ; (℀) account of
cmpSymbols.item["b"] := "{u+203d}"  ; (‽) interrobang
cmpSymbols.item["B"] := "{u+2e18}"  ; (⸘) inverted interrobang
cmpSymbols.item["c"] := "{u+2105}"  ; (℅) care of
cmpSymbols.item["d"] := "{u+22c4}"  ; (⋄) diamond operator
cmpSymbols.item["e"] := "{u+212e}"  ; (℮) estimated symbol
cmpSymbols.item["f"] := "{u+2640}"  ; (♀) female sign (Venus)
cmpSymbols.item["h"] := "{u+2302}"  ; (⌂) house
cmpSymbols.item["H"] := "{u+2126}"  ; (Ω) ohm sign (backwards compatibility)
cmpSymbols.item["i"] := "{u+2300}"  ; (⌀) diameter sign
cmpSymbols.item["j"] := "{u+2101}"  ; (℁) addressed to the subject
cmpSymbols.item["k"] := "{u+214d}"  ; (⅍) aktieselskab
cmpSymbols.item["l"] := "{u+2113}"  ; (ℓ) script small l
cmpSymbols.item["L"] := "{u+2112}"  ; (ℒ) Laplace transform
cmpSymbols.item["m"] := "{u+2642}"  ; (♂) male sign (Mars)
cmpSymbols.item["M"] := "{u+2120}"  ; (℠) service mark
cmpSymbols.item["p"] := "{u+211e}"  ; (℞) prescription take (Recipere)
cmpSymbols.item["P"] := "{u+211e}"  ; (℞) prescription take (Recipere)
cmpSymbols.item["r"] := "{u+211f}"  ; (℟) response (liturgy)
cmpSymbols.item["R"] := "{u+211f}"  ; (℟) response (liturgy)
cmpSymbols.item["u"] := "{u+2106}"  ; (℆) cada una (each one)
cmpSymbols.item["v"] := "{u+2123}"  ; (℣) versicle (liturgy)
cmpSymbols.item["V"] := "{u+2123}"  ; (℣) versicle (liturgy)
cmpSymbols.item["x"] := "{u+203b}"  ; (※) reference mark
cmpSymbols.item["2"] := "{u+266b}"  ; (♫) beamed eighth notes
cmpSymbols.item["3"] := "{u+2042}"  ; (⁂) asterism
cmpSymbols.item["4"] := "{u+203b}"  ; (※) reference mark
cmpSymbols.item["5"] := "{u+2605}"  ; (★) black star
cmpSymbols.item["6"] := "{u+2606}"  ; (☆) white star
cmpSymbols.item["8"] := "{u+266a}"  ; (♪) eighth note
cmpSymbols.item["!"] := "{u+203c}"  ; (‼) double exclamation mark
cmpSymbols.item["?"] := "{u+2e2e}"  ; (⸮) reversed question mark
cmpSymbols.item["/"] := "{u+205e}"  ; (⁞) vertical four dots
cmpSymbols.item["|"] := "{u+00a6}"  ; (¦) broken bar


; Compose :  Math Symbols (m)

cmpMathSymbols := ComObjCreate("Scripting.Dictionary")
cmpMathSymbols.item["a"] := "{u+2200}"  ; (∀) for all
cmpMathSymbols.item["A"] := "{u+2200}"  ; (∀) for all
cmpMathSymbols.item["b"] := "{u+2286}"  ; (⊆) subset of or equal to
cmpMathSymbols.item["B"] := "{u+2287}"  ; (⊇) superset of or equal to
cmpMathSymbols.item["c"] := "{u+221d}"  ; (∝) proportional to
cmpMathSymbols.item["C"] := "{u+2102}"  ; (ℂ) complex numbers
cmpMathSymbols.item["d"] := "{u+2206}"  ; (∆) increment operator
cmpMathSymbols.item["D"] := "{u+2207}"  ; (∇) nabla/del operator
cmpMathSymbols.item["e"] := "{u+2203}"  ; (∃) there exists
cmpMathSymbols.item["E"] := "{u+2204}"  ; (∄) there does not exist
cmpMathSymbols.item["f"] := "{u+0192}"  ; (ƒ) f with hook
cmpMathSymbols.item["F"] := "{u+220e}"  ; (∎) end of proof
cmpMathSymbols.item["g"] := "{u+2282}"  ; (⊂) subset of
cmpMathSymbols.item["G"] := "{u+2284}"  ; (⊄) not a subset of
cmpMathSymbols.item["h"] := "{u+2283}"  ; (⊃) superset of
cmpMathSymbols.item["H"] := "{u+2285}"  ; (⊅) not a superset of
cmpMathSymbols.item["I"] := "{u+2111}"  ; (ℑ) imaginary numbers
cmpMathSymbols.item["j"] := "{u+2245}"  ; (≅) congruent to
cmpMathSymbols.item["J"] := "{u+2247}"  ; (≇) not congruent to
cmpMathSymbols.item["k"] := "{u+220b}"  ; (∋) contains as member
cmpMathSymbols.item["K"] := "{u+220c}"  ; (∌) does not contain as member
cmpMathSymbols.item["l"] := "{u+2225}"  ; (∥) parallel to
cmpMathSymbols.item["L"] := "{u+2226}"  ; (∦) not parallel to
cmpMathSymbols.item["m"] := "{u+2208}"  ; (∈) element of
cmpMathSymbols.item["M"] := "{u+2209}"  ; (∉) not an element of
cmpMathSymbols.item["n"] := "{u+00ac}"  ; (¬) not sign
cmpMathSymbols.item["N"] := "{u+2115}"  ; (ℕ) natural numbers
cmpMathSymbols.item["o"] := "{u+2218}"  ; (∘) ring operator
cmpMathSymbols.item["O"] := "{u+2205}"  ; (∅) empty set
cmpMathSymbols.item["p"] := "{u+2202}"  ; (∂) partial differential
cmpMathSymbols.item["P"] := "{u+2119}"  ; (ℙ) prime numbers
cmpMathSymbols.item["Q"] := "{u+211a}"  ; (ℚ) rational numbers
cmpMathSymbols.item["R"] := "{u+211d}"  ; (ℝ) real numbers
cmpMathSymbols.item["s"] := "{u+2229}"  ; (∩) set intersection
cmpMathSymbols.item["S"] := "{u+222b}"  ; (∫) integral symbol
cmpMathSymbols.item["t"] := "{u+2261}"  ; (≡) identical to
cmpMathSymbols.item["T"] := "{u+2262}"  ; (≢) not identical to
cmpMathSymbols.item["u"] := "{u+222a}"  ; (∪) set union
cmpMathSymbols.item["U"] := "{u+2216}"  ; (∖) set minus
cmpMathSymbols.item["w"] := "{u+2118}"  ; (℘) Weierstrass elliptic function
cmpMathSymbols.item["z"] := "{u+21af}"  ; (↯) downwards zigzag arrow
cmpMathSymbols.item["Z"] := "{u+2124}"  ; (ℤ) whole numbers
cmpMathSymbols.item["2"] := "{u+2236}"  ; (∶) ratio symbol
cmpMathSymbols.item["4"] := "{u+2237}"  ; (∷) proportion sign
cmpMathSymbols.item["6"] := "{u+2220}"  ; (∠) angle symbol
cmpMathSymbols.item["9"] := "{u+221f}"  ; (∟) right angle
cmpMathSymbols.item["0"] := "{u+2221}"  ; (∡) measured angle
cmpMathSymbols.item["."] := "{u+22c5}"  ; (⋅) dot operator
cmpMathSymbols.item["="] := "{u+225d}"  ; (≝) equal to by definition
cmpMathSymbols.item["+"] := "{u+2295}"  ; (⊕) circled plus
cmpMathSymbols.item["-"] := "{u+2296}"  ; (⊖) circled minus
cmpMathSymbols.item["*"] := "{u+2297}"  ; (⊗) circled times
cmpMathSymbols.item["/"] := "{u+2298}"  ; (⊘) circled division slash
cmpMathSymbols.item[";"] := "{u+2235}"  ; (∵) because sign
cmpMathSymbols.item[":"] := "{u+2234}"  ; (∴) therefore sign
cmpMathSymbols.item["&"] := "{u+2227}"  ; (∧) logical and
cmpMathSymbols.item["|"] := "{u+2228}"  ; (∨) logical or


; Compose :  Special Letters/Characters

cmpCapitalA := ComObjCreate("Scripting.Dictionary")
cmpSmallD := ComObjCreate("Scripting.Dictionary")
cmpCapitalD := ComObjCreate("Scripting.Dictionary")
cmpSmallI := ComObjCreate("Scripting.Dictionary")
cmpCapitalI := ComObjCreate("Scripting.Dictionary")
cmpSmallN := ComObjCreate("Scripting.Dictionary")
cmpCapitalN := ComObjCreate("Scripting.Dictionary")
cmpCapitalO := ComObjCreate("Scripting.Dictionary")
cmpCapitalS := ComObjCreate("Scripting.Dictionary")
cmpCapitalT := ComObjCreate("Scripting.Dictionary")
cmpArrow.item["e"] := "{u+00e6}"      ; (æ) letter ae
cmpCapitalA.item["E"] := "{u+00c6}"   ; (Æ) letter AE
cmpSmallD.item["h"] := "{u+00f0}"     ; (ð) small letter eth
cmpCapitalD.item["H"] := "{u+00d0}"   ; (Ð) capital letter eth
cmpSmallF.item["s"] := "{u+017f}"     ; (ſ) small letter long s
cmpSmallI.item["j"] := "{u+0133}"     ; (ĳ) ligature ij
cmpCapitalI.item["J"] := "{u+0132}"   ; (Ĳ) ligature IJ
cmpSmallN.item["g"] := "{u+014b}"     ; (ŋ) small letter eng(ma)
cmpCapitalN.item["G"] := "{u+014a}"   ; (Ŋ) capital letter eng(ma)
cmpRingAbove.item["e"] := "{u+0153}"  ; (œ) ligature oe
cmpCapitalO.item["E"] := "{u+0152}"   ; (Œ) ligature OE
cmpSymbols.item["s"] := "{u+00df}"    ; (ß) small sharp s (Eszett)
cmpCapitalS.item["S"] := "{u+1e9e}"   ; (ẞ) capital sharp S (capital Eszett)
cmpSmallT.item["h"] := "{u+00fe}"     ; (þ) small letter thorn
cmpCapitalT.item["H"] := "{u+00de}"   ; (Þ) capital letter thorn


; Compose :  General/Math Symbols

cmpDigitEight := ComObjCreate("Scripting.Dictionary")
cmpCapitalP := ComObjCreate("Scripting.Dictionary")
cmpSmallY := ComObjCreate("Scripting.Dictionary")
cmpSmallX := ComObjCreate("Scripting.Dictionary")
cmpVerticalLine := ComObjCreate("Scripting.Dictionary")
cmpAsterisk := ComObjCreate("Scripting.Dictionary")
cmpExclam := ComObjCreate("Scripting.Dictionary")
cmpQuestion := ComObjCreate("Scripting.Dictionary")
cmpParenLeft := ComObjCreate("Scripting.Dictionary")
cmpPlus := ComObjCreate("Scripting.Dictionary")
cmpPercent := ComObjCreate("Scripting.Dictionary")
cmpLessThan := ComObjCreate("Scripting.Dictionary")
cmpGreaterThan := ComObjCreate("Scripting.Dictionary")
cmpBracketLeft := ComObjCreate("Scripting.Dictionary")
cmpSmallD.item["d"] := "{u+2020}"        ; (†) dagger
cmpCapitalD.item["D"] := "{u+2021}"      ; (‡) double dagger
cmpSmallI.item["i"] := "{u+221e}"        ; (∞) infinity symbol
cmpDigitEight.item["8"] := "{u+221e}"    ; (∞) infinity symbol
cmpMathSymbols.item["i"] := "{u+00b5}"   ; (µ) micro sign
cmpSmallN.item["o"] := "{u+2116}"        ; (№) numero sign
cmpCapitalN.item["o"] := "{u+2116}"      ; (№) numero sign
cmpRingAbove.item["x"] := "{u+00a4}"     ; (¤) currency sign
cmpSuperscript.item["p"] := "{u+00b6}"   ; (¶) pilcrow sign
cmpCapitalP.item["P"] := "{u+00b6}"      ; (¶) pilcrow sign
cmpSmallR.item["2"] := "{u+221a}"        ; (√) square root
cmpSmallR.item["3"] := "{u+221b}"        ; (∛) cube root
cmpSmallR.item["4"] := "{u+221c}"        ; (∜) fourth root
cmpSymbols.item["o"] := "{u+00a7}"       ; (§) section sign
cmpCapitalS.item["o"] := "{u+00a7}"      ; (§) section sign
cmpSmallT.item["m"] := "{u+2122}"        ; (™) trademark symbol
cmpCaron.item["v"] := "{u+2713}"         ; (✓) check mark
cmpSmallY.item["y"] := "{u+2713}"        ; (✓) check mark
cmpSmallX.item["x"] := "{u+2717}"        ; (✗) ballot x
cmpVerticalLine.item["|"] := "{u+2016}"  ; (‖) double vertical line
cmpAcuteAccent.item["1"] := "{u+2032}"   ; (′) prime
cmpAcuteAccent.item["2"] := "{u+2033}"   ; (″) double prime
cmpAcuteAccent.item["3"] := "{u+2034}"   ; (‴) triple prime
cmpAcuteAccent.item["4"] := "{u+2057}"   ; (⁗) quadruple prime
cmpAsterisk.item["*"] := "{u+00d7}"      ; (×) multiplication sign
cmpStroke.item["/"] := "{u+00f7}"        ; (÷) division sign
cmpAsterisk.item["o"] := "{u+00b0}"      ; (°) degree sign
cmpRingAbove.item["*"] := "{u+00b0}"     ; (°) degree sign
cmpDotAbove.item["-"] := "{u+00b7}"      ; (·) middle dot
cmpDotAbove.item["3"] := "{u+2026}"      ; (…) horizontal ellipsis
cmpDotAbove.item["."] := "{u+2026}"      ; (…) horizontal ellipsis
cmpArrow.item["-"] := "{u+00aa}"         ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
cmpRingAbove.item["-"] := "{u+00ba}"     ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
cmpExclam.item["!"] := "{u+00a1}"        ; (¡) inverted exclamation mark
cmpQuestion.item["?"] := "{u+00bf}"      ; (¿) inverted question mark
cmpRingAbove.item["c"] := "{u+00a9}"     ; (©) copyright sign
cmpParenLeft.item["c"] := "{u+00a9}"     ; (©) copyright sign
cmpRingAbove.item["p"] := "{u+2117}"     ; (℗) sound recording copyright
cmpParenLeft.item["p"] := "{u+2117}"     ; (℗) sound recording copyright
cmpRingAbove.item["r"] := "{u+00ae}"     ; (®) registered sign
cmpParenLeft.item["r"] := "{u+00ae}"     ; (®) registered sign
cmpPlus.item["-"] := "{u+00b1}"          ; (±) plus-minus sign
cmpMacronStroke.item["+"] := "{u+2213}"  ; (∓) minus-or-plus sign
cmpPercent.item["%"] := "{u+2030}"       ; (‰) per mille sign
cmpPercent.item["3"] := "{u+2030}"       ; (‰) per mille sign
cmpPercent.item["4"] := "{u+2031}"       ; (‱) per ten thousand sign
cmpExclam.item["="] := "{u+2260}"        ; (≠) not equal to
cmpLessThan.item[">"] := "{u+2260}"      ; (≠) not equal to
cmpLessThan.item["="] := "{u+2264}"      ; (≤) less-than or equal to
cmpGreaterThan.item["="] := "{u+2265}"   ; (≥) greater-than or equal to
cmpLessThan.item["+"] := "{u+2a7d}"      ; (⩽) less-than or slanted equal to
cmpGreaterThan.item["+"] := "{u+2a7e}"   ; (⩾) greater-than or slanted equal to
cmpTilde.item["~"] := "{u+2248}"         ; (≈) almost equal to
cmpBracketLeft.item["]"] := "{u+2610}"   ; (☐) ballot box
cmpBracketLeft.item["v"] := "{u+2611}"   ; (☑) ballot box with check
cmpBracketLeft.item["y"] := "{u+2611}"   ; (☑) ballot box with check
cmpBracketLeft.item["x"] := "{u+2612}"   ; (☒) ballot box with x


; Compose :  Bullets and Small Geometric Shapes (;)

cmpSemicolon := ComObjCreate("Scripting.Dictionary")
cmpSemicolon.item["b"] := "{u+2022}"  ; (•) bullet
cmpSemicolon.item["o"] := "{u+25e6}"  ; (◦) white bullet
cmpSemicolon.item["h"] := "{u+2043}"  ; (⁃) hyphen bullet
cmpSemicolon.item["t"] := "{u+2023}"  ; (‣) triangular bullet
cmpSemicolon.item["q"] := "{u+25aa}"  ; (▪) black small square
cmpSemicolon.item["u"] := "{u+25ab}"  ; (▫) white small square
cmpSemicolon.item["w"] := "{u+25b4}"  ; (▴) black up-pointing small triangle
cmpSemicolon.item["a"] := "{u+25c2}"  ; (◂) black left-pointing small triangle
cmpSemicolon.item["s"] := "{u+25be}"  ; (▾) black down-pointing small triangle
cmpSemicolon.item["d"] := "{u+25b8}"  ; (▸) black right-pointing small triangle
cmpSemicolon.item["i"] := "{u+25b5}"  ; (▵) white up-pointing small triangle
cmpSemicolon.item["j"] := "{u+25c3}"  ; (◃) white left-pointing small triangle
cmpSemicolon.item["k"] := "{u+25bf}"  ; (▿) white down-pointing small triangle
cmpSemicolon.item["l"] := "{u+25b9}"  ; (▹) white right-pointing small triangle
cmpSemicolon.item["z"] := "{u+25a0}"  ; (■) black square
cmpSemicolon.item["x"] := "{u+25a1}"  ; (□) white square
cmpSemicolon.item["c"] := "{u+25c6}"  ; (◆) black diamond
cmpSemicolon.item["v"] := "{u+25c7}"  ; (◇) white diamond
cmpSemicolon.item[";"] := "{u+2022}"  ; (•) bullet


; Compose :  Vulgar Fractions

cmpDigitOne := ComObjCreate("Scripting.Dictionary")
cmpDigitTwo := ComObjCreate("Scripting.Dictionary")
cmpDigitThree := ComObjCreate("Scripting.Dictionary")
cmpDigitFour := ComObjCreate("Scripting.Dictionary")
cmpDigitFive := ComObjCreate("Scripting.Dictionary")
cmpDigitSeven := ComObjCreate("Scripting.Dictionary")
cmpDigitZero := ComObjCreate("Scripting.Dictionary")
cmpDigitOne.item["2"] := "{u+00bd}"    ; (½) vulgar fraction 1/2
cmpDigitOne.item["3"] := "{u+2153}"    ; (⅓) vulgar fraction 1/3
cmpDigitTwo.item["3"] := "{u+2154}"    ; (⅔) vulgar fraction 2/3
cmpDigitOne.item["4"] := "{u+00bc}"    ; (¼) vulgar fraction 1/4
cmpDigitThree.item["4"] := "{u+00be}"  ; (¾) vulgar fraction 3/4
cmpDigitOne.item["5"] := "{u+2155}"    ; (⅕) vulgar fraction 1/5
cmpDigitTwo.item["5"] := "{u+2156}"    ; (⅖) vulgar fraction 2/5
cmpDigitThree.item["5"] := "{u+2157}"  ; (⅗) vulgar fraction 3/5
cmpDigitFour.item["5"] := "{u+2158}"   ; (⅘) vulgar fraction 4/5
cmpDigitOne.item["6"] := "{u+2159}"    ; (⅙) vulgar fraction 1/6
cmpDigitFive.item["6"] := "{u+215a}"   ; (⅚) vulgar fraction 5/6
cmpDigitOne.item["7"] := "{u+2150}"    ; (⅐) vulgar fraction 1/7
cmpDigitOne.item["8"] := "{u+215b}"    ; (⅛) vulgar fraction 1/8
cmpDigitThree.item["8"] := "{u+215c}"  ; (⅜) vulgar fraction 3/8
cmpDigitFive.item["8"] := "{u+215d}"   ; (⅝) vulgar fraction 5/8
cmpDigitSeven.item["8"] := "{u+215e}"  ; (⅞) vulgar fraction 7/8
cmpDigitOne.item["9"] := "{u+2151}"    ; (⅑) vulgar fraction 1/9
cmpDigitOne.item["0"] := "{u+2152}"    ; (⅒) vulgar fraction 1/10
cmpDigitZero.item["3"] := "{u+2189}"   ; (↉) vulgar fraction 0/3


; Compose :  Quotation Marks

cmpBracketRight := ComObjCreate("Scripting.Dictionary")
cmpBackslash := ComObjCreate("Scripting.Dictionary")
cmpCedillaOgonek.item[chr(34)] := "{u+201e}"  ; („) double low-9 quotation mark
cmpDiaeresis.item[","] := "{u+201e}"          ; („) double low-9 quotation mark
cmpCedillaOgonek.item["'"] := "{u+201a}"      ; (‚) single low-9 quotation mark
cmpAcuteAccent.item[","] := "{u+201a}"        ; (‚) single low-9 quotation mark
cmpCedillaOgonek.item[","] := "{u+201a}"      ; (‚) single low-9 quotation mark
cmpDiaeresis.item["["] := "{u+201c}"          ; (“) left double quotation mark
cmpBracketLeft.item[chr(34)] := "{u+201c}"    ; (“) left double quotation mark
cmpDiaeresis.item["]"] := "{u+201d}"          ; (”) right double quotation mark
cmpBracketRight.item[chr(34)] := "{u+201d}"   ; (”) right double quotation mark
cmpAcuteAccent.item["["] := "{u+2018}"        ; (‘) left single quotation mark
cmpBracketLeft.item["'"] := "{u+2018}"        ; (‘) left single quotation mark
cmpAcuteAccent.item["]"] := "{u+2019}"        ; (’) right single quotation mark
cmpBracketRight.item["'"] := "{u+2019}"       ; (’) right single quotation mark
cmpBackslash.item[chr(34)] := "{u+201f}"      ; (‟) double high-reversed-9 quotation mark
cmpDiaeresis.item["\"] := "{u+201f}"          ; (‟) double high-reversed-9 quotation mark
cmpBackslash.item["'"] := "{u+201b}"          ; (‛) single high-reversed-9 quotation mark
cmpAcuteAccent.item["\"] := "{u+201b}"        ; (‛) single high-reversed-9 quotation mark
cmpLessThan.item["<"] := "{u+00ab}"           ; («) left-pointing double angle quotation mark
cmpLessThan.item[chr(34)] := "{u+00ab}"       ; («) left-pointing double angle quotation mark
cmpDiaeresis.item["<"] := "{u+00ab}"          ; («) left-pointing double angle quotation mark
cmpGreaterThan.item[">"] := "{u+00bb}"        ; (») right-pointing double angle quotation mark
cmpGreaterThan.item[chr(34)] := "{u+00bb}"    ; (») right-pointing double angle quotation mark
cmpDiaeresis.item[">"] := "{u+00bb}"          ; (») right-pointing double angle quotation mark
cmpLessThan.item["'"] := "{u+2039}"           ; (‹) left-pointing single angle quotation mark
cmpAcuteAccent.item["<"] := "{u+2039}"        ; (‹) left-pointing single angle quotation mark
cmpGreaterThan.item["'"] := "{u+203a}"        ; (›) right-pointing single angle quotation mark
cmpAcuteAccent.item[">"] := "{u+203a}"        ; (›) right-pointing single angle quotation mark


; Compose :  Chess Pieces and Playing Card Suit Symbols (C)

cmpCapitalC := ComObjCreate("Scripting.Dictionary")
cmpCapitalC.item["k"] := "{u+2654}"  ; (♔) white chess king
cmpCapitalC.item["q"] := "{u+2655}"  ; (♕) white chess queen
cmpCapitalC.item["r"] := "{u+2656}"  ; (♖) white chess rook
cmpCapitalC.item["b"] := "{u+2657}"  ; (♗) white chess bishop
cmpCapitalC.item["n"] := "{u+2658}"  ; (♘) white chess knight
cmpCapitalC.item["p"] := "{u+2659}"  ; (♙) white chess pawn
cmpCapitalC.item["K"] := "{u+265a}"  ; (♚) black chess king
cmpCapitalC.item["Q"] := "{u+265b}"  ; (♛) black chess queen
cmpCapitalC.item["R"] := "{u+265c}"  ; (♜) black chess rook
cmpCapitalC.item["B"] := "{u+265d}"  ; (♝) black chess bishop
cmpCapitalC.item["N"] := "{u+265e}"  ; (♞) black chess knight
cmpCapitalC.item["P"] := "{u+265f}"  ; (♟) black chess pawn
cmpCapitalC.item["c"] := "{u+2667}"  ; (♧) white club suit
cmpCapitalC.item["C"] := "{u+2663}"  ; (♣) black club suit
cmpCapitalC.item["d"] := "{u+2662}"  ; (♢) white diamond suit
cmpCapitalC.item["D"] := "{u+2666}"  ; (♦) black diamond suit
cmpCapitalC.item["h"] := "{u+2661}"  ; (♡) white heart suit
cmpCapitalC.item["H"] := "{u+2665}"  ; (♥) black heart suit
cmpCapitalC.item["s"] := "{u+2664}"  ; (♤) white spade suit
cmpCapitalC.item["S"] := "{u+2660}"  ; (♠) black spade suit


; Compose :  Double Grave Accent (G)

cmpCapitalG := ComObjCreate("Scripting.Dictionary")
cmpCapitalG.item["a"] := "{u+0201}"  ; (ȁ) a with double grave
cmpCapitalG.item["A"] := "{u+0200}"  ; (Ȁ) A with double grave
cmpCapitalG.item["e"] := "{u+0205}"  ; (ȅ) e with double grave
cmpCapitalG.item["E"] := "{u+0204}"  ; (Ȅ) E with double grave
cmpCapitalG.item["i"] := "{u+0209}"  ; (ȉ) i with double grave
cmpCapitalG.item["I"] := "{u+0208}"  ; (Ȉ) I with double grave
cmpCapitalG.item["o"] := "{u+020d}"  ; (ȍ) o with double grave
cmpCapitalG.item["O"] := "{u+020c}"  ; (Ȍ) O with double grave
cmpCapitalG.item["r"] := "{u+0211}"  ; (ȑ) r with double grave
cmpCapitalG.item["R"] := "{u+0210}"  ; (Ȑ) R with double grave
cmpCapitalG.item["u"] := "{u+0215}"  ; (ȕ) u with double grave
cmpCapitalG.item["U"] := "{u+0214}"  ; (Ȕ) U with double grave


; Compose :  Inverted Breve (B)

cmpCapitalB := ComObjCreate("Scripting.Dictionary")
cmpCapitalB.item["a"] := "{u+0203}"  ; (ȃ) a with inverted breve
cmpCapitalB.item["A"] := "{u+0202}"  ; (Ȃ) A with inverted breve
cmpCapitalB.item["e"] := "{u+0207}"  ; (ȇ) e with inverted breve
cmpCapitalB.item["E"] := "{u+0206}"  ; (Ȇ) E with inverted breve
cmpCapitalB.item["i"] := "{u+020b}"  ; (ȋ) i with inverted breve
cmpCapitalB.item["I"] := "{u+020a}"  ; (Ȋ) I with inverted breve
cmpCapitalB.item["o"] := "{u+020f}"  ; (ȏ) o with inverted breve
cmpCapitalB.item["O"] := "{u+020e}"  ; (Ȏ) O with inverted breve
cmpCapitalB.item["r"] := "{u+0213}"  ; (ȓ) r with inverted breve
cmpCapitalB.item["R"] := "{u+0212}"  ; (Ȓ) R with inverted breve
cmpCapitalB.item["u"] := "{u+0217}"  ; (ȗ) u with inverted breve
cmpCapitalB.item["U"] := "{u+0216}"  ; (Ȗ) U with inverted breve


; Compose :  Circumflex Below (I)

cmpCapitalI.item["d"] := "{u+1e13}"  ; (ḓ) d with circumflex below
cmpCapitalI.item["D"] := "{u+1e12}"  ; (Ḓ) D with circumflex below
cmpCapitalI.item["e"] := "{u+1e19}"  ; (ḙ) e with circumflex below
cmpCapitalI.item["E"] := "{u+1e18}"  ; (Ḙ) E with circumflex below
cmpCapitalI.item["l"] := "{u+1e3d}"  ; (ḽ) l with circumflex below
cmpCapitalI.item["L"] := "{u+1e3c}"  ; (Ḽ) L with circumflex below
cmpCapitalI.item["n"] := "{u+1e4b}"  ; (ṋ) n with circumflex below
cmpCapitalI.item["N"] := "{u+1e4a}"  ; (Ṋ) N with circumflex below
cmpCapitalI.item["t"] := "{u+1e71}"  ; (ṱ) t with circumflex below
cmpCapitalI.item["T"] := "{u+1e70}"  ; (Ṱ) T with circumflex below
cmpCapitalI.item["u"] := "{u+1e77}"  ; (ṷ) u with circumflex below
cmpCapitalI.item["U"] := "{u+1e76}"  ; (Ṷ) U with circumflex below


; Compose :  Tilde Below (T)

cmpCapitalT.item["e"] := "{u+1e1b}"  ; (ḛ) e with tilde below
cmpCapitalT.item["E"] := "{u+1e1a}"  ; (Ḛ) E with tilde below
cmpCapitalT.item["i"] := "{u+1e2d}"  ; (ḭ) i with tilde below
cmpCapitalT.item["I"] := "{u+1e2c}"  ; (Ḭ) I with tilde below
cmpCapitalT.item["u"] := "{u+1e75}"  ; (ṵ) u with tilde below
cmpCapitalT.item["U"] := "{u+1e74}"  ; (Ṵ) U with tilde below


; Compose :  Line Below (L)

cmpCapitalL := ComObjCreate("Scripting.Dictionary")
cmpCapitalL.item["b"] := "{u+1e07}"  ; (ḇ) b with line below
cmpCapitalL.item["B"] := "{u+1e06}"  ; (Ḇ) B with line below
cmpCapitalL.item["d"] := "{u+1e0f}"  ; (ḏ) d with line below
cmpCapitalL.item["D"] := "{u+1e0e}"  ; (Ḏ) D with line below
cmpCapitalL.item["h"] := "{u+1e96}"  ; (ẖ) h with line below
cmpCapitalL.item["k"] := "{u+1e35}"  ; (ḵ) k with line below
cmpCapitalL.item["K"] := "{u+1e34}"  ; (Ḵ) K with line below
cmpCapitalL.item["l"] := "{u+1e3b}"  ; (ḻ) l with line below
cmpCapitalL.item["L"] := "{u+1e3a}"  ; (Ḻ) L with line below
cmpCapitalL.item["n"] := "{u+1e49}"  ; (ṉ) n with line below
cmpCapitalL.item["N"] := "{u+1e48}"  ; (Ṉ) N with line below
cmpCapitalL.item["r"] := "{u+1e5f}"  ; (ṟ) r with line below
cmpCapitalL.item["R"] := "{u+1e5e}"  ; (Ṟ) R with line below
cmpCapitalL.item["t"] := "{u+1e6f}"  ; (ṯ) t with line below
cmpCapitalL.item["T"] := "{u+1e6e}"  ; (Ṯ) T with line below
cmpCapitalL.item["z"] := "{u+1e95}"  ; (ẕ) z with line below
cmpCapitalL.item["Z"] := "{u+1e94}"  ; (Ẕ) Z with line below


; Compose :  Ring Below, Breve Below and Diaeresis Below (R)

cmpCapitalR := ComObjCreate("Scripting.Dictionary")
cmpCapitalR.item["a"] := "{u+1e01}"  ; (ḁ) a with ring below
cmpCapitalR.item["A"] := "{u+1e00}"  ; (Ḁ) A with ring below
cmpCapitalR.item["h"] := "{u+1e2b}"  ; (ḫ) h with breve below
cmpCapitalR.item["H"] := "{u+1e2a}"  ; (Ḫ) H with breve below
cmpCapitalR.item["u"] := "{u+1e73}"  ; (ṳ) u with diaeresis below
cmpCapitalR.item["U"] := "{u+1e72}"  ; (Ṳ) U with diaeresis below


; Compose :  Hook Above (<)

cmpLessThan.item["a"] := "{u+1ea3}"  ; (ả) a with hook above
cmpLessThan.item["A"] := "{u+1ea2}"  ; (Ả) A with hook above
cmpLessThan.item["e"] := "{u+1ebb}"  ; (ẻ) e with hook above
cmpLessThan.item["E"] := "{u+1eba}"  ; (Ẻ) E with hook above
cmpLessThan.item["i"] := "{u+1ec9}"  ; (ỉ) i with hook above
cmpLessThan.item["I"] := "{u+1ec8}"  ; (Ỉ) I with hook above
cmpLessThan.item["o"] := "{u+1ecf}"  ; (ỏ) o with hook above
cmpLessThan.item["O"] := "{u+1ece}"  ; (Ỏ) O with hook above
cmpLessThan.item["u"] := "{u+1ee7}"  ; (ủ) u with hook above
cmpLessThan.item["U"] := "{u+1ee6}"  ; (Ủ) U with hook above
cmpLessThan.item["y"] := "{u+1ef7}"  ; (ỷ) y with hook above
cmpLessThan.item["Y"] := "{u+1ef6}"  ; (Ỷ) Y with hook above


; Compose :  Dot Below (>)

cmpGreaterThan.item["a"] := "{u+1ea1}"  ; (ạ) a with dot below
cmpGreaterThan.item["A"] := "{u+1ea0}"  ; (Ạ) A with dot below
cmpGreaterThan.item["b"] := "{u+1e05}"  ; (ḅ) b with dot below
cmpGreaterThan.item["B"] := "{u+1e04}"  ; (Ḅ) B with dot below
cmpGreaterThan.item["d"] := "{u+1e0d}"  ; (ḍ) d with dot below
cmpGreaterThan.item["D"] := "{u+1e0c}"  ; (Ḍ) D with dot below
cmpGreaterThan.item["e"] := "{u+1eb9}"  ; (ẹ) e with dot below
cmpGreaterThan.item["E"] := "{u+1eb8}"  ; (Ẹ) E with dot below
cmpGreaterThan.item["h"] := "{u+1e25}"  ; (ḥ) h with dot below
cmpGreaterThan.item["H"] := "{u+1e24}"  ; (Ḥ) H with dot below
cmpGreaterThan.item["i"] := "{u+1ecb}"  ; (ị) i with dot below
cmpGreaterThan.item["I"] := "{u+1eca}"  ; (Ị) I with dot below
cmpGreaterThan.item["k"] := "{u+1e33}"  ; (ḳ) k with dot below
cmpGreaterThan.item["K"] := "{u+1e32}"  ; (Ḳ) K with dot below
cmpGreaterThan.item["l"] := "{u+1e37}"  ; (ḷ) l with dot below
cmpGreaterThan.item["L"] := "{u+1e36}"  ; (Ḷ) L with dot below
cmpGreaterThan.item["m"] := "{u+1e43}"  ; (ṃ) m with dot below
cmpGreaterThan.item["M"] := "{u+1e42}"  ; (Ṃ) M with dot below
cmpGreaterThan.item["n"] := "{u+1e47}"  ; (ṇ) n with dot below
cmpGreaterThan.item["N"] := "{u+1e46}"  ; (Ṇ) N with dot below
cmpGreaterThan.item["o"] := "{u+1ecd}"  ; (ọ) o with dot below
cmpGreaterThan.item["O"] := "{u+1ecc}"  ; (Ọ) O with dot below
cmpGreaterThan.item["r"] := "{u+1e5b}"  ; (ṛ) r with dot below
cmpGreaterThan.item["R"] := "{u+1e5a}"  ; (Ṛ) R with dot below
cmpGreaterThan.item["s"] := "{u+1e63}"  ; (ṣ) s with dot below
cmpGreaterThan.item["S"] := "{u+1e62}"  ; (Ṣ) S with dot below
cmpGreaterThan.item["t"] := "{u+1e6d}"  ; (ṭ) t with dot below
cmpGreaterThan.item["T"] := "{u+1e6c}"  ; (Ṭ) T with dot below
cmpGreaterThan.item["u"] := "{u+1ee5}"  ; (ụ) u with dot below
cmpGreaterThan.item["U"] := "{u+1ee4}"  ; (Ụ) U with dot below
cmpGreaterThan.item["v"] := "{u+1e7f}"  ; (ṿ) v with dot below
cmpGreaterThan.item["V"] := "{u+1e7e}"  ; (Ṿ) V with dot below
cmpGreaterThan.item["w"] := "{u+1e89}"  ; (ẉ) w with dot below
cmpGreaterThan.item["W"] := "{u+1e88}"  ; (Ẉ) W with dot below
cmpGreaterThan.item["y"] := "{u+1ef5}"  ; (ỵ) y with dot below
cmpGreaterThan.item["Y"] := "{u+1ef4}"  ; (Ỵ) Y with dot below
cmpGreaterThan.item["z"] := "{u+1e93}"  ; (ẓ) z with dot below
cmpGreaterThan.item["Z"] := "{u+1e92}"  ; (Ẓ) Z with dot below


; Accented Letters with Dot Below (?)

cmpQuestion.item["a"] := "{u+1ead}"  ; (ậ) a with circumflex and dot below
cmpQuestion.item["A"] := "{u+1eac}"  ; (Ậ) A with circumflex and dot below
cmpQuestion.item["b"] := "{u+1eb7}"  ; (ặ) a with breve and dot below
cmpQuestion.item["B"] := "{u+1eb6}"  ; (Ặ) A with breve and dot below
cmpQuestion.item["e"] := "{u+1ec7}"  ; (ệ) e with circumflex and dot below
cmpQuestion.item["E"] := "{u+1ec6}"  ; (Ệ) E with circumflex and dot below
cmpQuestion.item["f"] := "{u+1e1d}"  ; (ḝ) e with cedilla and breve
cmpQuestion.item["F"] := "{u+1e1c}"  ; (Ḝ) E with cedilla and breve
cmpQuestion.item["l"] := "{u+1e39}"  ; (ḹ) l with dot below and macron
cmpQuestion.item["L"] := "{u+1e38}"  ; (Ḹ) L with dot below and macron
cmpQuestion.item["o"] := "{u+1ed9}"  ; (ộ) o with circumflex and dot below
cmpQuestion.item["O"] := "{u+1ed8}"  ; (Ộ) O with circumflex and dot below
cmpQuestion.item["r"] := "{u+1e5d}"  ; (ṝ) r with dot below and macron
cmpQuestion.item["R"] := "{u+1e5c}"  ; (Ṝ) R with dot below and macron
cmpQuestion.item["s"] := "{u+1e69}"  ; (ṩ) s with dot below and dot above
cmpQuestion.item["S"] := "{u+1e68}"  ; (Ṩ) S with dot below and dot above
cmpQuestion.item["t"] := "{u+1ee3}"  ; (ợ) o with horn and dot below
cmpQuestion.item["T"] := "{u+1ee2}"  ; (Ợ) O with horn and dot below
cmpQuestion.item["u"] := "{u+1ef1}"  ; (ự) u with horn and dot below
cmpQuestion.item["U"] := "{u+1ef0}"  ; (Ự) U with horn and dot below


; Compose :  Miscellaneous Symbols and Dingbats

cmpDigitSix := ComObjCreate("Scripting.Dictionary")

cmpDigitOne.item["a"] := "{u+2600}"  ; (☀) black sun with rays
cmpDigitOne.item["b"] := "{u+2601}"  ; (☁) cloud
cmpDigitOne.item["c"] := "{u+2602}"  ; (☂) umbrella
cmpDigitOne.item["d"] := "{u+2603}"  ; (☃) snowman
cmpDigitOne.item["e"] := "{u+2604}"  ; (☄) comet
cmpDigitOne.item["f"] := "{u+2605}"  ; (★) black star
cmpDigitOne.item["g"] := "{u+2606}"  ; (☆) white star
cmpDigitOne.item["h"] := "{u+260e}"  ; (☎) black telephone
cmpDigitOne.item["i"] := "{u+260f}"  ; (☏) white telephone
cmpDigitOne.item["j"] := "{u+2610}"  ; (☐) ballot box
cmpDigitOne.item["k"] := "{u+2611}"  ; (☑) ballot box with check
cmpDigitOne.item["l"] := "{u+2612}"  ; (☒) ballot box with x
cmpDigitOne.item["m"] := "{u+2619}"  ; (☙) reversed rotated floral heart bullet
cmpDigitOne.item["n"] := "{u+261a}"  ; (☚) black left-pointing index
cmpDigitOne.item["o"] := "{u+261b}"  ; (☛) black right-pointing index
cmpDigitOne.item["p"] := "{u+261c}"  ; (☜) white left-pointing index
cmpDigitOne.item["q"] := "{u+261d}"  ; (☝) white up-pointing index
cmpDigitOne.item["r"] := "{u+261e}"  ; (☞) white right-pointing index
cmpDigitOne.item["s"] := "{u+261f}"  ; (☟) white down-pointing index
cmpDigitOne.item["t"] := "{u+2620}"  ; (☠) skull and crossbones
cmpDigitOne.item["u"] := "{u+2621}"  ; (☡) caution sign
cmpDigitOne.item["v"] := "{u+2622}"  ; (☢) radioactive sign
cmpDigitOne.item["w"] := "{u+2623}"  ; (☣) biohazard sign
cmpDigitOne.item["x"] := "{u+2639}"  ; (☹) white frowning face
cmpDigitOne.item["y"] := "{u+263a}"  ; (☺) white smiling face
cmpDigitOne.item["z"] := "{u+263b}"  ; (☻) black smiling face

cmpDigitTwo.item["a"] := "{u+263c}"  ; (☼) white sun with rays
cmpDigitTwo.item["b"] := "{u+263d}"  ; (☽) first quarter moon
cmpDigitTwo.item["c"] := "{u+263e}"  ; (☾) last quarter moon
cmpDigitTwo.item["d"] := "{u+2640}"  ; (♀) female sign (Venus)
cmpDigitTwo.item["e"] := "{u+2642}"  ; (♂) male sign (Mars)
cmpDigitTwo.item["f"] := "{u+2668}"  ; (♨) hot springs
cmpDigitTwo.item["g"] := "{u+2669}"  ; (♩) quarter note
cmpDigitTwo.item["h"] := "{u+266a}"  ; (♪) eighth note
cmpDigitTwo.item["i"] := "{u+266b}"  ; (♫) beamed eighth notes
cmpDigitTwo.item["j"] := "{u+266c}"  ; (♬) beamed sixteenth notes
cmpDigitTwo.item["k"] := "{u+266d}"  ; (♭) music flat sign
cmpDigitTwo.item["l"] := "{u+266e}"  ; (♮) music natural sign
cmpDigitTwo.item["m"] := "{u+266f}"  ; (♯) music sharp sign
cmpDigitTwo.item["n"] := "{u+2672}"  ; (♲) universal recycling symbol
cmpDigitTwo.item["o"] := "{u+267a}"  ; (♺) recycling symbol for generic materials
cmpDigitTwo.item["p"] := "{u+267b}"  ; (♻) black universal recycling symbol
cmpDigitTwo.item["q"] := "{u+267f}"  ; (♿) wheelchair symbol
cmpDigitTwo.item["r"] := "{u+2690}"  ; (⚐) white flag
cmpDigitTwo.item["s"] := "{u+2691}"  ; (⚑) black flag
cmpDigitTwo.item["t"] := "{u+26a0}"  ; (⚠) warning sign
cmpDigitTwo.item["u"] := "{u+26a1}"  ; (⚡) high voltage sign
cmpDigitTwo.item["v"] := "{u+26d4}"  ; (⛔) no entry
cmpDigitTwo.item["w"] := "{u+231a}"  ; (⌚) watch
cmpDigitTwo.item["x"] := "{u+231b}"  ; (⌛) hourglass

cmpDigitThree.item["a"] := "{u+2701}"  ; (✁) upper blade scissors
cmpDigitThree.item["b"] := "{u+2702}"  ; (✂) black scissors
cmpDigitThree.item["c"] := "{u+2703}"  ; (✃) lower blade scissors
cmpDigitThree.item["d"] := "{u+2704}"  ; (✄) white scissors
cmpDigitThree.item["e"] := "{u+2706}"  ; (✆) telephone location sign
cmpDigitThree.item["f"] := "{u+2707}"  ; (✇) tape drive
cmpDigitThree.item["g"] := "{u+2708}"  ; (✈) airplane
cmpDigitThree.item["h"] := "{u+2709}"  ; (✉) envelope
cmpDigitThree.item["i"] := "{u+270a}"  ; (✊) raised fist
cmpDigitThree.item["j"] := "{u+270b}"  ; (✋) raised hand
cmpDigitThree.item["k"] := "{u+270c}"  ; (✌) victory hand
cmpDigitThree.item["l"] := "{u+270d}"  ; (✍) writing hand
cmpDigitThree.item["m"] := "{u+270e}"  ; (✎) lower right pencil
cmpDigitThree.item["n"] := "{u+270f}"  ; (✏) pencil
cmpDigitThree.item["o"] := "{u+2710}"  ; (✐) upper right pencil
cmpDigitThree.item["p"] := "{u+2711}"  ; (✑) white nib
cmpDigitThree.item["q"] := "{u+2712}"  ; (✒) black nib
cmpDigitThree.item["r"] := "{u+2713}"  ; (✓) check mark
cmpDigitThree.item["s"] := "{u+2714}"  ; (✔) heavy check mark
cmpDigitThree.item["t"] := "{u+2715}"  ; (✕) multiplication x
cmpDigitThree.item["u"] := "{u+2716}"  ; (✖) heavy multiplication x
cmpDigitThree.item["v"] := "{u+2717}"  ; (✗) ballot x
cmpDigitThree.item["w"] := "{u+2718}"  ; (✘) heavy ballot x
cmpDigitThree.item["x"] := "{u+2719}"  ; (✙) outlined Greek cross
cmpDigitThree.item["y"] := "{u+271a}"  ; (✚) heavy Greek cross
cmpDigitThree.item["z"] := "{u+271b}"  ; (✛) open centre cross

cmpDigitFour.item["a"] := "{u+271c}"  ; (✜) heavy open centre cross
cmpDigitFour.item["b"] := "{u+271d}"  ; (✝) Latin cross
cmpDigitFour.item["c"] := "{u+271e}"  ; (✞) shadowed white Latin cross
cmpDigitFour.item["d"] := "{u+271f}"  ; (✟) outlined Latin cross
cmpDigitFour.item["e"] := "{u+2720}"  ; (✠) Maltese cross
cmpDigitFour.item["f"] := "{u+2721}"  ; (✡) star of David
cmpDigitFour.item["g"] := "{u+2722}"  ; (✢) four teardrop-spoked asterisk
cmpDigitFour.item["h"] := "{u+2723}"  ; (✣) four balloon-spoked asterisk
cmpDigitFour.item["i"] := "{u+2724}"  ; (✤) heavy four balloon-spoked asterisk
cmpDigitFour.item["j"] := "{u+2725}"  ; (✥) four club-spoked asterisk
cmpDigitFour.item["k"] := "{u+2726}"  ; (✦) black four-pointed star
cmpDigitFour.item["l"] := "{u+2727}"  ; (✧) white four-pointed star
cmpDigitFour.item["m"] := "{u+2729}"  ; (✩) stress outlined white star
cmpDigitFour.item["n"] := "{u+272a}"  ; (✪) circled white star
cmpDigitFour.item["o"] := "{u+272b}"  ; (✫) open centre black star
cmpDigitFour.item["p"] := "{u+272c}"  ; (✬) black centre white star
cmpDigitFour.item["q"] := "{u+272d}"  ; (✭) outlined black star
cmpDigitFour.item["r"] := "{u+272e}"  ; (✮) heavy outlined black star
cmpDigitFour.item["s"] := "{u+272f}"  ; (✯) pinwheel star
cmpDigitFour.item["t"] := "{u+2730}"  ; (✰) shadowed white star
cmpDigitFour.item["u"] := "{u+2731}"  ; (✱) heavy asterisk
cmpDigitFour.item["v"] := "{u+2732}"  ; (✲) open centre asterisk
cmpDigitFour.item["w"] := "{u+2733}"  ; (✳) eight-spoked asterisk
cmpDigitFour.item["x"] := "{u+2734}"  ; (✴) eight-pointed black star
cmpDigitFour.item["y"] := "{u+2735}"  ; (✵) eight-pointed pinwheel star
cmpDigitFour.item["z"] := "{u+2736}"  ; (✶) six-pointed black star

cmpDigitFive.item["a"] := "{u+2737}"  ; (✷) eight-pointed rectilinear black star
cmpDigitFive.item["b"] := "{u+2738}"  ; (✸) heavy eight-pointed rectilinear black star
cmpDigitFive.item["c"] := "{u+2739}"  ; (✹) twelve pointed black star
cmpDigitFive.item["d"] := "{u+273a}"  ; (✺) sixteen-pointed asterisk
cmpDigitFive.item["e"] := "{u+273b}"  ; (✻) teardrop-spoked asterisk
cmpDigitFive.item["f"] := "{u+273c}"  ; (✼) open centre teardrop-spoked asterisk
cmpDigitFive.item["g"] := "{u+273d}"  ; (✽) heavy teardrop-spoked asterisk
cmpDigitFive.item["h"] := "{u+273e}"  ; (✾) six-petalled black and white florette
cmpDigitFive.item["i"] := "{u+273f}"  ; (✿) black florette
cmpDigitFive.item["j"] := "{u+2740}"  ; (❀) white florette
cmpDigitFive.item["k"] := "{u+2741}"  ; (❁) eight-petalled outlined black florette
cmpDigitFive.item["l"] := "{u+2742}"  ; (❂) circled open centre eight-pointed star
cmpDigitFive.item["m"] := "{u+2743}"  ; (❃) heavy teardrop-spoked pinwheel asterisk
cmpDigitFive.item["n"] := "{u+2744}"  ; (❄) snowflake
cmpDigitFive.item["o"] := "{u+2745}"  ; (❅) tight trifoliate snowflake
cmpDigitFive.item["p"] := "{u+2746}"  ; (❆) heavy chevron snowflake
cmpDigitFive.item["q"] := "{u+2747}"  ; (❇) sparkle
cmpDigitFive.item["r"] := "{u+2748}"  ; (❈) heavy sparkle
cmpDigitFive.item["s"] := "{u+2749}"  ; (❉) balloon-spoked asterisk
cmpDigitFive.item["t"] := "{u+274a}"  ; (❊) eight teardrop-spoked propeller asterisk
cmpDigitFive.item["u"] := "{u+274b}"  ; (❋) heavy eight teardrop-spoked propeller asterisk
cmpDigitFive.item["v"] := "{u+274d}"  ; (❍) shadowed white circle
cmpDigitFive.item["w"] := "{u+274f}"  ; (❏) lower right drop-shadowed white square
cmpDigitFive.item["x"] := "{u+2750}"  ; (❐) upper right drop-shadowed white square
cmpDigitFive.item["y"] := "{u+2751}"  ; (❑) lower right shadowed white square
cmpDigitFive.item["z"] := "{u+2752}"  ; (❒) upper right shadowed white square

cmpDigitSix.item["a"] := "{u+2756}"  ; (❖) black diamond minus white x
cmpDigitSix.item["b"] := "{u+2758}"  ; (❘) light vertical bar
cmpDigitSix.item["c"] := "{u+2759}"  ; (❙) medium vertical bar
cmpDigitSix.item["d"] := "{u+275a}"  ; (❚) heavy vertical bar
cmpDigitSix.item["e"] := "{u+275b}"  ; (❛) heavy single turned comma quotation mark ornament
cmpDigitSix.item["f"] := "{u+275c}"  ; (❜) heavy single comma quotation mark ornament
cmpDigitSix.item["g"] := "{u+275d}"  ; (❝) heavy double turned comma quotation mark ornament
cmpDigitSix.item["h"] := "{u+275e}"  ; (❞) heavy double comma quotation mark ornament
cmpDigitSix.item["i"] := "{u+275f}"  ; (❟) heavy low single comma quotation mark ornament
cmpDigitSix.item["j"] := "{u+2760}"  ; (❠) heavy low double comma quotation mark ornament
cmpDigitSix.item["k"] := "{u+2761}"  ; (❡) curved stem paragraph sign ornament
cmpDigitSix.item["l"] := "{u+2762}"  ; (❢) heavy exclamation mark ornament
cmpDigitSix.item["m"] := "{u+2763}"  ; (❣) heavy heart exclamation mark ornament
cmpDigitSix.item["n"] := "{u+2764}"  ; (❤) heavy black heart
cmpDigitSix.item["o"] := "{u+2765}"  ; (❥) rotated heavy black heart bullet
cmpDigitSix.item["p"] := "{u+2766}"  ; (❦) floral heart
cmpDigitSix.item["q"] := "{u+2767}"  ; (❧) rotated floral heart bullet

cmpDigitSeven.item["a"] := "{u+2794}"  ; (➔) heavy wide-headed rightwards arrow
cmpDigitSeven.item["b"] := "{u+2798}"  ; (➘) heavy south east arrow
cmpDigitSeven.item["c"] := "{u+2799}"  ; (➙) heavy rightwards arrow
cmpDigitSeven.item["d"] := "{u+279a}"  ; (➚) heavy north east arrow
cmpDigitSeven.item["e"] := "{u+279b}"  ; (➛) drafting point rightwards arrow
cmpDigitSeven.item["f"] := "{u+279c}"  ; (➜) heavy round-tipped rightwards arrow
cmpDigitSeven.item["g"] := "{u+279d}"  ; (➝) triangle-headed rightwards arrow
cmpDigitSeven.item["h"] := "{u+279e}"  ; (➞) heavy triangle-headed rightwards arrow
cmpDigitSeven.item["i"] := "{u+279f}"  ; (➟) dashed triangle-headed rightwards arrow
cmpDigitSeven.item["j"] := "{u+27a0}"  ; (➠) heavy dashed triangle-headed rightwards arrow
cmpDigitSeven.item["k"] := "{u+27a1}"  ; (➡) black rightwards arrow
cmpDigitSeven.item["l"] := "{u+27a2}"  ; (➢) 3d top-lighted rightwards arrowhead
cmpDigitSeven.item["m"] := "{u+27a3}"  ; (➣) 3d bottom-lighted rightwards arrowhead
cmpDigitSeven.item["n"] := "{u+27a4}"  ; (➤) black rightwards arrowhead
cmpDigitSeven.item["o"] := "{u+27a5}"  ; (➥) heavy black curved downwards and rightwards arrow
cmpDigitSeven.item["p"] := "{u+27a6}"  ; (➦) heavy black curved upwards and rightwards arrow
cmpDigitSeven.item["q"] := "{u+27a7}"  ; (➧) squat black rightwards arrow
cmpDigitSeven.item["r"] := "{u+27a8}"  ; (➨) heavy concave-pointed black rightwards arrow
cmpDigitSeven.item["s"] := "{u+27a9}"  ; (➩) right-shaded white rightwards arrow
cmpDigitSeven.item["t"] := "{u+27aa}"  ; (➪) left-shaded white rightwards arrow
cmpDigitSeven.item["u"] := "{u+27ab}"  ; (➫) back-tilted shadowed white rightwards arrow
cmpDigitSeven.item["v"] := "{u+27ac}"  ; (➬) front-tilted shadowed white rightwards arrow
cmpDigitSeven.item["w"] := "{u+27ad}"  ; (➭) heavy lower right-shadowed white rightwards arrow
cmpDigitSeven.item["x"] := "{u+27ae}"  ; (➮) heavy upper right-shadowed white rightwards arrow
cmpDigitSeven.item["y"] := "{u+27af}"  ; (➯) notched lower right-shadowed white rightwards arrow
cmpDigitSeven.item["z"] := "{u+27b1}"  ; (➱) notched upper right-shadowed white rightwards arrow

cmpDigitEight.item["a"] := "{u+27b2}"  ; (➲) circled heavy white rightwards arrow
cmpDigitEight.item["b"] := "{u+27b3}"  ; (➳) white-feathered rightwards arrow
cmpDigitEight.item["c"] := "{u+27b4}"  ; (➴) black-feathered south east arrow
cmpDigitEight.item["d"] := "{u+27b5}"  ; (➵) black-feathered rightwards arrow
cmpDigitEight.item["e"] := "{u+27b6}"  ; (➶) black-feathered north east arrow
cmpDigitEight.item["f"] := "{u+27b7}"  ; (➷) heavy black-feathered south east arrow
cmpDigitEight.item["g"] := "{u+27b8}"  ; (➸) heavy black-feathered rightwards arrow
cmpDigitEight.item["h"] := "{u+27b9}"  ; (➹) heavy black-feathered north east arrow
cmpDigitEight.item["i"] := "{u+27ba}"  ; (➺) teardrop-barbed rightwards arrow
cmpDigitEight.item["j"] := "{u+27bb}"  ; (➻) heavy teardrop-shanked rightwards arrow
cmpDigitEight.item["k"] := "{u+27bc}"  ; (➼) wedge-tailed rightwards arrow
cmpDigitEight.item["l"] := "{u+27bd}"  ; (➽) heavy wedge-tailed rightwards arrow
cmpDigitEight.item["m"] := "{u+27be}"  ; (➾) open-outlined rightwards arrow
cmpDigitEight.item["n"] := "{u+27c1}"  ; (⟁) white triangle containing small white triangle


; Compose :  Dingbat Negative Circled Digits (n)

cmpSmallN.item["1"] := "{u+2776}"  ; (❶) dingbat negative circled digit 1
cmpSmallN.item["2"] := "{u+2777}"  ; (❷) dingbat negative circled digit 2
cmpSmallN.item["3"] := "{u+2778}"  ; (❸) dingbat negative circled digit 3
cmpSmallN.item["4"] := "{u+2779}"  ; (❹) dingbat negative circled digit 4
cmpSmallN.item["5"] := "{u+277a}"  ; (❺) dingbat negative circled digit 5
cmpSmallN.item["6"] := "{u+277b}"  ; (❻) dingbat negative circled digit 6
cmpSmallN.item["7"] := "{u+277c}"  ; (❼) dingbat negative circled digit 7
cmpSmallN.item["8"] := "{u+277d}"  ; (❽) dingbat negative circled digit 8
cmpSmallN.item["9"] := "{u+277e}"  ; (❾) dingbat negative circled digit 9
cmpSmallN.item["0"] := "{u+277f}"  ; (❿) dingbat negative circled digit 10


; Configuration :  'AltGr (RAlt)' and 'AltGr (RAlt) + Shift' modifiers

; Key :  1
>!sc002::
<^>!sc002::Send {u+00a1}   ; (¡) inverted exclamation mark
>!+sc002::
<^>!+sc002::Send {u+00b9}  ; (¹) superscript 1

; Key :  2
>!sc003::
<^>!sc003::Send {u+2264}   ; (≤) less-than or equal to
>!+sc003::
<^>!+sc003::Send {u+00b2}  ; (²) superscript 2

; Key :  3
>!sc004::
<^>!sc004::Send {u+2265}   ; (≥) greater-than or equal to
>!+sc004::
<^>!+sc004::Send {u+00b3}  ; (³) superscript 3

; Key :  4
>!sc005::
<^>!sc005::Send {u+00a3}   ; (£) pound sign
>!+sc005::
<^>!+sc005::Send {u+00a5}  ; (¥) yen sign

; Key :  5
>!sc006::
<^>!sc006::Send {u+20ac}   ; (€) euro sign
>!+sc006::
<^>!+sc006::Send {u+00a2}  ; (¢) cent sign (dollar)

; Key :  6
>!sc007::
<^>!sc007::
  if GetKeyState("CapsLock", "T")
    Send {u+00c3}  ; (Ã) A with tilde
  else
    Send {u+00e3}  ; (ã) a with tilde
  return
>!+sc007::
<^>!+sc007::
  if GetKeyState("CapsLock", "T")
    Send {u+00e3}  ; (ã) a with tilde
  else
    Send {u+00c3}  ; (Ã) A with tilde
  return

; Key :  7
>!sc008::
<^>!sc008::
  if GetKeyState("CapsLock", "T")
    Send {u+00d5}  ; (Õ) O with tilde
  else
    Send {u+00f5}  ; (õ) o with tilde
  return
>!+sc008::
<^>!+sc008::
  if GetKeyState("CapsLock", "T")
    Send {u+00f5}  ; (õ) o with tilde
  else
    Send {u+00d5}  ; (Õ) O with tilde
  return

; Key :  8
>!sc009::
<^>!sc009::Send {u+201e}   ; („) double low-9 quotation mark
>!+sc009::
<^>!+sc009::Send {u+00a7}  ; (§) section sign

; Key :  9
>!sc00A::
<^>!sc00A::Send {u+201c}   ; (“) left double quotation mark
>!+sc00A::
<^>!+sc00A::Send {u+2018}  ; (‘) left single quotation mark

; Key :  0
>!sc00B::
<^>!sc00B::Send {u+201d}   ; (”) right double quotation mark
>!+sc00B::
<^>!+sc00B::Send {u+2019}  ; (’) right single quotation mark

; Key :  - / _ (hyphen-minus / underscore)
>!sc00C::
<^>!sc00C::Send {u+2013}   ; (–) en dash
>!+sc00C::
<^>!+sc00C::Send {u+2014}  ; (—) em dash

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D::Send {u+00d7}   ; (×) multiplication sign
>!+sc00D::
<^>!+sc00D::Send {u+00f7}  ; (÷) division sign

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
<^>!sc012::
  if GetKeyState("CapsLock", "T")
    Send {u+00cb}  ; (Ë) E with diaeresis
  else
    Send {u+00eb}  ; (ë) e with diaeresis
  return
>!+sc012::
<^>!+sc012::
  if GetKeyState("CapsLock", "T")
    Send {u+00eb}  ; (ë) e with diaeresis
  else
    Send {u+00cb}  ; (Ë) E with diaeresis
  return

; Key :  R
>!sc013::
<^>!sc013::
  if GetKeyState("CapsLock", "T")
    Send {u+00ca}  ; (Ê) E with circumflex
  else
    Send {u+00ea}  ; (ê) e with circumflex
  return
>!+sc013::
<^>!+sc013::
  if GetKeyState("CapsLock", "T")
    Send {u+00ea}  ; (ê) e with circumflex
  else
    Send {u+00ca}  ; (Ê) E with circumflex
  return

; Key :  T
>!sc014::
<^>!sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+00ce}  ; (Î) I with circumflex
  else
    Send {u+00ee}  ; (î) i with circumflex
  return
>!+sc014::
<^>!+sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+00ee}  ; (î) i with circumflex
  else
    Send {u+00ce}  ; (Î) I with circumflex
  return

; Key :  Y
>!sc015::
<^>!sc015::
  if GetKeyState("CapsLock", "T")
    Send {u+00db}  ; (Û) U with circumflex
  else
    Send {u+00fb}  ; (û) u with circumflex
  return
>!+sc015::
<^>!+sc015::
  if GetKeyState("CapsLock", "T")
    Send {u+00fb}  ; (û) u with circumflex
  else
    Send {u+00db}  ; (Û) U with circumflex
  return

; Key :  U
>!sc016::
<^>!sc016::
  if GetKeyState("CapsLock", "T")
    Send {u+00dc}  ; (Ü) U with diaeresis
  else
    Send {u+00fc}  ; (ü) u with diaeresis
  return
>!+sc016::
<^>!+sc016::
  if GetKeyState("CapsLock", "T")
    Send {u+00fc}  ; (ü) u with diaeresis
  else
    Send {u+00dc}  ; (Ü) U with diaeresis
  return

; Key :  I
>!sc017::
<^>!sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+00cf}  ; (Ï) I with diaeresis
  else
    Send {u+00ef}  ; (ï) i with diaeresis
  return
>!+sc017::
<^>!+sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+00ef}  ; (ï) i with diaeresis
  else
    Send {u+00cf}  ; (Ï) I with diaeresis
  return

; Key :  O
>!sc018::
<^>!sc018::
  if GetKeyState("CapsLock", "T")
    Send {u+00d6}  ; (Ö) O with diaeresis
  else
    Send {u+00f6}  ; (ö) o with diaeresis
  return
>!+sc018::
<^>!+sc018::
  if GetKeyState("CapsLock", "T")
    Send {u+00f6}  ; (ö) o with diaeresis
  else
    Send {u+00d6}  ; (Ö) O with diaeresis
  return

; Key :  P
>!sc019::
<^>!sc019::
  if GetKeyState("CapsLock", "T")
    Send {u+00d4}  ; (Ô) O with circumflex
  else
    Send {u+00f4}  ; (ô) o with circumflex
  return
>!+sc019::
<^>!+sc019::
  if GetKeyState("CapsLock", "T")
    Send {u+00f4}  ; (ô) o with circumflex
  else
    Send {u+00d4}  ; (Ô) O with circumflex
  return

; Key :  [ / { (left square bracket / left curly bracket)
>!sc01A::
<^>!sc01A::Send {u+00ab}   ; («) left-pointing double angle quotation mark
>!+sc01A::
<^>!+sc01A::Send {u+2039}  ; (‹) left-pointing single angle quotation mark

; Key :  ] / } (right square bracket / right curly bracket)
>!sc01B::
<^>!sc01B::Send {u+00bb}   ; (») right-pointing double angle quotation mark
>!+sc01B::
<^>!+sc01B::Send {u+203a}  ; (›) right-pointing single angle quotation mark

; Key :  A
>!sc01E::
<^>!sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+00c4}  ; (Ä) A with diaeresis
  else
    Send {u+00e4}  ; (ä) a with diaeresis
  return
>!+sc01E::
<^>!+sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+00e4}  ; (ä) a with diaeresis
  else
    Send {u+00c4}  ; (Ä) A with diaeresis
  return

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
    Send {u+00c2}  ; (Â) A with circumflex
  else
    Send {u+00e2}  ; (â) a with circumflex
  return
>!+sc020::
<^>!+sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+00e2}  ; (â) a with circumflex
  else
    Send {u+00c2}  ; (Â) A with circumflex
  return

; Key :  F
>!sc021::
<^>!sc021::
  if GetKeyState("CapsLock", "T")
    Send {u+00c9}  ; (É) E with acute
  else
    Send {u+00e9}  ; (é) e with acute
  return
>!+sc021::
<^>!+sc021::
  if GetKeyState("CapsLock", "T")
    Send {u+00e9}  ; (é) e with acute
  else
    Send {u+00c9}  ; (É) E with acute
  return

; Key :  G
>!sc022::
<^>!sc022::
  if GetKeyState("CapsLock", "T")
    Send {u+00c8}  ; (È) E with grave
  else
    Send {u+00e8}  ; (è) e with grave
  return
>!+sc022::
<^>!+sc022::
  if GetKeyState("CapsLock", "T")
    Send {u+00e8}  ; (è) e with grave
  else
    Send {u+00c8}  ; (È) E with grave
  return

; Key :  H
>!sc023::
<^>!sc023::
  if GetKeyState("CapsLock", "T")
    Send {u+00da}  ; (Ú) U with acute
  else
    Send {u+00fa}  ; (ú) u with acute
  return
>!+sc023::
<^>!+sc023::
  if GetKeyState("CapsLock", "T")
    Send {u+00fa}  ; (ú) u with acute
  else
    Send {u+00da}  ; (Ú) U with acute
  return

; Key :  J
>!sc024::
<^>!sc024::
  if GetKeyState("CapsLock", "T")
    Send {u+00d9}  ; (Ù) U with grave
  else
    Send {u+00f9}  ; (ù) u with grave
  return
>!+sc024::
<^>!+sc024::
  if GetKeyState("CapsLock", "T")
    Send {u+00f9}  ; (ù) u with grave
  else
    Send {u+00d9}  ; (Ù) U with grave
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

; Key :  ; / : (semicolon / colon)
>!sc027::
<^>!sc027::Send {u+00b0}   ; (°) degree sign
>!+sc027::
<^>!+sc027::Send {u+00b7}  ; (·) middle dot

; Key :  ' / " (apostrophe / quotation mark)
>!sc028::
<^>!sc028::Send {u+266a}   ; (♪) eighth note
>!+sc028::
<^>!+sc028::Send {u+266b}  ; (♫) beamed eighth notes

; Key :  \ / | (backslash / vertical line)
>!sc02B::
<^>!sc02B::Send {u+2002}   ; en space
>!+sc02B::
<^>!+sc02B::Send {u+2003}  ; em space

; Key :  Z
>!sc02C::
<^>!sc02C::
  if GetKeyState("CapsLock", "T")
    Send {u+00c1}  ; (Á) A with acute
  else
    Send {u+00e1}  ; (á) a with acute
  return
>!+sc02C::
<^>!+sc02C::
  if GetKeyState("CapsLock", "T")
    Send {u+00e1}  ; (á) a with acute
  else
    Send {u+00c1}  ; (Á) A with acute
  return

; Key :  X
>!sc02D::
<^>!sc02D::
  if GetKeyState("CapsLock", "T")
    Send {u+00c0}  ; (À) A with grave
  else
    Send {u+00e0}  ; (à) a with grave
  return
>!+sc02D::
<^>!+sc02D::
  if GetKeyState("CapsLock", "T")
    Send {u+00e0}  ; (à) a with grave
  else
    Send {u+00c0}  ; (À) A with grave
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

; Key :  V
>!sc02F::
<^>!sc02F::
  if GetKeyState("CapsLock", "T")
    Send {u+00cd}  ; (Í) I with acute
  else
    Send {u+00ed}  ; (í) i with acute
  return
>!+sc02F::
<^>!+sc02F::
  if GetKeyState("CapsLock", "T")
    Send {u+00ed}  ; (í) i with acute
  else
    Send {u+00cd}  ; (Í) I with acute
  return

; Key :  B
>!sc030::
<^>!sc030::
  if GetKeyState("CapsLock", "T")
    Send {u+00cc}  ; (Ì) I with grave
  else
    Send {u+00ec}  ; (ì) i with grave
  return
>!+sc030::
<^>!+sc030::
  if GetKeyState("CapsLock", "T")
    Send {u+00ec}  ; (ì) i with grave
  else
    Send {u+00cc}  ; (Ì) I with grave
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
>!sc032::
<^>!sc032::Send {u+00b5}   ; (µ) micro sign
>!+sc032::
<^>!+sc032::Send {u+00b1}  ; (±) plus-minus sign

; Key :  , / < (comma / less-than sign)
>!sc033::
<^>!sc033::
  if GetKeyState("CapsLock", "T")
    Send {u+00d3}  ; (Ó) O with acute
  else
    Send {u+00f3}  ; (ó) o with acute
  return
>!+sc033::
<^>!+sc033::
  if GetKeyState("CapsLock", "T")
    Send {u+00f3}  ; (ó) o with acute
  else
    Send {u+00d3}  ; (Ó) O with acute
  return

; Key :  . / > (period / greater-than sign)
>!sc034::
<^>!sc034::
  if GetKeyState("CapsLock", "T")
    Send {u+00d2}  ; (Ò) O with grave
  else
    Send {u+00f2}  ; (ò) o with grave
  return
>!+sc034::
<^>!+sc034::
  if GetKeyState("CapsLock", "T")
    Send {u+00f2}  ; (ò) o with grave
  else
    Send {u+00d2}  ; (Ò) O with grave
  return

; Key :  / / ? (slash / question mark)
>!sc035::
<^>!sc035::Send {u+00bf}   ; (¿) inverted question mark
>!+sc035::
<^>!+sc035::Send {u+2022}  ; (•) bullet

; Key :  (space)
>!sc039::
<^>!sc039::Send {u+00a0}   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send {u+00a0}  ; non-breaking space (NBSP)


; Configuration :  Compose Key Selector

>!sc029::
>!+sc029::
<^>!sc029::
<^>!+sc029::
>!sc056::
>!+sc056::
<^>!sc056::
<^>!+sc056::
  Input, keyA, L1, {bs}{del}{esc}{home}{end}
  Input, keyB, L1, {bs}{del}{esc}{home}{end}

  if (keyA == "'")
    Send % cmpAcuteAccent.item[keyB]
  else if (keyA == "``")
    Send % cmpGraveAccent.item[keyB]
  else if (keyA == chr(34))
    Send % cmpDiaeresis.item[keyB]
  else if (keyA == "c")
    Send % cmpCircumflex.item[keyB]
  else if (keyA == "~")
    Send % cmpTilde.item[keyB]
  else if (keyA == ",")
    Send % cmpCedillaOgonek.item[keyB]
  else if (keyA == "v")
    Send % cmpCaron.item[keyB]
  else if (keyA == ".")
    Send % cmpDotAbove.item[keyB]
  else if (keyA == "o")
    Send % cmpRingAbove.item[keyB]
  else if (keyA == "-")
    Send % cmpMacronStroke.item[keyB]
  else if (keyA == "_")
    Send % cmpMacronStrokeAdd.item[keyB]
  else if (keyA == "/")
    Send % cmpStroke.item[keyB]
  else if (keyA == "b")
    Send % cmpBreveSpecial.item[keyB]
  else if (keyA == "=")
    Send % cmpDoubleAcute.item[keyB]
  else if (keyA == "h")
    Send % cmpSmallH.item[keyB]
  else if (keyA == "f")
    Send % cmpSmallF.item[keyB]
  else if (keyA == "t")
    Send % cmpSmallT.item[keyB]
  else if (keyA == "l")
    Send % cmpSmallL.item[keyB]
  else if (keyA == "r")
    Send % cmpSmallR.item[keyB]
  else if (keyA == "$")
    Send % cmpCurrency.item[keyB]
  else if (keyA == "g")
    Send % cmpGreek.item[keyB]
  else if (keyA == "p")
    Send % cmpSuperscript.item[keyB]
  else if (keyA == "u")
    Send % cmpSubscript.item[keyB]
  else if (keyA == " ")
    Send % cmpSpace.item[keyB]
  else if (keyA == "q")
    Send % cmpQuad.item[keyB]
  else if (keyA == "a")
    Send % cmpArrow.item[keyB]
  else if (keyA == "s")
    Send % cmpSymbols.item[keyB]
  else if (keyA == "m")
    Send % cmpMathSymbols.item[keyB]
  else if (keyA == "A")
    Send % cmpCapitalA.item[keyB]
  else if (keyA == "d")
    Send % cmpSmallD.item[keyB]
  else if (keyA == "D")
    Send % cmpCapitalD.item[keyB]
  else if (keyA == "i")
    Send % cmpSmallI.item[keyB]
  else if (keyA == "I")
    Send % cmpCapitalI.item[keyB]
  else if (keyA == "n")
    Send % cmpSmallN.item[keyB]
  else if (keyA == "N")
    Send % cmpCapitalN.item[keyB]
  else if (keyA == "O")
    Send % cmpCapitalO.item[keyB]
  else if (keyA == "S")
    Send % cmpCapitalS.item[keyB]
  else if (keyA == "T")
    Send % cmpCapitalT.item[keyB]
  else if (keyA == "P")
    Send % cmpCapitalP.item[keyB]
  else if (keyA == "y")
    Send % cmpSmallY.item[keyB]
  else if (keyA == "x")
    Send % cmpSmallX.item[keyB]
  else if (keyA == "|")
    Send % cmpVerticalLine.item[keyB]
  else if (keyA == "*")
    Send % cmpAsterisk.item[keyB]
  else if (keyA == "!")
    Send % cmpExclam.item[keyB]
  else if (keyA == "?")
    Send % cmpQuestion.item[keyB]
  else if (keyA == "(")
    Send % cmpParenLeft.item[keyB]
  else if (keyA == "+")
    Send % cmpPlus.item[keyB]
  else if (keyA == "%")
    Send % cmpPercent.item[keyB]
  else if (keyA == "8")
    Send % cmpDigitEight.item[keyB]
  else if (keyA == "<")
    Send % cmpLessThan.item[keyB]
  else if (keyA == ">")
    Send % cmpGreaterThan.item[keyB]
  else if (keyA == "[")
    Send % cmpBracketLeft.item[keyB]
  else if (keyA == ";")
    Send % cmpSemicolon.item[keyB]
  else if (keyA == "1")
    Send % cmpDigitOne.item[keyB]
  else if (keyA == "2")
    Send % cmpDigitTwo.item[keyB]
  else if (keyA == "3")
    Send % cmpDigitThree.item[keyB]
  else if (keyA == "4")
    Send % cmpDigitFour.item[keyB]
  else if (keyA == "5")
    Send % cmpDigitFive.item[keyB]
  else if (keyA == "7")
    Send % cmpDigitSeven.item[keyB]
  else if (keyA == "0")
    Send % cmpDigitZero.item[keyB]
  else if (keyA == "]")
    Send % cmpBracketRight.item[keyB]
  else if (keyA == "\")
    Send % cmpBackslash.item[keyB]
  else if (keyA == "C")
    Send % cmpCapitalC.item[keyB]
  else if (keyA == "G")
    Send % cmpCapitalG.item[keyB]
  else if (keyA == "B")
    Send % cmpCapitalB.item[keyB]
  else if (keyA == "L")
    Send % cmpCapitalL.item[keyB]
  else if (keyA == "R")
    Send % cmpCapitalR.item[keyB]
  else if (keyA == "6")
    Send % cmpDigitSix.item[keyB]

  keyA := ""  ; avoids leaking content via debug properties
  keyB := ""  ; avoids leaking content via debug properties
  return
