#requires AutoHotkey v1.1

; UltimateKEYS (for AutoHotkey v1.1).ahk - 2024-08-03

; Website :  https://pieter-degroote.github.io/UltimateKEYS/

; GitHub :   https://github.com/pieter-degroote/UltimateKEYS

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout (on Windows) :  US QWERTY



#NoEnv          ; avoids checking empty variables to see if they are environment variables
#KeyHistory 0   ; disables the key history (for privacy and security)
ListLines Off   ; omits recently executed lines from history (for privacy and security)

SendMode Input  ; optimizes for faster and more reliable input


; Compose :  Acute Accent (')

cmpAcuteAccent := ComObjCreate("Scripting.Dictionary")
cmpAcuteAccent.item["a"] := "{U+00E1}"  ; (á) a with acute
cmpAcuteAccent.item["A"] := "{U+00C1}"  ; (Á) A with acute
cmpAcuteAccent.item["c"] := "{U+0107}"  ; (ć) c with acute
cmpAcuteAccent.item["C"] := "{U+0106}"  ; (Ć) C with acute
cmpAcuteAccent.item["d"] := "{U+1E09}"  ; (ḉ) c with cedilla and acute
cmpAcuteAccent.item["D"] := "{U+1E08}"  ; (Ḉ) C with cedilla and acute
cmpAcuteAccent.item["e"] := "{U+00E9}"  ; (é) e with acute
cmpAcuteAccent.item["E"] := "{U+00C9}"  ; (É) E with acute
cmpAcuteAccent.item["g"] := "{U+01F5}"  ; (ǵ) g with acute
cmpAcuteAccent.item["G"] := "{U+01F4}"  ; (Ǵ) G with acute
cmpAcuteAccent.item["i"] := "{U+00ED}"  ; (í) i with acute
cmpAcuteAccent.item["I"] := "{U+00CD}"  ; (Í) I with acute
cmpAcuteAccent.item["j"] := "{U+01FF}"  ; (ǿ) o with stroke and acute
cmpAcuteAccent.item["J"] := "{U+01FE}"  ; (Ǿ) O with stroke and acute
cmpAcuteAccent.item["k"] := "{U+1E31}"  ; (ḱ) k with acute
cmpAcuteAccent.item["K"] := "{U+1E30}"  ; (Ḱ) K with acute
cmpAcuteAccent.item["l"] := "{U+013A}"  ; (ĺ) l with acute
cmpAcuteAccent.item["L"] := "{U+0139}"  ; (Ĺ) L with acute
cmpAcuteAccent.item["m"] := "{U+1E3F}"  ; (ḿ) m with acute
cmpAcuteAccent.item["M"] := "{U+1E3E}"  ; (Ḿ) M with acute
cmpAcuteAccent.item["n"] := "{U+0144}"  ; (ń) n with acute
cmpAcuteAccent.item["N"] := "{U+0143}"  ; (Ń) N with acute
cmpAcuteAccent.item["o"] := "{U+00F3}"  ; (ó) o with acute
cmpAcuteAccent.item["O"] := "{U+00D3}"  ; (Ó) O with acute
cmpAcuteAccent.item["p"] := "{U+1E55}"  ; (ṕ) p with acute
cmpAcuteAccent.item["P"] := "{U+1E54}"  ; (Ṕ) P with acute
cmpAcuteAccent.item["q"] := "{U+01FD}"  ; (ǽ) ae with acute
cmpAcuteAccent.item["Q"] := "{U+01FC}"  ; (Ǽ) AE with acute
cmpAcuteAccent.item["r"] := "{U+0155}"  ; (ŕ) r with acute
cmpAcuteAccent.item["R"] := "{U+0154}"  ; (Ŕ) R with acute
cmpAcuteAccent.item["s"] := "{U+015B}"  ; (ś) s with acute
cmpAcuteAccent.item["S"] := "{U+015A}"  ; (Ś) S with acute
cmpAcuteAccent.item["u"] := "{U+00FA}"  ; (ú) u with acute
cmpAcuteAccent.item["U"] := "{U+00DA}"  ; (Ú) U with acute
cmpAcuteAccent.item["w"] := "{U+1E83}"  ; (ẃ) w with acute
cmpAcuteAccent.item["W"] := "{U+1E82}"  ; (Ẃ) W with acute
cmpAcuteAccent.item["x"] := "{U+01FB}"  ; (ǻ) a with ring above and acute
cmpAcuteAccent.item["X"] := "{U+01FA}"  ; (Ǻ) A with ring above and acute
cmpAcuteAccent.item["y"] := "{U+00FD}"  ; (ý) y with acute
cmpAcuteAccent.item["Y"] := "{U+00DD}"  ; (Ý) Y with acute
cmpAcuteAccent.item["z"] := "{U+017A}"  ; (ź) z with acute
cmpAcuteAccent.item["Z"] := "{U+0179}"  ; (Ź) Z with acute


; Compose :  Grave Accent (`)

cmpGraveAccent := ComObjCreate("Scripting.Dictionary")
cmpGraveAccent.item["a"] := "{U+00E0}"  ; (à) a with grave
cmpGraveAccent.item["A"] := "{U+00C0}"  ; (À) A with grave
cmpGraveAccent.item["e"] := "{U+00E8}"  ; (è) e with grave
cmpGraveAccent.item["E"] := "{U+00C8}"  ; (È) E with grave
cmpGraveAccent.item["i"] := "{U+00EC}"  ; (ì) i with grave
cmpGraveAccent.item["I"] := "{U+00CC}"  ; (Ì) I with grave
cmpGraveAccent.item["n"] := "{U+01F9}"  ; (ǹ) n with grave
cmpGraveAccent.item["N"] := "{U+01F8}"  ; (Ǹ) N with grave
cmpGraveAccent.item["o"] := "{U+00F2}"  ; (ò) o with grave
cmpGraveAccent.item["O"] := "{U+00D2}"  ; (Ò) O with grave
cmpGraveAccent.item["u"] := "{U+00F9}"  ; (ù) u with grave
cmpGraveAccent.item["U"] := "{U+00D9}"  ; (Ù) U with grave
cmpGraveAccent.item["w"] := "{U+1E81}"  ; (ẁ) w with grave
cmpGraveAccent.item["W"] := "{U+1E80}"  ; (Ẁ) W with grave
cmpGraveAccent.item["y"] := "{U+1EF3}"  ; (ỳ) y with grave
cmpGraveAccent.item["Y"] := "{U+1EF2}"  ; (Ỳ) Y with grave


; Compose :  Diaeresis (")

cmpDiaeresis := ComObjCreate("Scripting.Dictionary")
cmpDiaeresis.item["a"] := "{U+00E4}"  ; (ä) a with diaeresis
cmpDiaeresis.item["A"] := "{U+00C4}"  ; (Ä) A with diaeresis
cmpDiaeresis.item["e"] := "{U+00EB}"  ; (ë) e with diaeresis
cmpDiaeresis.item["E"] := "{U+00CB}"  ; (Ë) E with diaeresis
cmpDiaeresis.item["h"] := "{U+1E27}"  ; (ḧ) h with diaeresis
cmpDiaeresis.item["H"] := "{U+1E26}"  ; (Ḧ) H with diaeresis
cmpDiaeresis.item["i"] := "{U+00EF}"  ; (ï) i with diaeresis
cmpDiaeresis.item["I"] := "{U+00CF}"  ; (Ï) I with diaeresis
cmpDiaeresis.item["o"] := "{U+00F6}"  ; (ö) o with diaeresis
cmpDiaeresis.item["O"] := "{U+00D6}"  ; (Ö) O with diaeresis
cmpDiaeresis.item["t"] := "{U+1E97}"  ; (ẗ) t with diaeresis
cmpDiaeresis.item["u"] := "{U+00FC}"  ; (ü) u with diaeresis
cmpDiaeresis.item["U"] := "{U+00DC}"  ; (Ü) U with diaeresis
cmpDiaeresis.item["w"] := "{U+1E85}"  ; (ẅ) w with diaeresis
cmpDiaeresis.item["W"] := "{U+1E84}"  ; (Ẅ) W with diaeresis
cmpDiaeresis.item["x"] := "{U+1E8D}"  ; (ẍ) x with diaeresis
cmpDiaeresis.item["X"] := "{U+1E8C}"  ; (Ẍ) X with diaeresis
cmpDiaeresis.item["y"] := "{U+00FF}"  ; (ÿ) y with diaeresis
cmpDiaeresis.item["Y"] := "{U+0178}"  ; (Ÿ) Y with diaeresis


; Compose :  Circumflex Accent (c)

cmpCircumflex := ComObjCreate("Scripting.Dictionary")
cmpCircumflex.item["a"] := "{U+00E2}"  ; (â) a with circumflex
cmpCircumflex.item["A"] := "{U+00C2}"  ; (Â) A with circumflex
cmpCircumflex.item["c"] := "{U+0109}"  ; (ĉ) c with circumflex
cmpCircumflex.item["C"] := "{U+0108}"  ; (Ĉ) C with circumflex
cmpCircumflex.item["e"] := "{U+00EA}"  ; (ê) e with circumflex
cmpCircumflex.item["E"] := "{U+00CA}"  ; (Ê) E with circumflex
cmpCircumflex.item["g"] := "{U+011D}"  ; (ĝ) g with circumflex
cmpCircumflex.item["G"] := "{U+011C}"  ; (Ĝ) G with circumflex
cmpCircumflex.item["h"] := "{U+0125}"  ; (ĥ) h with circumflex
cmpCircumflex.item["H"] := "{U+0124}"  ; (Ĥ) H with circumflex
cmpCircumflex.item["i"] := "{U+00EE}"  ; (î) i with circumflex
cmpCircumflex.item["I"] := "{U+00CE}"  ; (Î) I with circumflex
cmpCircumflex.item["j"] := "{U+0135}"  ; (ĵ) j with circumflex
cmpCircumflex.item["J"] := "{U+0134}"  ; (Ĵ) J with circumflex
cmpCircumflex.item["o"] := "{U+00F4}"  ; (ô) o with circumflex
cmpCircumflex.item["O"] := "{U+00D4}"  ; (Ô) O with circumflex
cmpCircumflex.item["s"] := "{U+015D}"  ; (ŝ) s with circumflex
cmpCircumflex.item["S"] := "{U+015C}"  ; (Ŝ) S with circumflex
cmpCircumflex.item["u"] := "{U+00FB}"  ; (û) u with circumflex
cmpCircumflex.item["U"] := "{U+00DB}"  ; (Û) U with circumflex
cmpCircumflex.item["w"] := "{U+0175}"  ; (ŵ) w with circumflex
cmpCircumflex.item["W"] := "{U+0174}"  ; (Ŵ) W with circumflex
cmpCircumflex.item["y"] := "{U+0177}"  ; (ŷ) y with circumflex
cmpCircumflex.item["Y"] := "{U+0176}"  ; (Ŷ) Y with circumflex
cmpCircumflex.item["z"] := "{U+1E91}"  ; (ẑ) z with circumflex
cmpCircumflex.item["Z"] := "{U+1E90}"  ; (Ẑ) Z with circumflex


; Compose :  Tilde (~)

cmpTilde := ComObjCreate("Scripting.Dictionary")
cmpTilde.item["a"] := "{U+00E3}"  ; (ã) a with tilde
cmpTilde.item["A"] := "{U+00C3}"  ; (Ã) A with tilde
cmpTilde.item["e"] := "{U+1EBD}"  ; (ẽ) e with tilde
cmpTilde.item["E"] := "{U+1EBC}"  ; (Ẽ) E with tilde
cmpTilde.item["i"] := "{U+0129}"  ; (ĩ) i with tilde
cmpTilde.item["I"] := "{U+0128}"  ; (Ĩ) I with tilde
cmpTilde.item["l"] := "{U+026B}"  ; (ɫ) l with middle tilde
cmpTilde.item["L"] := "{U+2C62}"  ; (Ɫ) L with middle tilde
cmpTilde.item["n"] := "{U+00F1}"  ; (ñ) n with tilde
cmpTilde.item["N"] := "{U+00D1}"  ; (Ñ) N with tilde
cmpTilde.item["o"] := "{U+00F5}"  ; (õ) o with tilde
cmpTilde.item["O"] := "{U+00D5}"  ; (Õ) O with tilde
cmpTilde.item["u"] := "{U+0169}"  ; (ũ) u with tilde
cmpTilde.item["U"] := "{U+0168}"  ; (Ũ) U with tilde
cmpTilde.item["v"] := "{U+1E7D}"  ; (ṽ) v with tilde
cmpTilde.item["V"] := "{U+1E7C}"  ; (Ṽ) V with tilde
cmpTilde.item["y"] := "{U+1EF9}"  ; (ỹ) y with tilde
cmpTilde.item["Y"] := "{U+1EF8}"  ; (Ỹ) Y with tilde


; Compose :  Cedilla and Ogonek (,)

cmpCedillaOgonek := ComObjCreate("Scripting.Dictionary")
cmpCedillaOgonek.item["a"] := "{U+0105}"  ; (ą) a with ogonek
cmpCedillaOgonek.item["A"] := "{U+0104}"  ; (Ą) A with ogonek
cmpCedillaOgonek.item["c"] := "{U+00E7}"  ; (ç) c with cedilla
cmpCedillaOgonek.item["C"] := "{U+00C7}"  ; (Ç) C with cedilla
cmpCedillaOgonek.item["d"] := "{U+1E11}"  ; (ḑ) d with cedilla
cmpCedillaOgonek.item["D"] := "{U+1E10}"  ; (Ḑ) D with cedilla
cmpCedillaOgonek.item["e"] := "{U+0119}"  ; (ę) e with ogonek
cmpCedillaOgonek.item["E"] := "{U+0118}"  ; (Ę) E with ogonek
cmpCedillaOgonek.item["f"] := "{U+0229}"  ; (ȩ) e with cedilla
cmpCedillaOgonek.item["F"] := "{U+0228}"  ; (Ȩ) E with cedilla
cmpCedillaOgonek.item["g"] := "{U+0123}"  ; (ģ) g with cedilla
cmpCedillaOgonek.item["G"] := "{U+0122}"  ; (Ģ) G with cedilla
cmpCedillaOgonek.item["h"] := "{U+1E29}"  ; (ḩ) h with cedilla
cmpCedillaOgonek.item["H"] := "{U+1E28}"  ; (Ḩ) H with cedilla
cmpCedillaOgonek.item["i"] := "{U+012F}"  ; (į) i with ogonek
cmpCedillaOgonek.item["I"] := "{U+012E}"  ; (Į) I with ogonek
cmpCedillaOgonek.item["k"] := "{U+0137}"  ; (ķ) k with cedilla
cmpCedillaOgonek.item["K"] := "{U+0136}"  ; (Ķ) K with cedilla
cmpCedillaOgonek.item["l"] := "{U+013C}"  ; (ļ) l with cedilla
cmpCedillaOgonek.item["L"] := "{U+013B}"  ; (Ļ) L with cedilla
cmpCedillaOgonek.item["n"] := "{U+0146}"  ; (ņ) n with cedilla
cmpCedillaOgonek.item["N"] := "{U+0145}"  ; (Ņ) N with cedilla
cmpCedillaOgonek.item["o"] := "{U+01EB}"  ; (ǫ) o with ogonek
cmpCedillaOgonek.item["O"] := "{U+01EA}"  ; (Ǫ) O with ogonek
cmpCedillaOgonek.item["r"] := "{U+0157}"  ; (ŗ) r with cedilla
cmpCedillaOgonek.item["R"] := "{U+0156}"  ; (Ŗ) R with cedilla
cmpCedillaOgonek.item["s"] := "{U+015F}"  ; (ş) s with cedilla
cmpCedillaOgonek.item["S"] := "{U+015E}"  ; (Ş) S with cedilla
cmpCedillaOgonek.item["t"] := "{U+0163}"  ; (ţ) t with cedilla
cmpCedillaOgonek.item["T"] := "{U+0162}"  ; (Ţ) T with cedilla
cmpCedillaOgonek.item["u"] := "{U+0173}"  ; (ų) u with ogonek
cmpCedillaOgonek.item["U"] := "{U+0172}"  ; (Ų) U with ogonek


; Compose :  Caron (v)

cmpCaron := ComObjCreate("Scripting.Dictionary")
cmpCaron.item["a"] := "{U+01CE}"  ; (ǎ) a with caron
cmpCaron.item["A"] := "{U+01CD}"  ; (Ǎ) A with caron
cmpCaron.item["c"] := "{U+010D}"  ; (č) c with caron
cmpCaron.item["C"] := "{U+010C}"  ; (Č) C with caron
cmpCaron.item["d"] := "{U+010F}"  ; (ď) d with caron
cmpCaron.item["D"] := "{U+010E}"  ; (Ď) D with caron
cmpCaron.item["e"] := "{U+011B}"  ; (ě) e with caron
cmpCaron.item["E"] := "{U+011A}"  ; (Ě) E with caron
cmpCaron.item["g"] := "{U+01E7}"  ; (ǧ) g with caron
cmpCaron.item["G"] := "{U+01E6}"  ; (Ǧ) G with caron
cmpCaron.item["h"] := "{U+021F}"  ; (ȟ) h with caron
cmpCaron.item["H"] := "{U+021E}"  ; (Ȟ) H with caron
cmpCaron.item["i"] := "{U+01D0}"  ; (ǐ) i with caron
cmpCaron.item["I"] := "{U+01CF}"  ; (Ǐ) I with caron
cmpCaron.item["j"] := "{U+01F0}"  ; (ǰ) j with caron
cmpCaron.item["k"] := "{U+01E9}"  ; (ǩ) k with caron
cmpCaron.item["K"] := "{U+01E8}"  ; (Ǩ) K with caron
cmpCaron.item["l"] := "{U+013E}"  ; (ľ) l with caron
cmpCaron.item["L"] := "{U+013D}"  ; (Ľ) L with caron
cmpCaron.item["n"] := "{U+0148}"  ; (ň) n with caron
cmpCaron.item["N"] := "{U+0147}"  ; (Ň) N with caron
cmpCaron.item["o"] := "{U+01D2}"  ; (ǒ) o with caron
cmpCaron.item["O"] := "{U+01D1}"  ; (Ǒ) O with caron
cmpCaron.item["r"] := "{U+0159}"  ; (ř) r with caron
cmpCaron.item["R"] := "{U+0158}"  ; (Ř) R with caron
cmpCaron.item["s"] := "{U+0161}"  ; (š) s with caron
cmpCaron.item["S"] := "{U+0160}"  ; (Š) S with caron
cmpCaron.item["t"] := "{U+0165}"  ; (ť) t with caron
cmpCaron.item["T"] := "{U+0164}"  ; (Ť) T with caron
cmpCaron.item["u"] := "{U+01D4}"  ; (ǔ) u with caron
cmpCaron.item["U"] := "{U+01D3}"  ; (Ǔ) U with caron
cmpCaron.item["z"] := "{U+017E}"  ; (ž) z with caron
cmpCaron.item["Z"] := "{U+017D}"  ; (Ž) Z with caron
cmpCaron.item["3"] := "{U+01EF}"  ; (ǯ) small letter ezh with caron
cmpCaron.item["#"] := "{U+01EE}"  ; (Ǯ) capital letter ezh with caron


; Compose :  Dot Above (.)

cmpDotAbove := ComObjCreate("Scripting.Dictionary")
cmpDotAbove.item["a"] := "{U+0227}"  ; (ȧ) a with dot above
cmpDotAbove.item["A"] := "{U+0226}"  ; (Ȧ) A with dot above
cmpDotAbove.item["b"] := "{U+1E03}"  ; (ḃ) b with dot above
cmpDotAbove.item["B"] := "{U+1E02}"  ; (Ḃ) B with dot above
cmpDotAbove.item["c"] := "{U+010B}"  ; (ċ) c with dot above
cmpDotAbove.item["C"] := "{U+010A}"  ; (Ċ) C with dot above
cmpDotAbove.item["d"] := "{U+1E0B}"  ; (ḋ) d with dot above
cmpDotAbove.item["D"] := "{U+1E0A}"  ; (Ḋ) D with dot above
cmpDotAbove.item["e"] := "{U+0117}"  ; (ė) e with dot above
cmpDotAbove.item["E"] := "{U+0116}"  ; (Ė) E with dot above
cmpDotAbove.item["f"] := "{U+1E1F}"  ; (ḟ) f with dot above
cmpDotAbove.item["F"] := "{U+1E1E}"  ; (Ḟ) F with dot above
cmpDotAbove.item["g"] := "{U+0121}"  ; (ġ) g with dot above
cmpDotAbove.item["G"] := "{U+0120}"  ; (Ġ) G with dot above
cmpDotAbove.item["h"] := "{U+1E23}"  ; (ḣ) h with dot above
cmpDotAbove.item["H"] := "{U+1E22}"  ; (Ḣ) H with dot above
cmpDotAbove.item["i"] := "{U+0131}"  ; (ı) dotless i (Turkish, Azerbaijani)
cmpDotAbove.item["I"] := "{U+0130}"  ; (İ) I with dot above (Turkish, Azerbaijani)
cmpDotAbove.item["j"] := "{U+0237}"  ; (ȷ) dotless j
cmpDotAbove.item["l"] := "{U+0140}"  ; (ŀ) l with middle dot
cmpDotAbove.item["L"] := "{U+013F}"  ; (Ŀ) L with middle dot
cmpDotAbove.item["m"] := "{U+1E41}"  ; (ṁ) m with dot above
cmpDotAbove.item["M"] := "{U+1E40}"  ; (Ṁ) M with dot above
cmpDotAbove.item["n"] := "{U+1E45}"  ; (ṅ) n with dot above
cmpDotAbove.item["N"] := "{U+1E44}"  ; (Ṅ) N with dot above
cmpDotAbove.item["o"] := "{U+022F}"  ; (ȯ) o with dot above
cmpDotAbove.item["O"] := "{U+022E}"  ; (Ȯ) O with dot above
cmpDotAbove.item["p"] := "{U+1E57}"  ; (ṗ) p with dot above
cmpDotAbove.item["P"] := "{U+1E56}"  ; (Ṗ) P with dot above
cmpDotAbove.item["q"] := "{U+1E9B}"  ; (ẛ) long s with dot above
cmpDotAbove.item["r"] := "{U+1E59}"  ; (ṙ) r with dot above
cmpDotAbove.item["R"] := "{U+1E58}"  ; (Ṙ) R with dot above
cmpDotAbove.item["s"] := "{U+1E61}"  ; (ṡ) s with dot above
cmpDotAbove.item["S"] := "{U+1E60}"  ; (Ṡ) S with dot above
cmpDotAbove.item["t"] := "{U+1E6B}"  ; (ṫ) t with dot above
cmpDotAbove.item["T"] := "{U+1E6A}"  ; (Ṫ) T with dot above
cmpDotAbove.item["u"] := "{U+016F}"  ; (ů) u with ring above
cmpDotAbove.item["U"] := "{U+016E}"  ; (Ů) U with ring above
cmpDotAbove.item["w"] := "{U+1E87}"  ; (ẇ) w with dot above
cmpDotAbove.item["W"] := "{U+1E86}"  ; (Ẇ) W with dot above
cmpDotAbove.item["x"] := "{U+1E8B}"  ; (ẋ) x with dot above
cmpDotAbove.item["X"] := "{U+1E8A}"  ; (Ẋ) X with dot above
cmpDotAbove.item["y"] := "{U+1E8F}"  ; (ẏ) y with dot above
cmpDotAbove.item["Y"] := "{U+1E8E}"  ; (Ẏ) Y with dot above
cmpDotAbove.item["z"] := "{U+017C}"  ; (ż) z with dot above
cmpDotAbove.item["Z"] := "{U+017B}"  ; (Ż) Z with dot above


; Compose :  Ring Above (o)

cmpRingAbove := ComObjCreate("Scripting.Dictionary")
cmpRingAbove.item["a"] := "{U+00E5}"  ; (å) a with ring above
cmpRingAbove.item["A"] := "{U+00C5}"  ; (Å) A with ring above
cmpRingAbove.item["u"] := "{U+016F}"  ; (ů) u with ring above
cmpRingAbove.item["U"] := "{U+016E}"  ; (Ů) U with ring above
cmpRingAbove.item["w"] := "{U+1E98}"  ; (ẘ) w with ring above
cmpRingAbove.item["y"] := "{U+1E99}"  ; (ẙ) y with ring above


; Compose :  Macron and Stroke (-)

cmpMacronStroke := ComObjCreate("Scripting.Dictionary")
cmpMacronStroke.item["a"] := "{U+0101}"  ; (ā) a with macron
cmpMacronStroke.item["A"] := "{U+0100}"  ; (Ā) A with macron
cmpMacronStroke.item["b"] := "{U+0180}"  ; (ƀ) b with stroke
cmpMacronStroke.item["B"] := "{U+0243}"  ; (Ƀ) B with stroke
cmpMacronStroke.item["d"] := "{U+0111}"  ; (đ) d with stroke
cmpMacronStroke.item["D"] := "{U+0110}"  ; (Đ) D with stroke
cmpMacronStroke.item["e"] := "{U+0113}"  ; (ē) e with macron
cmpMacronStroke.item["E"] := "{U+0112}"  ; (Ē) E with macron
cmpMacronStroke.item["g"] := "{U+01E5}"  ; (ǥ) g with stroke (Skolt Sami)
cmpMacronStroke.item["G"] := "{U+01E4}"  ; (Ǥ) G with stroke (Skolt Sami)
cmpMacronStroke.item["h"] := "{U+0127}"  ; (ħ) h with stroke (Maltese)
cmpMacronStroke.item["H"] := "{U+0126}"  ; (Ħ) H with stroke (Maltese)
cmpMacronStroke.item["i"] := "{U+012B}"  ; (ī) i with macron
cmpMacronStroke.item["I"] := "{U+012A}"  ; (Ī) I with macron
cmpMacronStroke.item["j"] := "{U+0249}"  ; (ɉ) j with stroke
cmpMacronStroke.item["J"] := "{U+0248}"  ; (Ɉ) J with stroke
cmpMacronStroke.item["l"] := "{U+0142}"  ; (ł) l with stroke
cmpMacronStroke.item["L"] := "{U+0141}"  ; (Ł) L with stroke
cmpMacronStroke.item["o"] := "{U+014D}"  ; (ō) o with macron
cmpMacronStroke.item["O"] := "{U+014C}"  ; (Ō) O with macron
cmpMacronStroke.item["p"] := "{U+1D7D}"  ; (ᵽ) p with stroke
cmpMacronStroke.item["P"] := "{U+2C63}"  ; (Ᵽ) P with stroke
cmpMacronStroke.item["q"] := "{U+01ED}"  ; (ǭ) o with ogonek and macron
cmpMacronStroke.item["Q"] := "{U+01EC}"  ; (Ǭ) O with ogonek and macron
cmpMacronStroke.item["r"] := "{U+024D}"  ; (ɍ) r with stroke
cmpMacronStroke.item["R"] := "{U+024C}"  ; (Ɍ) R with stroke
cmpMacronStroke.item["t"] := "{U+0167}"  ; (ŧ) t with stroke
cmpMacronStroke.item["T"] := "{U+0166}"  ; (Ŧ) T with stroke
cmpMacronStroke.item["u"] := "{U+016B}"  ; (ū) u with macron
cmpMacronStroke.item["U"] := "{U+016A}"  ; (Ū) U with macron
cmpMacronStroke.item["y"] := "{U+0233}"  ; (ȳ) y with macron
cmpMacronStroke.item["Y"] := "{U+0232}"  ; (Ȳ) Y with macron
cmpMacronStroke.item["z"] := "{U+01B6}"  ; (ƶ) z with stroke
cmpMacronStroke.item["Z"] := "{U+01B5}"  ; (Ƶ) Z with stroke


; Compose :  Macron and Stroke (additional) (_)

cmpMacronStrokeAdd := ComObjCreate("Scripting.Dictionary")
cmpMacronStrokeAdd.item["f"] := "{U+1E9D}"  ; (ẝ) long s with high stroke
cmpMacronStrokeAdd.item["g"] := "{U+1E21}"  ; (ḡ) g with macron
cmpMacronStrokeAdd.item["G"] := "{U+1E20}"  ; (Ḡ) G with macron
cmpMacronStrokeAdd.item["i"] := "{U+0268}"  ; (ɨ) i with stroke
cmpMacronStrokeAdd.item["I"] := "{U+0197}"  ; (Ɨ) I with stroke
cmpMacronStrokeAdd.item["l"] := "{U+019A}"  ; (ƚ) l with bar
cmpMacronStrokeAdd.item["L"] := "{U+023D}"  ; (Ƚ) L with bar
cmpMacronStrokeAdd.item["o"] := "{U+0275}"  ; (ɵ) barred o
cmpMacronStrokeAdd.item["O"] := "{U+019F}"  ; (Ɵ) O with middle tilde
cmpMacronStrokeAdd.item["q"] := "{U+01E3}"  ; (ǣ) ae with macron
cmpMacronStrokeAdd.item["Q"] := "{U+01E2}"  ; (Ǣ) AE with macron
cmpMacronStrokeAdd.item["u"] := "{U+0289}"  ; (ʉ) u with bar
cmpMacronStrokeAdd.item["U"] := "{U+0244}"  ; (Ʉ) U with bar
cmpMacronStrokeAdd.item["y"] := "{U+024F}"  ; (ɏ) y with stroke
cmpMacronStrokeAdd.item["Y"] := "{U+024E}"  ; (Ɏ) Y with stroke


; Compose :  Oblique/Diagonal Stroke (/)

cmpStroke := ComObjCreate("Scripting.Dictionary")
cmpStroke.item["a"] := "{U+2C65}"  ; (ⱥ) a with stroke
cmpStroke.item["A"] := "{U+023A}"  ; (Ⱥ) A with stroke
cmpStroke.item["c"] := "{U+023C}"  ; (ȼ) c with stroke
cmpStroke.item["C"] := "{U+023B}"  ; (Ȼ) C with stroke
cmpStroke.item["e"] := "{U+0247}"  ; (ɇ) e with stroke
cmpStroke.item["E"] := "{U+0246}"  ; (Ɇ) E with stroke
cmpStroke.item["f"] := "{U+1E9C}"  ; (ẜ) long s with diagonal stroke
cmpStroke.item["g"] := "{U+A7A1}"  ; (ꞡ) g with oblique stroke
cmpStroke.item["G"] := "{U+A7A0}"  ; (Ꞡ) G with oblique stroke
cmpStroke.item["k"] := "{U+A7A3}"  ; (ꞣ) k with oblique stroke
cmpStroke.item["K"] := "{U+A7A2}"  ; (Ꞣ) K with oblique stroke
cmpStroke.item["l"] := "{U+0142}"  ; (ł) l with stroke
cmpStroke.item["L"] := "{U+0141}"  ; (Ł) L with stroke
cmpStroke.item["n"] := "{U+A7A5}"  ; (ꞥ) n with oblique stroke
cmpStroke.item["N"] := "{U+A7A4}"  ; (Ꞥ) N with oblique stroke
cmpStroke.item["o"] := "{U+00F8}"  ; (ø) o with stroke
cmpStroke.item["O"] := "{U+00D8}"  ; (Ø) O with stroke
cmpStroke.item["r"] := "{U+A7A7}"  ; (ꞧ) r with oblique stroke
cmpStroke.item["R"] := "{U+A7A6}"  ; (Ꞧ) R with oblique stroke
cmpStroke.item["s"] := "{U+A7A9}"  ; (ꞩ) s with oblique stroke
cmpStroke.item["S"] := "{U+A7A8}"  ; (Ꞩ) S with oblique stroke
cmpStroke.item["t"] := "{U+2C66}"  ; (ⱦ) t with stroke
cmpStroke.item["T"] := "{U+023E}"  ; (Ⱦ) T with stroke


; Compose :  Breve and Special Letters (b)

cmpBreveSpecial := ComObjCreate("Scripting.Dictionary")
cmpBreveSpecial.item["a"] := "{U+0103}"  ; (ă) a with breve
cmpBreveSpecial.item["A"] := "{U+0102}"  ; (Ă) A with breve
cmpBreveSpecial.item["d"] := "{U+0256}"  ; (ɖ) small letter d with tail
cmpBreveSpecial.item["D"] := "{U+0189}"  ; (Ɖ) capital letter African D
cmpBreveSpecial.item["e"] := "{U+0115}"  ; (ĕ) e with breve
cmpBreveSpecial.item["E"] := "{U+0114}"  ; (Ĕ) E with breve
cmpBreveSpecial.item["f"] := "{U+0259}"  ; (ə) small letter schwa (Azerbaijani)
cmpBreveSpecial.item["F"] := "{U+018F}"  ; (Ə) capital letter schwa (Azerbaijani)
cmpBreveSpecial.item["g"] := "{U+011F}"  ; (ğ) g with breve
cmpBreveSpecial.item["G"] := "{U+011E}"  ; (Ğ) G with breve
cmpBreveSpecial.item["i"] := "{U+012D}"  ; (ĭ) i with breve
cmpBreveSpecial.item["I"] := "{U+012C}"  ; (Ĭ) I with breve
cmpBreveSpecial.item["o"] := "{U+014F}"  ; (ŏ) o with breve
cmpBreveSpecial.item["O"] := "{U+014E}"  ; (Ŏ) O with breve
cmpBreveSpecial.item["s"] := "{U+0219}"  ; (ș) s with comma below (Romanian)
cmpBreveSpecial.item["S"] := "{U+0218}"  ; (Ș) S with comma below (Romanian)
cmpBreveSpecial.item["t"] := "{U+021B}"  ; (ț) t with comma below (Romanian)
cmpBreveSpecial.item["T"] := "{U+021A}"  ; (Ț) T with comma below (Romanian)
cmpBreveSpecial.item["u"] := "{U+016D}"  ; (ŭ) u with breve
cmpBreveSpecial.item["U"] := "{U+016C}"  ; (Ŭ) U with breve
cmpBreveSpecial.item["w"] := "{U+01BF}"  ; (ƿ) small letter wynn
cmpBreveSpecial.item["W"] := "{U+01F7}"  ; (Ƿ) capital letter wynn
cmpBreveSpecial.item["y"] := "{U+021D}"  ; (ȝ) small letter yogh
cmpBreveSpecial.item["Y"] := "{U+021C}"  ; (Ȝ) capital letter yogh
cmpBreveSpecial.item["3"] := "{U+0292}"  ; (ʒ) small letter ezh
cmpBreveSpecial.item["#"] := "{U+01B7}"  ; (Ʒ) capital letter ezh


; Compose :  Double Acute Accent (=)

cmpDoubleAcute := ComObjCreate("Scripting.Dictionary")
cmpDoubleAcute.item["o"] := "{U+0151}"  ; (ő) o with double acute
cmpDoubleAcute.item["O"] := "{U+0150}"  ; (Ő) O with double acute
cmpDoubleAcute.item["u"] := "{U+0171}"  ; (ű) u with double acute
cmpDoubleAcute.item["U"] := "{U+0170}"  ; (Ű) U with double acute


; Compose :  Hook and Horn (h)

cmpSmallH := ComObjCreate("Scripting.Dictionary")
cmpSmallH.item["b"] := "{U+0253}"  ; (ɓ) b with hook
cmpSmallH.item["B"] := "{U+0181}"  ; (Ɓ) B with hook
cmpSmallH.item["c"] := "{U+0188}"  ; (ƈ) c with hook
cmpSmallH.item["C"] := "{U+0187}"  ; (Ƈ) C with hook
cmpSmallH.item["d"] := "{U+0257}"  ; (ɗ) d with hook
cmpSmallH.item["D"] := "{U+018A}"  ; (Ɗ) D with hook
cmpSmallH.item["e"] := "{U+025A}"  ; (ɚ) small letter schwa with hook
cmpSmallH.item["f"] := "{U+0192}"  ; (ƒ) f with hook
cmpSmallH.item["F"] := "{U+0191}"  ; (Ƒ) F with hook
cmpSmallH.item["g"] := "{U+0260}"  ; (ɠ) g with hook
cmpSmallH.item["G"] := "{U+0193}"  ; (Ɠ) G with hook
cmpSmallH.item["h"] := "{U+0266}"  ; (ɦ) h with hook
cmpSmallH.item["H"] := "{U+A7AA}"  ; (Ɦ) H with hook
cmpSmallH.item["j"] := "{U+0267}"  ; (ɧ) small letter heng with hook
cmpSmallH.item["k"] := "{U+0199}"  ; (ƙ) k with hook
cmpSmallH.item["K"] := "{U+0198}"  ; (Ƙ) K with hook
cmpSmallH.item["l"] := "{U+026C}"  ; (ɬ) l with belt
cmpSmallH.item["L"] := "{U+A7AD}"  ; (Ɬ) L with belt
cmpSmallH.item["m"] := "{U+0271}"  ; (ɱ) m with hook
cmpSmallH.item["M"] := "{U+2C6E}"  ; (Ɱ) M with hook
cmpSmallH.item["n"] := "{U+0272}"  ; (ɲ) n with left hook
cmpSmallH.item["N"] := "{U+019D}"  ; (Ɲ) N with left hook
cmpSmallH.item["o"] := "{U+01A1}"  ; (ơ) o with horn
cmpSmallH.item["O"] := "{U+01A0}"  ; (Ơ) O with horn
cmpSmallH.item["p"] := "{U+01A5}"  ; (ƥ) p with hook
cmpSmallH.item["P"] := "{U+01A4}"  ; (Ƥ) P with hook
cmpSmallH.item["q"] := "{U+024B}"  ; (ɋ) q with hook tail
cmpSmallH.item["Q"] := "{U+024A}"  ; (Ɋ) Q with hook tail
cmpSmallH.item["r"] := "{U+027D}"  ; (ɽ) r with tail
cmpSmallH.item["R"] := "{U+2C64}"  ; (Ɽ) R with tail
cmpSmallH.item["s"] := "{U+0282}"  ; (ʂ) s with hook
cmpSmallH.item["t"] := "{U+01AD}"  ; (ƭ) t with hook
cmpSmallH.item["T"] := "{U+01AC}"  ; (Ƭ) T with hook
cmpSmallH.item["u"] := "{U+01B0}"  ; (ư) u with horn
cmpSmallH.item["U"] := "{U+01AF}"  ; (Ư) U with horn
cmpSmallH.item["v"] := "{U+028B}"  ; (ʋ) v with hook
cmpSmallH.item["V"] := "{U+01B2}"  ; (Ʋ) V with hook
cmpSmallH.item["w"] := "{U+2C73}"  ; (ⱳ) w with hook
cmpSmallH.item["W"] := "{U+2C72}"  ; (Ⱳ) W with hook
cmpSmallH.item["y"] := "{U+01B4}"  ; (ƴ) y with hook
cmpSmallH.item["Y"] := "{U+01B3}"  ; (Ƴ) Y with hook
cmpSmallH.item["z"] := "{U+0225}"  ; (ȥ) z with hook
cmpSmallH.item["Z"] := "{U+0224}"  ; (Ȥ) Z with hook


; Compose :  Retroflex Hook, Right Hook, Crossed-Tail and Variations (f)

cmpSmallF := ComObjCreate("Scripting.Dictionary")
cmpSmallF.item["d"] := "{U+1D91}"  ; (ᶑ) d with hook and tail
cmpSmallF.item["e"] := "{U+025D}"  ; (ɝ) small letter reversed open e with hook
cmpSmallF.item["f"] := "{U+1D94}"  ; (ᶔ) small letter reversed open e with retroflex hook
cmpSmallF.item["g"] := "{U+AB36}"  ; (ꬶ) small letter script g with crossed-tail
cmpSmallF.item["h"] := "{U+A727}"  ; (ꜧ) small letter heng
cmpSmallF.item["H"] := "{U+A726}"  ; (Ꜧ) capital letter heng
cmpSmallF.item["j"] := "{U+029D}"  ; (ʝ) j with crossed-tail
cmpSmallF.item["J"] := "{U+A7B2}"  ; (Ʝ) J with crossed-tail
cmpSmallF.item["l"] := "{U+026D}"  ; (ɭ) l with retroflex hook
cmpSmallF.item["n"] := "{U+0273}"  ; (ɳ) n with retroflex hook
cmpSmallF.item["q"] := "{U+02A0}"  ; (ʠ) q with hook
cmpSmallF.item["r"] := "{U+027E}"  ; (ɾ) r with fishhook
cmpSmallF.item["t"] := "{U+0288}"  ; (ʈ) t with retroflex hook
cmpSmallF.item["T"] := "{U+01AE}"  ; (Ʈ) T with retroflex hook
cmpSmallF.item["v"] := "{U+2C71}"  ; (ⱱ) v with right hook
cmpSmallF.item["z"] := "{U+0290}"  ; (ʐ) z with retroflex hook


; Compose :  Latin Greek Letters and Variations (l)

cmpSmallL := ComObjCreate("Scripting.Dictionary")
cmpSmallL.item["a"] := "{U+0251}"  ; (ɑ) Latin small letter alpha
cmpSmallL.item["A"] := "{U+2C6D}"  ; (Ɑ) Latin capital letter alpha
cmpSmallL.item["b"] := "{U+025E}"  ; (ɞ) small letter closed reversed open e
cmpSmallL.item["d"] := "{U+1E9F}"  ; (ẟ) Latin small letter delta
cmpSmallL.item["e"] := "{U+025B}"  ; (ɛ) small letter open e (Latin small epsilon)
cmpSmallL.item["E"] := "{U+0190}"  ; (Ɛ) capital letter open E (Latin capital epsilon)
cmpSmallL.item["f"] := "{U+0278}"  ; (ɸ) Latin small letter phi
cmpSmallL.item["g"] := "{U+0261}"  ; (ɡ) small letter script g
cmpSmallL.item["G"] := "{U+A7AC}"  ; (Ɡ) capital letter script G
cmpSmallL.item["h"] := "{U+01A3}"  ; (ƣ) small letter gha
cmpSmallL.item["H"] := "{U+01A2}"  ; (Ƣ) capital letter gha
cmpSmallL.item["i"] := "{U+0269}"  ; (ɩ) Latin small letter iota
cmpSmallL.item["I"] := "{U+0196}"  ; (Ɩ) Latin capital letter iota
cmpSmallL.item["j"] := "{U+0263}"  ; (ɣ) Latin small letter gamma
cmpSmallL.item["J"] := "{U+0194}"  ; (Ɣ) Latin capital letter gamma
cmpSmallL.item["k"] := "{U+0138}"  ; (ĸ) small letter kra
cmpSmallL.item["l"] := "{U+019B}"  ; (ƛ) Latin small letter lambda with stroke (barred lambda)
cmpSmallL.item["m"] := "{U+0270}"  ; (ɰ) small letter turned m with long leg
cmpSmallL.item["n"] := "{U+019E}"  ; (ƞ) small letter n with long right leg
cmpSmallL.item["N"] := "{U+0220}"  ; (Ƞ) capital letter N with long right leg
cmpSmallL.item["o"] := "{U+0254}"  ; (ɔ) small letter open o
cmpSmallL.item["O"] := "{U+0186}"  ; (Ɔ) capital letter open O
cmpSmallL.item["q"] := "{U+0277}"  ; (ɷ) Latin small letter closed omega
cmpSmallL.item["s"] := "{U+0283}"  ; (ʃ) Latin small letter esh
cmpSmallL.item["S"] := "{U+01A9}"  ; (Ʃ) Latin capital letter esh
cmpSmallL.item["u"] := "{U+028A}"  ; (ʊ) Latin small letter upsilon
cmpSmallL.item["U"] := "{U+01B1}"  ; (Ʊ) Latin capital letter upsilon
cmpSmallL.item["8"] := "{U+0223}"  ; (ȣ) small letter ou
cmpSmallL.item["*"] := "{U+0222}"  ; (Ȣ) capital letter OU
cmpSmallL.item["7"] := "{U+0242}"  ; (ɂ) small letter glottal stop
cmpSmallL.item["&"] := "{U+0241}"  ; (Ɂ) capital letter glottal stop
cmpSmallL.item["?"] := "{U+0294}"  ; (ʔ) unicase letter glottal stop


; Compose :  Turned and Reversed Letters (r)

cmpSmallR := ComObjCreate("Scripting.Dictionary")
cmpSmallR.item["a"] := "{U+0250}"  ; (ɐ) small letter turned a
cmpSmallR.item["A"] := "{U+2C6F}"  ; (Ɐ) capital letter turned A
cmpSmallR.item["b"] := "{U+025C}"  ; (ɜ) small letter reversed open e
cmpSmallR.item["B"] := "{U+A7AB}"  ; (Ɜ) capital letter reversed open E
cmpSmallR.item["d"] := "{U+018D}"  ; (ƍ) Latin small letter turned delta
cmpSmallR.item["e"] := "{U+01DD}"  ; (ǝ) small letter turned e
cmpSmallR.item["E"] := "{U+018E}"  ; (Ǝ) capital letter reversed E
cmpSmallR.item["f"] := "{U+0258}"  ; (ɘ) small letter reversed e
cmpSmallR.item["g"] := "{U+1D77}"  ; (ᵷ) small letter turned g
cmpSmallR.item["G"] := "{U+2141}"  ; (⅁) capital letter turned G
cmpSmallR.item["h"] := "{U+0265}"  ; (ɥ) small letter turned h
cmpSmallR.item["H"] := "{U+A78D}"  ; (Ɥ) capital letter turned H
cmpSmallR.item["i"] := "{U+1D09}"  ; (ᴉ) small letter turned i
cmpSmallR.item["k"] := "{U+029E}"  ; (ʞ) small letter turned k
cmpSmallR.item["K"] := "{U+A7B0}"  ; (Ʞ) capital letter turned K
cmpSmallR.item["m"] := "{U+026F}"  ; (ɯ) small letter turned m
cmpSmallR.item["M"] := "{U+019C}"  ; (Ɯ) capital letter turned M
cmpSmallR.item["o"] := "{U+0264}"  ; (ɤ) small letter ram's horn (baby gamma)
cmpSmallR.item["q"] := "{U+0252}"  ; (ɒ) Latin small letter turned alpha
cmpSmallR.item["Q"] := "{U+2C70}"  ; (Ɒ) Latin capital letter turned alpha
cmpSmallR.item["r"] := "{U+0279}"  ; (ɹ) small letter turned r
cmpSmallR.item["s"] := "{U+023F}"  ; (ȿ) small letter s with swash tail
cmpSmallR.item["S"] := "{U+2C7E}"  ; (Ȿ) capital letter S with swash tail
cmpSmallR.item["t"] := "{U+0287}"  ; (ʇ) small letter turned t
cmpSmallR.item["T"] := "{U+A7B1}"  ; (Ʇ) small letter turned T
cmpSmallR.item["v"] := "{U+028C}"  ; (ʌ) small letter turned v
cmpSmallR.item["V"] := "{U+0245}"  ; (Ʌ) capital letter turned V
cmpSmallR.item["w"] := "{U+028D}"  ; (ʍ) small letter turned w
cmpSmallR.item["y"] := "{U+028E}"  ; (ʎ) small letter turned y
cmpSmallR.item["z"] := "{U+0240}"  ; (ɀ) small letter z with swash tail
cmpSmallR.item["Z"] := "{U+2C7F}"  ; (Ɀ) capital letter Z with swash tail
cmpSmallR.item["5"] := "{U+01B9}"  ; (ƹ) Latin small letter ezh reversed
cmpSmallR.item["%"] := "{U+01B8}"  ; (Ƹ) Latin capital letter ezh reversed


; Compose :  Currency Symbols ($)

cmpCurrency := ComObjCreate("Scripting.Dictionary")
cmpCurrency.item["a"] := "{U+058F}"  ; (֏) Armenian dram
cmpCurrency.item["A"] := "{U+20B3}"  ; (₳) Argentine austral
cmpCurrency.item["b"] := "{U+20BF}"  ; (₿) bitcoin
cmpCurrency.item["B"] := "{U+0E3F}"  ; (฿) Thai baht
cmpCurrency.item["c"] := "{U+20A1}"  ; (₡) Costa Rican colón
cmpCurrency.item["C"] := "{U+20B5}"  ; (₵) Ghanaian cedi
cmpCurrency.item["d"] := "{U+20AB}"  ; (₫) Vietnamese dong
cmpCurrency.item["D"] := "{U+20AF}"  ; (₯) Greek drachma
cmpCurrency.item["e"] := "{U+20AC}"  ; (€) euro sign
cmpCurrency.item["E"] := "{U+20A0}"  ; (₠) euro-currency sign
cmpCurrency.item["f"] := "{U+20A3}"  ; (₣) French franc
cmpCurrency.item["F"] := "{U+20A3}"  ; (₣) French franc
cmpCurrency.item["g"] := "{U+20B2}"  ; (₲) Paraguayan guaraní
cmpCurrency.item["G"] := "{U+20BE}"  ; (₾) Georgian lari
cmpCurrency.item["h"] := "{U+20B4}"  ; (₴) Ukrainian hryvnia
cmpCurrency.item["H"] := "{U+20B4}"  ; (₴) Ukrainian hryvnia
cmpCurrency.item["i"] := "{U+20A4}"  ; (₤) lira
cmpCurrency.item["I"] := "{U+20B6}"  ; (₶) livre tournois
cmpCurrency.item["k"] := "{U+20AD}"  ; (₭) Laotian kip
cmpCurrency.item["K"] := "{U+20AD}"  ; (₭) Laotian kip
cmpCurrency.item["l"] := "{U+20BA}"  ; (₺) Turkish lira
cmpCurrency.item["L"] := "{U+00A3}"  ; (£) pound sign
cmpCurrency.item["m"] := "{U+20BC}"  ; (₼) Azerbaijani manat
cmpCurrency.item["M"] := "{U+20A5}"  ; (₥) mill sign
cmpCurrency.item["n"] := "{U+20A6}"  ; (₦) Nigerian naira
cmpCurrency.item["N"] := "{U+20BB}"  ; (₻) Nordic mark
cmpCurrency.item["o"] := "{U+00A2}"  ; (¢) cent sign (dollar)
cmpCurrency.item["p"] := "{U+20B1}"  ; (₱) Philippine peso
cmpCurrency.item["P"] := "{U+20A7}"  ; (₧) Spanish pesetas
cmpCurrency.item["r"] := "{U+20B9}"  ; (₹) Indian rupee
cmpCurrency.item["R"] := "{U+20BD}"  ; (₽) Russian ruble
cmpCurrency.item["s"] := "{U+20AA}"  ; (₪) Israeli new shekel
cmpCurrency.item["S"] := "{U+20B7}"  ; (₷) spesmilo
cmpCurrency.item["t"] := "{U+20AE}"  ; (₮) Mongolian tögrög (tugrik)
cmpCurrency.item["T"] := "{U+20B8}"  ; (₸) Kazakh tenge
cmpCurrency.item["u"] := "{U+20A8}"  ; (₨) rupee sign
cmpCurrency.item["U"] := "{U+20A2}"  ; (₢) Brazilian cruzeiro
cmpCurrency.item["w"] := "{U+20A9}"  ; (₩) South Korean won
cmpCurrency.item["W"] := "{U+20A9}"  ; (₩) South Korean won
cmpCurrency.item["x"] := "{U+00A4}"  ; (¤) currency sign
cmpCurrency.item["y"] := "{U+00A5}"  ; (¥) yen sign
cmpCurrency.item["Y"] := "{U+00A5}"  ; (¥) yen sign


; Compose :  Greek Alphabet (g)

cmpGreek := ComObjCreate("Scripting.Dictionary")
cmpGreek.item["a"] := "{U+03B1}"  ; (α) Greek small alpha
cmpGreek.item["A"] := "{U+0391}"  ; (Α) Greek capital alpha
cmpGreek.item["b"] := "{U+03B2}"  ; (β) Greek small beta
cmpGreek.item["B"] := "{U+0392}"  ; (Β) Greek capital beta
cmpGreek.item["v"] := "{U+03B2}"  ; (β) Greek small beta
cmpGreek.item["V"] := "{U+0392}"  ; (Β) Greek capital beta
cmpGreek.item["g"] := "{U+03B3}"  ; (γ) Greek small gamma
cmpGreek.item["G"] := "{U+0393}"  ; (Γ) Greek capital gamma
cmpGreek.item["d"] := "{U+03B4}"  ; (δ) Greek small delta
cmpGreek.item["D"] := "{U+0394}"  ; (Δ) Greek capital delta
cmpGreek.item["e"] := "{U+03B5}"  ; (ε) Greek small epsilon
cmpGreek.item["E"] := "{U+0395}"  ; (Ε) Greek capital epsilon
cmpGreek.item["z"] := "{U+03B6}"  ; (ζ) Greek small zeta
cmpGreek.item["Z"] := "{U+0396}"  ; (Ζ) Greek capital zeta
cmpGreek.item["h"] := "{U+03B7}"  ; (η) Greek small eta
cmpGreek.item["H"] := "{U+0397}"  ; (Η) Greek capital eta
cmpGreek.item["j"] := "{U+03B8}"  ; (θ) Greek small theta
cmpGreek.item["J"] := "{U+0398}"  ; (Θ) Greek capital theta
cmpGreek.item["i"] := "{U+03B9}"  ; (ι) Greek small iota
cmpGreek.item["I"] := "{U+0399}"  ; (Ι) Greek capital iota
cmpGreek.item["k"] := "{U+03BA}"  ; (κ) Greek small kappa
cmpGreek.item["K"] := "{U+039A}"  ; (Κ) Greek capital kappa
cmpGreek.item["l"] := "{U+03BB}"  ; (λ) Greek small lambda
cmpGreek.item["L"] := "{U+039B}"  ; (Λ) Greek capital lambda
cmpGreek.item["m"] := "{U+03BC}"  ; (μ) Greek small mu
cmpGreek.item["M"] := "{U+039C}"  ; (Μ) Greek capital mu
cmpGreek.item["n"] := "{U+03BD}"  ; (ν) Greek small nu
cmpGreek.item["N"] := "{U+039D}"  ; (Ν) Greek capital nu
cmpGreek.item["x"] := "{U+03BE}"  ; (ξ) Greek small xi
cmpGreek.item["X"] := "{U+039E}"  ; (Ξ) Greek capital xi
cmpGreek.item["o"] := "{U+03BF}"  ; (ο) Greek small omicron
cmpGreek.item["O"] := "{U+039F}"  ; (Ο) Greek capital omicron
cmpGreek.item["p"] := "{U+03C0}"  ; (π) Greek small pi
cmpGreek.item["P"] := "{U+03A0}"  ; (Π) Greek capital pi
cmpGreek.item["r"] := "{U+03C1}"  ; (ρ) Greek small rho
cmpGreek.item["R"] := "{U+03A1}"  ; (Ρ) Greek capital rho
cmpGreek.item["s"] := "{U+03C3}"  ; (σ) Greek small sigma
cmpGreek.item[","] := "{U+03C2}"  ; (ς) Greek small final sigma
cmpGreek.item["S"] := "{U+03A3}"  ; (Σ) Greek capital sigma
cmpGreek.item["t"] := "{U+03C4}"  ; (τ) Greek small tau
cmpGreek.item["T"] := "{U+03A4}"  ; (Τ) Greek capital tau
cmpGreek.item["u"] := "{U+03C5}"  ; (υ) Greek small upsilon
cmpGreek.item["U"] := "{U+03A5}"  ; (Υ) Greek capital upsilon
cmpGreek.item["y"] := "{U+03C5}"  ; (υ) Greek small upsilon
cmpGreek.item["Y"] := "{U+03A5}"  ; (Υ) Greek capital upsilon
cmpGreek.item["f"] := "{U+03C6}"  ; (φ) Greek small phi
cmpGreek.item["F"] := "{U+03A6}"  ; (Φ) Greek capital phi
cmpGreek.item["c"] := "{U+03C7}"  ; (χ) Greek small chi
cmpGreek.item["C"] := "{U+03A7}"  ; (Χ) Greek capital chi
cmpGreek.item["w"] := "{U+03C8}"  ; (ψ) Greek small psi
cmpGreek.item["W"] := "{U+03A8}"  ; (Ψ) Greek capital psi
cmpGreek.item["q"] := "{U+03C9}"  ; (ω) Greek small omega
cmpGreek.item["Q"] := "{U+03A9}"  ; (Ω) Greek capital omega


; Compose :  Superscript Characters (p)

cmpSuperscript := ComObjCreate("Scripting.Dictionary")
cmpSuperscript.item["1"] := "{U+00B9}"  ; (¹) superscript 1
cmpSuperscript.item["2"] := "{U+00B2}"  ; (²) superscript 2
cmpSuperscript.item["3"] := "{U+00B3}"  ; (³) superscript 3
cmpSuperscript.item["4"] := "{U+2074}"  ; (⁴) superscript 4
cmpSuperscript.item["5"] := "{U+2075}"  ; (⁵) superscript 5
cmpSuperscript.item["6"] := "{U+2076}"  ; (⁶) superscript 6
cmpSuperscript.item["7"] := "{U+2077}"  ; (⁷) superscript 7
cmpSuperscript.item["8"] := "{U+2078}"  ; (⁸) superscript 8
cmpSuperscript.item["9"] := "{U+2079}"  ; (⁹) superscript 9
cmpSuperscript.item["0"] := "{U+2070}"  ; (⁰) superscript 0
cmpSuperscript.item["i"] := "{U+2071}"  ; (ⁱ) superscript i
cmpSuperscript.item["n"] := "{U+207F}"  ; (ⁿ) superscript n
cmpSuperscript.item["+"] := "{U+207A}"  ; (⁺) superscript +
cmpSuperscript.item["-"] := "{U+207B}"  ; (⁻) superscript -
cmpSuperscript.item["="] := "{U+207C}"  ; (⁼) superscript =
cmpSuperscript.item["("] := "{U+207D}"  ; (⁽) superscript (
cmpSuperscript.item[")"] := "{U+207E}"  ; (⁾) superscript )


; Compose :  Subscript Characters (u)

cmpSubscript := ComObjCreate("Scripting.Dictionary")
cmpSubscript.item["1"] := "{U+2081}"  ; (₁) subscript 1
cmpSubscript.item["2"] := "{U+2082}"  ; (₂) subscript 2
cmpSubscript.item["3"] := "{U+2083}"  ; (₃) subscript 3
cmpSubscript.item["4"] := "{U+2084}"  ; (₄) subscript 4
cmpSubscript.item["5"] := "{U+2085}"  ; (₅) subscript 5
cmpSubscript.item["6"] := "{U+2086}"  ; (₆) subscript 6
cmpSubscript.item["7"] := "{U+2087}"  ; (₇) subscript 7
cmpSubscript.item["8"] := "{U+2088}"  ; (₈) subscript 8
cmpSubscript.item["9"] := "{U+2089}"  ; (₉) subscript 9
cmpSubscript.item["0"] := "{U+2080}"  ; (₀) subscript 0
cmpSubscript.item["a"] := "{U+2090}"  ; (ₐ) subscript a
cmpSubscript.item["b"] := "{U+1D66}"  ; (ᵦ) subscript beta
cmpSubscript.item["c"] := "{U+1D6A}"  ; (ᵪ) subscript chi
cmpSubscript.item["e"] := "{U+2091}"  ; (ₑ) subscript e
cmpSubscript.item["E"] := "{U+2094}"  ; (ₔ) subscript schwa
cmpSubscript.item["f"] := "{U+1D69}"  ; (ᵩ) subscript phi
cmpSubscript.item["g"] := "{U+1D67}"  ; (ᵧ) subscript gamma
cmpSubscript.item["h"] := "{U+2095}"  ; (ₕ) subscript h
cmpSubscript.item["i"] := "{U+1D62}"  ; (ᵢ) subscript i
cmpSubscript.item["j"] := "{U+2C7C}"  ; (ⱼ) subscript j
cmpSubscript.item["k"] := "{U+2096}"  ; (ₖ) subscript k
cmpSubscript.item["l"] := "{U+2097}"  ; (ₗ) subscript l
cmpSubscript.item["m"] := "{U+2098}"  ; (ₘ) subscript m
cmpSubscript.item["n"] := "{U+2099}"  ; (ₙ) subscript n
cmpSubscript.item["o"] := "{U+2092}"  ; (ₒ) subscript o
cmpSubscript.item["p"] := "{U+209A}"  ; (ₚ) subscript p
cmpSubscript.item["r"] := "{U+1D63}"  ; (ᵣ) subscript r
cmpSubscript.item["R"] := "{U+1D68}"  ; (ᵨ) subscript rho
cmpSubscript.item["s"] := "{U+209B}"  ; (ₛ) subscript s
cmpSubscript.item["t"] := "{U+209C}"  ; (ₜ) subscript t
cmpSubscript.item["u"] := "{U+1D64}"  ; (ᵤ) subscript u
cmpSubscript.item["v"] := "{U+1D65}"  ; (ᵥ) subscript v
cmpSubscript.item["x"] := "{U+2093}"  ; (ₓ) subscript x
cmpSubscript.item["+"] := "{U+208A}"  ; (₊) subscript +
cmpSubscript.item["-"] := "{U+208B}"  ; (₋) subscript -
cmpSubscript.item["="] := "{U+208C}"  ; (₌) subscript =
cmpSubscript.item["("] := "{U+208D}"  ; (₍) subscript (
cmpSubscript.item[")"] := "{U+208E}"  ; (₎) subscript )


; Compose :  Spacing Characters and Dashes

cmpSpace := ComObjCreate("Scripting.Dictionary")
cmpQuad := ComObjCreate("Scripting.Dictionary")
cmpSpace.item["1"] := "{U+2004}"  ; three-per-em space
cmpSpace.item["2"] := "{U+2002}"  ; en space
cmpSpace.item["3"] := "{U+2003}"  ; em space
cmpSpace.item["4"] := "{U+2005}"  ; four-per-em space
cmpSpace.item["5"] := "{U+2008}"  ; punctuation space
cmpSpace.item["6"] := "{U+2006}"  ; six-per-em space
cmpSpace.item["7"] := "{U+2009}"  ; thin space
cmpSpace.item["8"] := "{U+200A}"  ; hair space
cmpSpace.item["9"] := "{U+2007}"  ; figure space
cmpSpace.item["0"] := "{U+200B}"  ; zero-width space (ZWSP)
cmpSpace.item["m"] := "{U+205F}"  ; medium mathematical space (MMSP)
cmpSpace.item["n"] := "{U+202F}"  ; narrow no-break space (NNBSP)
cmpSpace.item[" "] := "{U+00A0}"  ; non-breaking space (NBSP)
cmpMacronStroke.item["2"] := "{U+2013}"  ; (–) en dash
cmpMacronStroke.item["3"] := "{U+2014}"  ; (—) em dash
cmpMacronStroke.item["4"] := "{U+2015}"  ; (―) horizontal bar
cmpMacronStroke.item["5"] := "{U+2010}"  ; (‐) hyphen
cmpMacronStroke.item["9"] := "{U+2012}"  ; (‒) figure dash
cmpMacronStroke.item["0"] := "{U+00AD}"  ; (­) soft hyphen (SHY)
cmpMacronStroke.item["-"] := "{U+2011}"  ; (‑) non-breaking hyphen
cmpQuad.item["2"] := "{U+2000}"  ; en quad
cmpQuad.item["3"] := "{U+2001}"  ; em quad


; Compose :  Arrows and Pointing Triangles

cmpArrow := ComObjCreate("Scripting.Dictionary")
cmpArrow.item["w"] := "{U+25B2}"  ; (▲) black up-pointing triangle
cmpArrow.item["a"] := "{U+25C0}"  ; (◀) black left-pointing triangle
cmpArrow.item["s"] := "{U+25BC}"  ; (▼) black down-pointing triangle
cmpArrow.item["d"] := "{U+25B6}"  ; (▶) black right-pointing triangle
cmpArrow.item["i"] := "{U+25B3}"  ; (△) white up-pointing triangle
cmpArrow.item["j"] := "{U+25C1}"  ; (◁) white left-pointing triangle
cmpArrow.item["k"] := "{U+25BD}"  ; (▽) white down-pointing triangle
cmpArrow.item["l"] := "{U+25B7}"  ; (▷) white right-pointing triangle
cmpArrow.item["1"] := "{U+2199}"  ; (↙) south west arrow
cmpArrow.item["2"] := "{U+2193}"  ; (↓) downwards arrow
cmpArrow.item["3"] := "{U+2198}"  ; (↘) south east arrow
cmpArrow.item["4"] := "{U+2190}"  ; (←) leftwards arrow
cmpArrow.item["5"] := "{U+2195}"  ; (↕) up down arrow
cmpArrow.item["6"] := "{U+2192}"  ; (→) rightwards arrow
cmpArrow.item["7"] := "{U+2196}"  ; (↖) north west arrow
cmpArrow.item["8"] := "{U+2191}"  ; (↑) upwards arrow
cmpArrow.item["9"] := "{U+2197}"  ; (↗) north east arrow
cmpArrow.item["0"] := "{U+2194}"  ; (↔) left right arrow
cmpDoubleAcute.item["1"] := "{U+21D9}"  ; (⇙) south west double arrow
cmpDoubleAcute.item["2"] := "{U+21D3}"  ; (⇓) downwards double arrow
cmpDoubleAcute.item["3"] := "{U+21D8}"  ; (⇘) south east double arrow
cmpDoubleAcute.item["4"] := "{U+21D0}"  ; (⇐) leftwards double arrow
cmpDoubleAcute.item["5"] := "{U+21D5}"  ; (⇕) up down double arrow
cmpDoubleAcute.item["6"] := "{U+21D2}"  ; (⇒) rightwards double arrow
cmpDoubleAcute.item["7"] := "{U+21D6}"  ; (⇖) north west double arrow
cmpDoubleAcute.item["8"] := "{U+21D1}"  ; (⇑) upwards double arrow
cmpDoubleAcute.item["9"] := "{U+21D7}"  ; (⇗) north east double arrow
cmpDoubleAcute.item["0"] := "{U+21D4}"  ; (⇔) left right double arrow


; Compose :  Various Symbols (s)

cmpSymbols := ComObjCreate("Scripting.Dictionary")
cmpSymbols.item["a"] := "{U+214D}"  ; (⅍) aktieselskab
cmpSymbols.item["b"] := "{U+203D}"  ; (‽) interrobang
cmpSymbols.item["B"] := "{U+2E18}"  ; (⸘) inverted interrobang
cmpSymbols.item["c"] := "{U+2105}"  ; (℅) care of
cmpSymbols.item["d"] := "{U+22C4}"  ; (⋄) diamond operator
cmpSymbols.item["e"] := "{U+212E}"  ; (℮) estimated symbol
cmpSymbols.item["f"] := "{U+2640}"  ; (♀) female sign (Venus)
cmpSymbols.item["h"] := "{U+2302}"  ; (⌂) house
cmpSymbols.item["H"] := "{U+2126}"  ; (Ω) ohm sign (backwards compatibility)
cmpSymbols.item["i"] := "{U+2300}"  ; (⌀) diameter sign
cmpSymbols.item["l"] := "{U+2113}"  ; (ℓ) script small l
cmpSymbols.item["L"] := "{U+2112}"  ; (ℒ) Laplace transform
cmpSymbols.item["m"] := "{U+2642}"  ; (♂) male sign (Mars)
cmpSymbols.item["M"] := "{U+2120}"  ; (℠) service mark
cmpSymbols.item["p"] := "{U+211E}"  ; (℞) prescription take (Recipere)
cmpSymbols.item["P"] := "{U+211E}"  ; (℞) prescription take (Recipere)
cmpSymbols.item["r"] := "{U+211F}"  ; (℟) response (liturgy)
cmpSymbols.item["R"] := "{U+211F}"  ; (℟) response (liturgy)
cmpSymbols.item["v"] := "{U+2123}"  ; (℣) versicle (liturgy)
cmpSymbols.item["V"] := "{U+2123}"  ; (℣) versicle (liturgy)
cmpSymbols.item["x"] := "{U+203B}"  ; (※) reference mark
cmpSymbols.item["2"] := "{U+266B}"  ; (♫) beamed eighth notes
cmpSymbols.item["3"] := "{U+2042}"  ; (⁂) asterism
cmpSymbols.item["4"] := "{U+203B}"  ; (※) reference mark
cmpSymbols.item["8"] := "{U+266A}"  ; (♪) eighth note
cmpSymbols.item["!"] := "{U+203C}"  ; (‼) double exclamation mark
cmpSymbols.item["?"] := "{U+2E2E}"  ; (⸮) reversed question mark
cmpSymbols.item["/"] := "{U+205E}"  ; (⁞) vertical four dots
cmpSymbols.item["|"] := "{U+00A6}"  ; (¦) broken bar


; Compose :  Math Symbols (m)

cmpMathSymbols := ComObjCreate("Scripting.Dictionary")
cmpMathSymbols.item["a"] := "{U+2200}"  ; (∀) for all
cmpMathSymbols.item["A"] := "{U+2200}"  ; (∀) for all
cmpMathSymbols.item["b"] := "{U+2286}"  ; (⊆) subset of or equal to
cmpMathSymbols.item["B"] := "{U+2287}"  ; (⊇) superset of or equal to
cmpMathSymbols.item["c"] := "{U+221D}"  ; (∝) proportional to
cmpMathSymbols.item["C"] := "{U+2102}"  ; (ℂ) complex numbers
cmpMathSymbols.item["d"] := "{U+2206}"  ; (∆) increment operator
cmpMathSymbols.item["D"] := "{U+2207}"  ; (∇) nabla/del operator
cmpMathSymbols.item["e"] := "{U+2203}"  ; (∃) there exists
cmpMathSymbols.item["E"] := "{U+2204}"  ; (∄) there does not exist
cmpMathSymbols.item["f"] := "{U+0192}"  ; (ƒ) f with hook
cmpMathSymbols.item["F"] := "{U+220E}"  ; (∎) end of proof
cmpMathSymbols.item["g"] := "{U+2282}"  ; (⊂) subset of
cmpMathSymbols.item["G"] := "{U+2284}"  ; (⊄) not a subset of
cmpMathSymbols.item["h"] := "{U+2283}"  ; (⊃) superset of
cmpMathSymbols.item["H"] := "{U+2285}"  ; (⊅) not a superset of
cmpMathSymbols.item["I"] := "{U+2111}"  ; (ℑ) imaginary numbers
cmpMathSymbols.item["j"] := "{U+2245}"  ; (≅) congruent to
cmpMathSymbols.item["J"] := "{U+2247}"  ; (≇) not congruent to
cmpMathSymbols.item["k"] := "{U+220B}"  ; (∋) contains as member
cmpMathSymbols.item["K"] := "{U+220C}"  ; (∌) does not contain as member
cmpMathSymbols.item["l"] := "{U+2225}"  ; (∥) parallel to
cmpMathSymbols.item["L"] := "{U+2226}"  ; (∦) not parallel to
cmpMathSymbols.item["m"] := "{U+2208}"  ; (∈) element of
cmpMathSymbols.item["M"] := "{U+2209}"  ; (∉) not an element of
cmpMathSymbols.item["n"] := "{U+00AC}"  ; (¬) not sign
cmpMathSymbols.item["N"] := "{U+2115}"  ; (ℕ) natural numbers
cmpMathSymbols.item["o"] := "{U+2218}"  ; (∘) ring operator
cmpMathSymbols.item["O"] := "{U+2205}"  ; (∅) empty set
cmpMathSymbols.item["p"] := "{U+2202}"  ; (∂) partial differential
cmpMathSymbols.item["P"] := "{U+2119}"  ; (ℙ) prime numbers
cmpMathSymbols.item["Q"] := "{U+211A}"  ; (ℚ) rational numbers
cmpMathSymbols.item["R"] := "{U+211D}"  ; (ℝ) real numbers
cmpMathSymbols.item["s"] := "{U+2229}"  ; (∩) set intersection
cmpMathSymbols.item["S"] := "{U+222B}"  ; (∫) integral symbol
cmpMathSymbols.item["t"] := "{U+2261}"  ; (≡) identical to
cmpMathSymbols.item["T"] := "{U+2262}"  ; (≢) not identical to
cmpMathSymbols.item["u"] := "{U+222A}"  ; (∪) set union
cmpMathSymbols.item["U"] := "{U+2216}"  ; (∖) set minus
cmpMathSymbols.item["w"] := "{U+2118}"  ; (℘) Weierstrass elliptic function
cmpMathSymbols.item["z"] := "{U+21AF}"  ; (↯) downwards zigzag arrow
cmpMathSymbols.item["Z"] := "{U+2124}"  ; (ℤ) whole numbers
cmpMathSymbols.item["2"] := "{U+2236}"  ; (∶) ratio symbol
cmpMathSymbols.item["4"] := "{U+2237}"  ; (∷) proportion sign
cmpMathSymbols.item["6"] := "{U+2220}"  ; (∠) angle symbol
cmpMathSymbols.item["9"] := "{U+221F}"  ; (∟) right angle
cmpMathSymbols.item["0"] := "{U+2221}"  ; (∡) measured angle
cmpMathSymbols.item[","] := "{U+2219}"  ; (∙) bullet operator
cmpMathSymbols.item["+"] := "{U+2295}"  ; (⊕) circled plus
cmpMathSymbols.item["-"] := "{U+2296}"  ; (⊖) circled minus
cmpMathSymbols.item["*"] := "{U+2297}"  ; (⊗) circled times
cmpMathSymbols.item["/"] := "{U+2298}"  ; (⊘) circled division slash
cmpMathSymbols.item["."] := "{U+2299}"  ; (⊙) circled dot operator
cmpMathSymbols.item["="] := "{U+225D}"  ; (≝) equal to by definition
cmpMathSymbols.item[";"] := "{U+2235}"  ; (∵) because sign
cmpMathSymbols.item[":"] := "{U+2234}"  ; (∴) therefore sign
cmpMathSymbols.item["&"] := "{U+2227}"  ; (∧) logical and
cmpMathSymbols.item["|"] := "{U+2228}"  ; (∨) logical or


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
cmpSmallT := ComObjCreate("Scripting.Dictionary")
cmpCapitalT := ComObjCreate("Scripting.Dictionary")
cmpArrow.item["e"] := "{U+00E6}"      ; (æ) letter ae
cmpCapitalA.item["E"] := "{U+00C6}"   ; (Æ) letter AE
cmpSmallD.item["h"] := "{U+00F0}"     ; (ð) small letter eth
cmpCapitalD.item["H"] := "{U+00D0}"   ; (Ð) capital letter eth
cmpSmallF.item["s"] := "{U+017F}"     ; (ſ) small letter long s
cmpSmallI.item["j"] := "{U+0133}"     ; (ĳ) ligature ij
cmpCapitalI.item["J"] := "{U+0132}"   ; (Ĳ) ligature IJ
cmpSmallN.item["g"] := "{U+014B}"     ; (ŋ) small letter eng(ma)
cmpCapitalN.item["G"] := "{U+014A}"   ; (Ŋ) capital letter eng(ma)
cmpRingAbove.item["e"] := "{U+0153}"  ; (œ) ligature oe
cmpCapitalO.item["E"] := "{U+0152}"   ; (Œ) ligature OE
cmpSymbols.item["s"] := "{U+00DF}"    ; (ß) small sharp s (Eszett)
cmpCapitalS.item["S"] := "{U+1E9E}"   ; (ẞ) capital sharp S (capital Eszett)
cmpSmallT.item["h"] := "{U+00FE}"     ; (þ) small letter thorn
cmpCapitalT.item["H"] := "{U+00DE}"   ; (Þ) capital letter thorn


; Compose :  General/Math Symbols

cmpDigitEight := ComObjCreate("Scripting.Dictionary")
cmpCapitalP := ComObjCreate("Scripting.Dictionary")
cmpVerticalLine := ComObjCreate("Scripting.Dictionary")
cmpAsterisk := ComObjCreate("Scripting.Dictionary")
cmpExclam := ComObjCreate("Scripting.Dictionary")
cmpQuestion := ComObjCreate("Scripting.Dictionary")
cmpParenLeft := ComObjCreate("Scripting.Dictionary")
cmpPlus := ComObjCreate("Scripting.Dictionary")
cmpPercent := ComObjCreate("Scripting.Dictionary")
cmpLessThan := ComObjCreate("Scripting.Dictionary")
cmpGreaterThan := ComObjCreate("Scripting.Dictionary")
cmpSmallD.item["d"] := "{U+2020}"        ; (†) dagger
cmpCapitalD.item["D"] := "{U+2021}"      ; (‡) double dagger
cmpSmallI.item["i"] := "{U+221E}"        ; (∞) infinity symbol
cmpDigitEight.item["8"] := "{U+221E}"    ; (∞) infinity symbol
cmpMathSymbols.item["i"] := "{U+00B5}"   ; (µ) micro sign
cmpSmallN.item["o"] := "{U+2116}"        ; (№) numero sign
cmpCapitalN.item["o"] := "{U+2116}"      ; (№) numero sign
cmpRingAbove.item["x"] := "{U+00A4}"     ; (¤) currency sign
cmpSuperscript.item["p"] := "{U+00B6}"   ; (¶) pilcrow sign
cmpCapitalP.item["P"] := "{U+00B6}"      ; (¶) pilcrow sign
cmpSmallR.item["2"] := "{U+221A}"        ; (√) square root
cmpSmallR.item["3"] := "{U+221B}"        ; (∛) cube root
cmpSmallR.item["4"] := "{U+221C}"        ; (∜) fourth root
cmpSymbols.item["o"] := "{U+00A7}"       ; (§) section sign
cmpCapitalS.item["o"] := "{U+00A7}"      ; (§) section sign
cmpSmallT.item["m"] := "{U+2122}"        ; (™) trademark symbol
cmpVerticalLine.item["|"] := "{U+2016}"  ; (‖) double vertical line
cmpAcuteAccent.item["1"] := "{U+2032}"   ; (′) prime
cmpAcuteAccent.item["2"] := "{U+2033}"   ; (″) double prime
cmpAcuteAccent.item["3"] := "{U+2034}"   ; (‴) triple prime
cmpAcuteAccent.item["4"] := "{U+2057}"   ; (⁗) quadruple prime
cmpAsterisk.item["*"] := "{U+00D7}"      ; (×) multiplication sign
cmpStroke.item["/"] := "{U+00F7}"        ; (÷) division sign
cmpAsterisk.item["o"] := "{U+00B0}"      ; (°) degree sign
cmpRingAbove.item["*"] := "{U+00B0}"     ; (°) degree sign
cmpDotAbove.item["-"] := "{U+00B7}"      ; (·) middle dot
cmpDotAbove.item["3"] := "{U+2026}"      ; (…) horizontal ellipsis
cmpDotAbove.item["."] := "{U+2026}"      ; (…) horizontal ellipsis
cmpArrow.item["-"] := "{U+00AA}"         ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
cmpRingAbove.item["-"] := "{U+00BA}"     ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
cmpExclam.item["!"] := "{U+00A1}"        ; (¡) inverted exclamation mark
cmpQuestion.item["?"] := "{U+00BF}"      ; (¿) inverted question mark
cmpRingAbove.item["c"] := "{U+00A9}"     ; (©) copyright sign
cmpParenLeft.item["c"] := "{U+00A9}"     ; (©) copyright sign
cmpRingAbove.item["p"] := "{U+2117}"     ; (℗) sound recording copyright
cmpParenLeft.item["p"] := "{U+2117}"     ; (℗) sound recording copyright
cmpRingAbove.item["r"] := "{U+00AE}"     ; (®) registered sign
cmpParenLeft.item["r"] := "{U+00AE}"     ; (®) registered sign
cmpPlus.item["-"] := "{U+00B1}"          ; (±) plus-minus sign
cmpMacronStroke.item["+"] := "{U+2213}"  ; (∓) minus-or-plus sign
cmpPercent.item["%"] := "{U+2030}"       ; (‰) per mille sign
cmpPercent.item["3"] := "{U+2030}"       ; (‰) per mille sign
cmpPercent.item["4"] := "{U+2031}"       ; (‱) per ten thousand sign
cmpExclam.item["="] := "{U+2260}"        ; (≠) not equal to
cmpLessThan.item[">"] := "{U+2260}"      ; (≠) not equal to
cmpLessThan.item["="] := "{U+2264}"      ; (≤) less-than or equal to
cmpGreaterThan.item["="] := "{U+2265}"   ; (≥) greater-than or equal to
cmpLessThan.item["+"] := "{U+2A7D}"      ; (⩽) less-than or slanted equal to
cmpGreaterThan.item["+"] := "{U+2A7E}"   ; (⩾) greater-than or slanted equal to
cmpTilde.item["~"] := "{U+2248}"         ; (≈) almost equal to


; Compose :  Bullets and Small Geometric Shapes (;)

cmpSemicolon := ComObjCreate("Scripting.Dictionary")
cmpSemicolon.item["b"] := "{U+2022}"  ; (•) bullet
cmpSemicolon.item["o"] := "{U+25E6}"  ; (◦) white bullet
cmpSemicolon.item["h"] := "{U+2043}"  ; (⁃) hyphen bullet
cmpSemicolon.item["t"] := "{U+2023}"  ; (‣) triangular bullet
cmpSemicolon.item["q"] := "{U+25AA}"  ; (▪) black small square
cmpSemicolon.item["u"] := "{U+25AB}"  ; (▫) white small square
cmpSemicolon.item["w"] := "{U+25B4}"  ; (▴) black up-pointing small triangle
cmpSemicolon.item["a"] := "{U+25C2}"  ; (◂) black left-pointing small triangle
cmpSemicolon.item["s"] := "{U+25BE}"  ; (▾) black down-pointing small triangle
cmpSemicolon.item["d"] := "{U+25B8}"  ; (▸) black right-pointing small triangle
cmpSemicolon.item["i"] := "{U+25B5}"  ; (▵) white up-pointing small triangle
cmpSemicolon.item["j"] := "{U+25C3}"  ; (◃) white left-pointing small triangle
cmpSemicolon.item["k"] := "{U+25BF}"  ; (▿) white down-pointing small triangle
cmpSemicolon.item["l"] := "{U+25B9}"  ; (▹) white right-pointing small triangle
cmpSemicolon.item["z"] := "{U+25A0}"  ; (■) black square
cmpSemicolon.item["x"] := "{U+25A1}"  ; (□) white square
cmpSemicolon.item["c"] := "{U+25C6}"  ; (◆) black diamond
cmpSemicolon.item["v"] := "{U+25C7}"  ; (◇) white diamond
cmpSemicolon.item[";"] := "{U+2022}"  ; (•) bullet


; Compose :  Vulgar Fractions

cmpDigitOne := ComObjCreate("Scripting.Dictionary")
cmpDigitTwo := ComObjCreate("Scripting.Dictionary")
cmpDigitThree := ComObjCreate("Scripting.Dictionary")
cmpDigitFour := ComObjCreate("Scripting.Dictionary")
cmpDigitFive := ComObjCreate("Scripting.Dictionary")
cmpDigitSeven := ComObjCreate("Scripting.Dictionary")
cmpDigitZero := ComObjCreate("Scripting.Dictionary")
cmpDigitOne.item["2"] := "{U+00BD}"    ; (½) vulgar fraction 1/2
cmpDigitOne.item["3"] := "{U+2153}"    ; (⅓) vulgar fraction 1/3
cmpDigitTwo.item["3"] := "{U+2154}"    ; (⅔) vulgar fraction 2/3
cmpDigitOne.item["4"] := "{U+00BC}"    ; (¼) vulgar fraction 1/4
cmpDigitThree.item["4"] := "{U+00BE}"  ; (¾) vulgar fraction 3/4
cmpDigitOne.item["5"] := "{U+2155}"    ; (⅕) vulgar fraction 1/5
cmpDigitTwo.item["5"] := "{U+2156}"    ; (⅖) vulgar fraction 2/5
cmpDigitThree.item["5"] := "{U+2157}"  ; (⅗) vulgar fraction 3/5
cmpDigitFour.item["5"] := "{U+2158}"   ; (⅘) vulgar fraction 4/5
cmpDigitOne.item["6"] := "{U+2159}"    ; (⅙) vulgar fraction 1/6
cmpDigitFive.item["6"] := "{U+215A}"   ; (⅚) vulgar fraction 5/6
cmpDigitOne.item["7"] := "{U+2150}"    ; (⅐) vulgar fraction 1/7
cmpDigitOne.item["8"] := "{U+215B}"    ; (⅛) vulgar fraction 1/8
cmpDigitThree.item["8"] := "{U+215C}"  ; (⅜) vulgar fraction 3/8
cmpDigitFive.item["8"] := "{U+215D}"   ; (⅝) vulgar fraction 5/8
cmpDigitSeven.item["8"] := "{U+215E}"  ; (⅞) vulgar fraction 7/8
cmpDigitOne.item["9"] := "{U+2151}"    ; (⅑) vulgar fraction 1/9
cmpDigitOne.item["0"] := "{U+2152}"    ; (⅒) vulgar fraction 1/10
cmpDigitZero.item["3"] := "{U+2189}"   ; (↉) vulgar fraction 0/3


; Compose :  Quotation Marks

cmpBracketLeft := ComObjCreate("Scripting.Dictionary")
cmpBracketRight := ComObjCreate("Scripting.Dictionary")
cmpBackslash := ComObjCreate("Scripting.Dictionary")
cmpCedillaOgonek.item[chr(34)] := "{U+201E}"  ; („) double low-9 quotation mark
cmpDiaeresis.item[","] := "{U+201E}"          ; („) double low-9 quotation mark
cmpCedillaOgonek.item["'"] := "{U+201A}"      ; (‚) single low-9 quotation mark
cmpAcuteAccent.item[","] := "{U+201A}"        ; (‚) single low-9 quotation mark
cmpCedillaOgonek.item[","] := "{U+201A}"      ; (‚) single low-9 quotation mark
cmpDiaeresis.item["["] := "{U+201C}"          ; (“) left double quotation mark
cmpBracketLeft.item[chr(34)] := "{U+201C}"    ; (“) left double quotation mark
cmpDiaeresis.item["]"] := "{U+201D}"          ; (”) right double quotation mark
cmpBracketRight.item[chr(34)] := "{U+201D}"   ; (”) right double quotation mark
cmpAcuteAccent.item["["] := "{U+2018}"        ; (‘) left single quotation mark
cmpBracketLeft.item["'"] := "{U+2018}"        ; (‘) left single quotation mark
cmpAcuteAccent.item["]"] := "{U+2019}"        ; (’) right single quotation mark
cmpBracketRight.item["'"] := "{U+2019}"       ; (’) right single quotation mark
cmpBackslash.item[chr(34)] := "{U+201F}"      ; (‟) double high-reversed-9 quotation mark
cmpDiaeresis.item["\"] := "{U+201F}"          ; (‟) double high-reversed-9 quotation mark
cmpBackslash.item["'"] := "{U+201B}"          ; (‛) single high-reversed-9 quotation mark
cmpAcuteAccent.item["\"] := "{U+201B}"        ; (‛) single high-reversed-9 quotation mark
cmpLessThan.item["<"] := "{U+00AB}"           ; («) left-pointing double angle quotation mark
cmpLessThan.item[chr(34)] := "{U+00AB}"       ; («) left-pointing double angle quotation mark
cmpDiaeresis.item["<"] := "{U+00AB}"          ; («) left-pointing double angle quotation mark
cmpGreaterThan.item[">"] := "{U+00BB}"        ; (») right-pointing double angle quotation mark
cmpGreaterThan.item[chr(34)] := "{U+00BB}"    ; (») right-pointing double angle quotation mark
cmpDiaeresis.item[">"] := "{U+00BB}"          ; (») right-pointing double angle quotation mark
cmpLessThan.item["'"] := "{U+2039}"           ; (‹) left-pointing single angle quotation mark
cmpAcuteAccent.item["<"] := "{U+2039}"        ; (‹) left-pointing single angle quotation mark
cmpGreaterThan.item["'"] := "{U+203A}"        ; (›) right-pointing single angle quotation mark
cmpAcuteAccent.item[">"] := "{U+203A}"        ; (›) right-pointing single angle quotation mark


; Compose :  Double Grave Accent (G)

cmpCapitalG := ComObjCreate("Scripting.Dictionary")
cmpCapitalG.item["a"] := "{U+0201}"  ; (ȁ) a with double grave
cmpCapitalG.item["A"] := "{U+0200}"  ; (Ȁ) A with double grave
cmpCapitalG.item["e"] := "{U+0205}"  ; (ȅ) e with double grave
cmpCapitalG.item["E"] := "{U+0204}"  ; (Ȅ) E with double grave
cmpCapitalG.item["i"] := "{U+0209}"  ; (ȉ) i with double grave
cmpCapitalG.item["I"] := "{U+0208}"  ; (Ȉ) I with double grave
cmpCapitalG.item["o"] := "{U+020D}"  ; (ȍ) o with double grave
cmpCapitalG.item["O"] := "{U+020C}"  ; (Ȍ) O with double grave
cmpCapitalG.item["r"] := "{U+0211}"  ; (ȑ) r with double grave
cmpCapitalG.item["R"] := "{U+0210}"  ; (Ȑ) R with double grave
cmpCapitalG.item["u"] := "{U+0215}"  ; (ȕ) u with double grave
cmpCapitalG.item["U"] := "{U+0214}"  ; (Ȕ) U with double grave


; Compose :  Inverted Breve (B)

cmpCapitalB := ComObjCreate("Scripting.Dictionary")
cmpCapitalB.item["a"] := "{U+0203}"  ; (ȃ) a with inverted breve
cmpCapitalB.item["A"] := "{U+0202}"  ; (Ȃ) A with inverted breve
cmpCapitalB.item["e"] := "{U+0207}"  ; (ȇ) e with inverted breve
cmpCapitalB.item["E"] := "{U+0206}"  ; (Ȇ) E with inverted breve
cmpCapitalB.item["i"] := "{U+020B}"  ; (ȋ) i with inverted breve
cmpCapitalB.item["I"] := "{U+020A}"  ; (Ȋ) I with inverted breve
cmpCapitalB.item["o"] := "{U+020F}"  ; (ȏ) o with inverted breve
cmpCapitalB.item["O"] := "{U+020E}"  ; (Ȏ) O with inverted breve
cmpCapitalB.item["r"] := "{U+0213}"  ; (ȓ) r with inverted breve
cmpCapitalB.item["R"] := "{U+0212}"  ; (Ȓ) R with inverted breve
cmpCapitalB.item["u"] := "{U+0217}"  ; (ȗ) u with inverted breve
cmpCapitalB.item["U"] := "{U+0216}"  ; (Ȗ) U with inverted breve


; Compose :  Circumflex Below (I)

cmpCapitalI.item["d"] := "{U+1E13}"  ; (ḓ) d with circumflex below
cmpCapitalI.item["D"] := "{U+1E12}"  ; (Ḓ) D with circumflex below
cmpCapitalI.item["e"] := "{U+1E19}"  ; (ḙ) e with circumflex below
cmpCapitalI.item["E"] := "{U+1E18}"  ; (Ḙ) E with circumflex below
cmpCapitalI.item["l"] := "{U+1E3D}"  ; (ḽ) l with circumflex below
cmpCapitalI.item["L"] := "{U+1E3C}"  ; (Ḽ) L with circumflex below
cmpCapitalI.item["n"] := "{U+1E4B}"  ; (ṋ) n with circumflex below
cmpCapitalI.item["N"] := "{U+1E4A}"  ; (Ṋ) N with circumflex below
cmpCapitalI.item["t"] := "{U+1E71}"  ; (ṱ) t with circumflex below
cmpCapitalI.item["T"] := "{U+1E70}"  ; (Ṱ) T with circumflex below
cmpCapitalI.item["u"] := "{U+1E77}"  ; (ṷ) u with circumflex below
cmpCapitalI.item["U"] := "{U+1E76}"  ; (Ṷ) U with circumflex below


; Compose :  Tilde Below (T)

cmpCapitalT.item["e"] := "{U+1E1B}"  ; (ḛ) e with tilde below
cmpCapitalT.item["E"] := "{U+1E1A}"  ; (Ḛ) E with tilde below
cmpCapitalT.item["i"] := "{U+1E2D}"  ; (ḭ) i with tilde below
cmpCapitalT.item["I"] := "{U+1E2C}"  ; (Ḭ) I with tilde below
cmpCapitalT.item["u"] := "{U+1E75}"  ; (ṵ) u with tilde below
cmpCapitalT.item["U"] := "{U+1E74}"  ; (Ṵ) U with tilde below


; Compose :  Line Below (L)

cmpCapitalL := ComObjCreate("Scripting.Dictionary")
cmpCapitalL.item["b"] := "{U+1E07}"  ; (ḇ) b with line below
cmpCapitalL.item["B"] := "{U+1E06}"  ; (Ḇ) B with line below
cmpCapitalL.item["d"] := "{U+1E0F}"  ; (ḏ) d with line below
cmpCapitalL.item["D"] := "{U+1E0E}"  ; (Ḏ) D with line below
cmpCapitalL.item["h"] := "{U+1E96}"  ; (ẖ) h with line below
cmpCapitalL.item["k"] := "{U+1E35}"  ; (ḵ) k with line below
cmpCapitalL.item["K"] := "{U+1E34}"  ; (Ḵ) K with line below
cmpCapitalL.item["l"] := "{U+1E3B}"  ; (ḻ) l with line below
cmpCapitalL.item["L"] := "{U+1E3A}"  ; (Ḻ) L with line below
cmpCapitalL.item["n"] := "{U+1E49}"  ; (ṉ) n with line below
cmpCapitalL.item["N"] := "{U+1E48}"  ; (Ṉ) N with line below
cmpCapitalL.item["r"] := "{U+1E5F}"  ; (ṟ) r with line below
cmpCapitalL.item["R"] := "{U+1E5E}"  ; (Ṟ) R with line below
cmpCapitalL.item["t"] := "{U+1E6F}"  ; (ṯ) t with line below
cmpCapitalL.item["T"] := "{U+1E6E}"  ; (Ṯ) T with line below
cmpCapitalL.item["z"] := "{U+1E95}"  ; (ẕ) z with line below
cmpCapitalL.item["Z"] := "{U+1E94}"  ; (Ẕ) Z with line below


; Compose :  Ring Below, Breve Below and Diaeresis Below (R)

cmpCapitalR := ComObjCreate("Scripting.Dictionary")
cmpCapitalR.item["a"] := "{U+1E01}"  ; (ḁ) a with ring below
cmpCapitalR.item["A"] := "{U+1E00}"  ; (Ḁ) A with ring below
cmpCapitalR.item["h"] := "{U+1E2B}"  ; (ḫ) h with breve below
cmpCapitalR.item["H"] := "{U+1E2A}"  ; (Ḫ) H with breve below
cmpCapitalR.item["u"] := "{U+1E73}"  ; (ṳ) u with diaeresis below
cmpCapitalR.item["U"] := "{U+1E72}"  ; (Ṳ) U with diaeresis below


; Compose :  Hook Above (<)

cmpLessThan.item["a"] := "{U+1EA3}"  ; (ả) a with hook above
cmpLessThan.item["A"] := "{U+1EA2}"  ; (Ả) A with hook above
cmpLessThan.item["e"] := "{U+1EBB}"  ; (ẻ) e with hook above
cmpLessThan.item["E"] := "{U+1EBA}"  ; (Ẻ) E with hook above
cmpLessThan.item["i"] := "{U+1EC9}"  ; (ỉ) i with hook above
cmpLessThan.item["I"] := "{U+1EC8}"  ; (Ỉ) I with hook above
cmpLessThan.item["o"] := "{U+1ECF}"  ; (ỏ) o with hook above
cmpLessThan.item["O"] := "{U+1ECE}"  ; (Ỏ) O with hook above
cmpLessThan.item["u"] := "{U+1EE7}"  ; (ủ) u with hook above
cmpLessThan.item["U"] := "{U+1EE6}"  ; (Ủ) U with hook above
cmpLessThan.item["y"] := "{U+1EF7}"  ; (ỷ) y with hook above
cmpLessThan.item["Y"] := "{U+1EF6}"  ; (Ỷ) Y with hook above


; Compose :  Dot Below (>)

cmpGreaterThan.item["a"] := "{U+1EA1}"  ; (ạ) a with dot below
cmpGreaterThan.item["A"] := "{U+1EA0}"  ; (Ạ) A with dot below
cmpGreaterThan.item["b"] := "{U+1E05}"  ; (ḅ) b with dot below
cmpGreaterThan.item["B"] := "{U+1E04}"  ; (Ḅ) B with dot below
cmpGreaterThan.item["d"] := "{U+1E0D}"  ; (ḍ) d with dot below
cmpGreaterThan.item["D"] := "{U+1E0C}"  ; (Ḍ) D with dot below
cmpGreaterThan.item["e"] := "{U+1EB9}"  ; (ẹ) e with dot below
cmpGreaterThan.item["E"] := "{U+1EB8}"  ; (Ẹ) E with dot below
cmpGreaterThan.item["h"] := "{U+1E25}"  ; (ḥ) h with dot below
cmpGreaterThan.item["H"] := "{U+1E24}"  ; (Ḥ) H with dot below
cmpGreaterThan.item["i"] := "{U+1ECB}"  ; (ị) i with dot below
cmpGreaterThan.item["I"] := "{U+1ECA}"  ; (Ị) I with dot below
cmpGreaterThan.item["k"] := "{U+1E33}"  ; (ḳ) k with dot below
cmpGreaterThan.item["K"] := "{U+1E32}"  ; (Ḳ) K with dot below
cmpGreaterThan.item["l"] := "{U+1E37}"  ; (ḷ) l with dot below
cmpGreaterThan.item["L"] := "{U+1E36}"  ; (Ḷ) L with dot below
cmpGreaterThan.item["m"] := "{U+1E43}"  ; (ṃ) m with dot below
cmpGreaterThan.item["M"] := "{U+1E42}"  ; (Ṃ) M with dot below
cmpGreaterThan.item["n"] := "{U+1E47}"  ; (ṇ) n with dot below
cmpGreaterThan.item["N"] := "{U+1E46}"  ; (Ṇ) N with dot below
cmpGreaterThan.item["o"] := "{U+1ECD}"  ; (ọ) o with dot below
cmpGreaterThan.item["O"] := "{U+1ECC}"  ; (Ọ) O with dot below
cmpGreaterThan.item["r"] := "{U+1E5B}"  ; (ṛ) r with dot below
cmpGreaterThan.item["R"] := "{U+1E5A}"  ; (Ṛ) R with dot below
cmpGreaterThan.item["s"] := "{U+1E63}"  ; (ṣ) s with dot below
cmpGreaterThan.item["S"] := "{U+1E62}"  ; (Ṣ) S with dot below
cmpGreaterThan.item["t"] := "{U+1E6D}"  ; (ṭ) t with dot below
cmpGreaterThan.item["T"] := "{U+1E6C}"  ; (Ṭ) T with dot below
cmpGreaterThan.item["u"] := "{U+1EE5}"  ; (ụ) u with dot below
cmpGreaterThan.item["U"] := "{U+1EE4}"  ; (Ụ) U with dot below
cmpGreaterThan.item["v"] := "{U+1E7F}"  ; (ṿ) v with dot below
cmpGreaterThan.item["V"] := "{U+1E7E}"  ; (Ṿ) V with dot below
cmpGreaterThan.item["w"] := "{U+1E89}"  ; (ẉ) w with dot below
cmpGreaterThan.item["W"] := "{U+1E88}"  ; (Ẉ) W with dot below
cmpGreaterThan.item["y"] := "{U+1EF5}"  ; (ỵ) y with dot below
cmpGreaterThan.item["Y"] := "{U+1EF4}"  ; (Ỵ) Y with dot below
cmpGreaterThan.item["z"] := "{U+1E93}"  ; (ẓ) z with dot below
cmpGreaterThan.item["Z"] := "{U+1E92}"  ; (Ẓ) Z with dot below


; Compose :  Miscellaneous Symbols and Dingbats

cmpDigitSix := ComObjCreate("Scripting.Dictionary")

cmpDigitOne.item["a"] := "{U+2600}"  ; (☀) black sun with rays
cmpDigitOne.item["b"] := "{U+2601}"  ; (☁) cloud
cmpDigitOne.item["c"] := "{U+2602}"  ; (☂) umbrella
cmpDigitOne.item["d"] := "{U+2603}"  ; (☃) snowman
cmpDigitOne.item["e"] := "{U+2604}"  ; (☄) comet
cmpDigitOne.item["f"] := "{U+2605}"  ; (★) black star
cmpDigitOne.item["g"] := "{U+2606}"  ; (☆) white star
cmpDigitOne.item["h"] := "{U+260E}"  ; (☎) black telephone
cmpDigitOne.item["i"] := "{U+260F}"  ; (☏) white telephone
cmpDigitOne.item["j"] := "{U+2610}"  ; (☐) ballot box
cmpDigitOne.item["k"] := "{U+2611}"  ; (☑) ballot box with check
cmpDigitOne.item["l"] := "{U+2612}"  ; (☒) ballot box with x
cmpDigitOne.item["m"] := "{U+2619}"  ; (☙) reversed rotated floral heart bullet
cmpDigitOne.item["n"] := "{U+261A}"  ; (☚) black left-pointing index
cmpDigitOne.item["o"] := "{U+261B}"  ; (☛) black right-pointing index
cmpDigitOne.item["p"] := "{U+261C}"  ; (☜) white left-pointing index
cmpDigitOne.item["q"] := "{U+261D}"  ; (☝) white up-pointing index
cmpDigitOne.item["r"] := "{U+261E}"  ; (☞) white right-pointing index
cmpDigitOne.item["s"] := "{U+261F}"  ; (☟) white down-pointing index
cmpDigitOne.item["t"] := "{U+2620}"  ; (☠) skull and crossbones
cmpDigitOne.item["u"] := "{U+2621}"  ; (☡) caution sign
cmpDigitOne.item["v"] := "{U+2622}"  ; (☢) radioactive sign
cmpDigitOne.item["w"] := "{U+2623}"  ; (☣) biohazard sign
cmpDigitOne.item["x"] := "{U+2639}"  ; (☹) white frowning face
cmpDigitOne.item["y"] := "{U+263A}"  ; (☺) white smiling face
cmpDigitOne.item["z"] := "{U+263B}"  ; (☻) black smiling face

cmpDigitTwo.item["a"] := "{U+263C}"  ; (☼) white sun with rays
cmpDigitTwo.item["b"] := "{U+263D}"  ; (☽) first quarter moon
cmpDigitTwo.item["c"] := "{U+263E}"  ; (☾) last quarter moon
cmpDigitTwo.item["d"] := "{U+2640}"  ; (♀) female sign (Venus)
cmpDigitTwo.item["e"] := "{U+2642}"  ; (♂) male sign (Mars)
cmpDigitTwo.item["f"] := "{U+2668}"  ; (♨) hot springs
cmpDigitTwo.item["g"] := "{U+2669}"  ; (♩) quarter note
cmpDigitTwo.item["h"] := "{U+266A}"  ; (♪) eighth note
cmpDigitTwo.item["i"] := "{U+266B}"  ; (♫) beamed eighth notes
cmpDigitTwo.item["j"] := "{U+266C}"  ; (♬) beamed sixteenth notes
cmpDigitTwo.item["k"] := "{U+266D}"  ; (♭) music flat sign
cmpDigitTwo.item["l"] := "{U+266E}"  ; (♮) music natural sign
cmpDigitTwo.item["m"] := "{U+266F}"  ; (♯) music sharp sign
cmpDigitTwo.item["n"] := "{U+2672}"  ; (♲) universal recycling symbol
cmpDigitTwo.item["o"] := "{U+267A}"  ; (♺) recycling symbol for generic materials
cmpDigitTwo.item["p"] := "{U+267B}"  ; (♻) black universal recycling symbol
cmpDigitTwo.item["q"] := "{U+267F}"  ; (♿) wheelchair symbol
cmpDigitTwo.item["r"] := "{U+2690}"  ; (⚐) white flag
cmpDigitTwo.item["s"] := "{U+2691}"  ; (⚑) black flag
cmpDigitTwo.item["t"] := "{U+26A0}"  ; (⚠) warning sign
cmpDigitTwo.item["u"] := "{U+26A1}"  ; (⚡) high voltage sign
cmpDigitTwo.item["v"] := "{U+26D4}"  ; (⛔) no entry
cmpDigitTwo.item["w"] := "{U+231A}"  ; (⌚) watch
cmpDigitTwo.item["x"] := "{U+231B}"  ; (⌛) hourglass

cmpDigitThree.item["a"] := "{U+2701}"  ; (✁) upper blade scissors
cmpDigitThree.item["b"] := "{U+2702}"  ; (✂) black scissors
cmpDigitThree.item["c"] := "{U+2703}"  ; (✃) lower blade scissors
cmpDigitThree.item["d"] := "{U+2704}"  ; (✄) white scissors
cmpDigitThree.item["e"] := "{U+2706}"  ; (✆) telephone location sign
cmpDigitThree.item["f"] := "{U+2707}"  ; (✇) tape drive
cmpDigitThree.item["g"] := "{U+2708}"  ; (✈) airplane
cmpDigitThree.item["h"] := "{U+2709}"  ; (✉) envelope
cmpDigitThree.item["i"] := "{U+270A}"  ; (✊) raised fist
cmpDigitThree.item["j"] := "{U+270B}"  ; (✋) raised hand
cmpDigitThree.item["k"] := "{U+270C}"  ; (✌) victory hand
cmpDigitThree.item["l"] := "{U+270D}"  ; (✍) writing hand
cmpDigitThree.item["m"] := "{U+270E}"  ; (✎) lower right pencil
cmpDigitThree.item["n"] := "{U+270F}"  ; (✏) pencil
cmpDigitThree.item["o"] := "{U+2710}"  ; (✐) upper right pencil
cmpDigitThree.item["p"] := "{U+2711}"  ; (✑) white nib
cmpDigitThree.item["q"] := "{U+2712}"  ; (✒) black nib
cmpDigitThree.item["r"] := "{U+2713}"  ; (✓) check mark
cmpDigitThree.item["s"] := "{U+2714}"  ; (✔) heavy check mark
cmpDigitThree.item["t"] := "{U+2715}"  ; (✕) multiplication x
cmpDigitThree.item["u"] := "{U+2716}"  ; (✖) heavy multiplication x
cmpDigitThree.item["v"] := "{U+2717}"  ; (✗) ballot x
cmpDigitThree.item["w"] := "{U+2718}"  ; (✘) heavy ballot x
cmpDigitThree.item["x"] := "{U+2719}"  ; (✙) outlined Greek cross
cmpDigitThree.item["y"] := "{U+271A}"  ; (✚) heavy Greek cross
cmpDigitThree.item["z"] := "{U+271B}"  ; (✛) open centre cross

cmpDigitFour.item["a"] := "{U+271C}"  ; (✜) heavy open centre cross
cmpDigitFour.item["b"] := "{U+271D}"  ; (✝) Latin cross
cmpDigitFour.item["c"] := "{U+271E}"  ; (✞) shadowed white Latin cross
cmpDigitFour.item["d"] := "{U+271F}"  ; (✟) outlined Latin cross
cmpDigitFour.item["e"] := "{U+2720}"  ; (✠) Maltese cross
cmpDigitFour.item["f"] := "{U+2721}"  ; (✡) star of David
cmpDigitFour.item["g"] := "{U+2722}"  ; (✢) four teardrop-spoked asterisk
cmpDigitFour.item["h"] := "{U+2723}"  ; (✣) four balloon-spoked asterisk
cmpDigitFour.item["i"] := "{U+2724}"  ; (✤) heavy four balloon-spoked asterisk
cmpDigitFour.item["j"] := "{U+2725}"  ; (✥) four club-spoked asterisk
cmpDigitFour.item["k"] := "{U+2726}"  ; (✦) black four-pointed star
cmpDigitFour.item["l"] := "{U+2727}"  ; (✧) white four-pointed star
cmpDigitFour.item["m"] := "{U+2729}"  ; (✩) stress outlined white star
cmpDigitFour.item["n"] := "{U+272A}"  ; (✪) circled white star
cmpDigitFour.item["o"] := "{U+272B}"  ; (✫) open centre black star
cmpDigitFour.item["p"] := "{U+272C}"  ; (✬) black centre white star
cmpDigitFour.item["q"] := "{U+272D}"  ; (✭) outlined black star
cmpDigitFour.item["r"] := "{U+272E}"  ; (✮) heavy outlined black star
cmpDigitFour.item["s"] := "{U+272F}"  ; (✯) pinwheel star
cmpDigitFour.item["t"] := "{U+2730}"  ; (✰) shadowed white star
cmpDigitFour.item["u"] := "{U+2731}"  ; (✱) heavy asterisk
cmpDigitFour.item["v"] := "{U+2732}"  ; (✲) open centre asterisk
cmpDigitFour.item["w"] := "{U+2733}"  ; (✳) eight-spoked asterisk
cmpDigitFour.item["x"] := "{U+2734}"  ; (✴) eight-pointed black star
cmpDigitFour.item["y"] := "{U+2735}"  ; (✵) eight-pointed pinwheel star
cmpDigitFour.item["z"] := "{U+2736}"  ; (✶) six-pointed black star

cmpDigitFive.item["a"] := "{U+2737}"  ; (✷) eight-pointed rectilinear black star
cmpDigitFive.item["b"] := "{U+2738}"  ; (✸) heavy eight-pointed rectilinear black star
cmpDigitFive.item["c"] := "{U+2739}"  ; (✹) twelve pointed black star
cmpDigitFive.item["d"] := "{U+273A}"  ; (✺) sixteen-pointed asterisk
cmpDigitFive.item["e"] := "{U+273B}"  ; (✻) teardrop-spoked asterisk
cmpDigitFive.item["f"] := "{U+273C}"  ; (✼) open centre teardrop-spoked asterisk
cmpDigitFive.item["g"] := "{U+273D}"  ; (✽) heavy teardrop-spoked asterisk
cmpDigitFive.item["h"] := "{U+273E}"  ; (✾) six-petalled black and white florette
cmpDigitFive.item["i"] := "{U+273F}"  ; (✿) black florette
cmpDigitFive.item["j"] := "{U+2740}"  ; (❀) white florette
cmpDigitFive.item["k"] := "{U+2741}"  ; (❁) eight-petalled outlined black florette
cmpDigitFive.item["l"] := "{U+2742}"  ; (❂) circled open centre eight-pointed star
cmpDigitFive.item["m"] := "{U+2743}"  ; (❃) heavy teardrop-spoked pinwheel asterisk
cmpDigitFive.item["n"] := "{U+2744}"  ; (❄) snowflake
cmpDigitFive.item["o"] := "{U+2745}"  ; (❅) tight trifoliate snowflake
cmpDigitFive.item["p"] := "{U+2746}"  ; (❆) heavy chevron snowflake
cmpDigitFive.item["q"] := "{U+2747}"  ; (❇) sparkle
cmpDigitFive.item["r"] := "{U+2748}"  ; (❈) heavy sparkle
cmpDigitFive.item["s"] := "{U+2749}"  ; (❉) balloon-spoked asterisk
cmpDigitFive.item["t"] := "{U+274A}"  ; (❊) eight teardrop-spoked propeller asterisk
cmpDigitFive.item["u"] := "{U+274B}"  ; (❋) heavy eight teardrop-spoked propeller asterisk
cmpDigitFive.item["v"] := "{U+274D}"  ; (❍) shadowed white circle
cmpDigitFive.item["w"] := "{U+274F}"  ; (❏) lower right drop-shadowed white square
cmpDigitFive.item["x"] := "{U+2750}"  ; (❐) upper right drop-shadowed white square
cmpDigitFive.item["y"] := "{U+2751}"  ; (❑) lower right shadowed white square
cmpDigitFive.item["z"] := "{U+2752}"  ; (❒) upper right shadowed white square

cmpDigitSix.item["a"] := "{U+2756}"  ; (❖) black diamond minus white x
cmpDigitSix.item["b"] := "{U+2758}"  ; (❘) light vertical bar
cmpDigitSix.item["c"] := "{U+2759}"  ; (❙) medium vertical bar
cmpDigitSix.item["d"] := "{U+275A}"  ; (❚) heavy vertical bar
cmpDigitSix.item["e"] := "{U+275B}"  ; (❛) heavy single turned comma quotation mark ornament
cmpDigitSix.item["f"] := "{U+275C}"  ; (❜) heavy single comma quotation mark ornament
cmpDigitSix.item["g"] := "{U+275D}"  ; (❝) heavy double turned comma quotation mark ornament
cmpDigitSix.item["h"] := "{U+275E}"  ; (❞) heavy double comma quotation mark ornament
cmpDigitSix.item["i"] := "{U+275F}"  ; (❟) heavy low single comma quotation mark ornament
cmpDigitSix.item["j"] := "{U+2760}"  ; (❠) heavy low double comma quotation mark ornament
cmpDigitSix.item["k"] := "{U+2761}"  ; (❡) curved stem paragraph sign ornament
cmpDigitSix.item["l"] := "{U+2762}"  ; (❢) heavy exclamation mark ornament
cmpDigitSix.item["m"] := "{U+2763}"  ; (❣) heavy heart exclamation mark ornament
cmpDigitSix.item["n"] := "{U+2764}"  ; (❤) heavy black heart
cmpDigitSix.item["o"] := "{U+2765}"  ; (❥) rotated heavy black heart bullet
cmpDigitSix.item["p"] := "{U+2766}"  ; (❦) floral heart
cmpDigitSix.item["q"] := "{U+2767}"  ; (❧) rotated floral heart bullet

cmpDigitSeven.item["a"] := "{U+2794}"  ; (➔) heavy wide-headed rightwards arrow
cmpDigitSeven.item["b"] := "{U+2798}"  ; (➘) heavy south east arrow
cmpDigitSeven.item["c"] := "{U+2799}"  ; (➙) heavy rightwards arrow
cmpDigitSeven.item["d"] := "{U+279A}"  ; (➚) heavy north east arrow
cmpDigitSeven.item["e"] := "{U+279B}"  ; (➛) drafting point rightwards arrow
cmpDigitSeven.item["f"] := "{U+279C}"  ; (➜) heavy round-tipped rightwards arrow
cmpDigitSeven.item["g"] := "{U+279D}"  ; (➝) triangle-headed rightwards arrow
cmpDigitSeven.item["h"] := "{U+279E}"  ; (➞) heavy triangle-headed rightwards arrow
cmpDigitSeven.item["i"] := "{U+279F}"  ; (➟) dashed triangle-headed rightwards arrow
cmpDigitSeven.item["j"] := "{U+27A0}"  ; (➠) heavy dashed triangle-headed rightwards arrow
cmpDigitSeven.item["k"] := "{U+27A1}"  ; (➡) black rightwards arrow
cmpDigitSeven.item["l"] := "{U+27A2}"  ; (➢) 3d top-lighted rightwards arrowhead
cmpDigitSeven.item["m"] := "{U+27A3}"  ; (➣) 3d bottom-lighted rightwards arrowhead
cmpDigitSeven.item["n"] := "{U+27A4}"  ; (➤) black rightwards arrowhead
cmpDigitSeven.item["o"] := "{U+27A5}"  ; (➥) heavy black curved downwards and rightwards arrow
cmpDigitSeven.item["p"] := "{U+27A6}"  ; (➦) heavy black curved upwards and rightwards arrow
cmpDigitSeven.item["q"] := "{U+27A7}"  ; (➧) squat black rightwards arrow
cmpDigitSeven.item["r"] := "{U+27A8}"  ; (➨) heavy concave-pointed black rightwards arrow
cmpDigitSeven.item["s"] := "{U+27A9}"  ; (➩) right-shaded white rightwards arrow
cmpDigitSeven.item["t"] := "{U+27AA}"  ; (➪) left-shaded white rightwards arrow
cmpDigitSeven.item["u"] := "{U+27AB}"  ; (➫) back-tilted shadowed white rightwards arrow
cmpDigitSeven.item["v"] := "{U+27AC}"  ; (➬) front-tilted shadowed white rightwards arrow
cmpDigitSeven.item["w"] := "{U+27AD}"  ; (➭) heavy lower right-shadowed white rightwards arrow
cmpDigitSeven.item["x"] := "{U+27AE}"  ; (➮) heavy upper right-shadowed white rightwards arrow
cmpDigitSeven.item["y"] := "{U+27AF}"  ; (➯) notched lower right-shadowed white rightwards arrow
cmpDigitSeven.item["z"] := "{U+27B1}"  ; (➱) notched upper right-shadowed white rightwards arrow

cmpDigitEight.item["a"] := "{U+27B2}"  ; (➲) circled heavy white rightwards arrow
cmpDigitEight.item["b"] := "{U+27B3}"  ; (➳) white-feathered rightwards arrow
cmpDigitEight.item["c"] := "{U+27B4}"  ; (➴) black-feathered south east arrow
cmpDigitEight.item["d"] := "{U+27B5}"  ; (➵) black-feathered rightwards arrow
cmpDigitEight.item["e"] := "{U+27B6}"  ; (➶) black-feathered north east arrow
cmpDigitEight.item["f"] := "{U+27B7}"  ; (➷) heavy black-feathered south east arrow
cmpDigitEight.item["g"] := "{U+27B8}"  ; (➸) heavy black-feathered rightwards arrow
cmpDigitEight.item["h"] := "{U+27B9}"  ; (➹) heavy black-feathered north east arrow
cmpDigitEight.item["i"] := "{U+27BA}"  ; (➺) teardrop-barbed rightwards arrow
cmpDigitEight.item["j"] := "{U+27BB}"  ; (➻) heavy teardrop-shanked rightwards arrow
cmpDigitEight.item["k"] := "{U+27BC}"  ; (➼) wedge-tailed rightwards arrow
cmpDigitEight.item["l"] := "{U+27BD}"  ; (➽) heavy wedge-tailed rightwards arrow
cmpDigitEight.item["m"] := "{U+27BE}"  ; (➾) open-outlined rightwards arrow
cmpDigitEight.item["n"] := "{U+27C1}"  ; (⟁) white triangle containing small white triangle


; Compose :  Chess Pieces and Playing Card Suit Symbols (C)

cmpCapitalC := ComObjCreate("Scripting.Dictionary")
cmpCapitalC.item["k"] := "{U+2654}"  ; (♔) white chess king
cmpCapitalC.item["q"] := "{U+2655}"  ; (♕) white chess queen
cmpCapitalC.item["r"] := "{U+2656}"  ; (♖) white chess rook
cmpCapitalC.item["b"] := "{U+2657}"  ; (♗) white chess bishop
cmpCapitalC.item["n"] := "{U+2658}"  ; (♘) white chess knight
cmpCapitalC.item["p"] := "{U+2659}"  ; (♙) white chess pawn
cmpCapitalC.item["K"] := "{U+265A}"  ; (♚) black chess king
cmpCapitalC.item["Q"] := "{U+265B}"  ; (♛) black chess queen
cmpCapitalC.item["R"] := "{U+265C}"  ; (♜) black chess rook
cmpCapitalC.item["B"] := "{U+265D}"  ; (♝) black chess bishop
cmpCapitalC.item["N"] := "{U+265E}"  ; (♞) black chess knight
cmpCapitalC.item["P"] := "{U+265F}"  ; (♟) black chess pawn
cmpCapitalC.item["c"] := "{U+2667}"  ; (♧) white club suit
cmpCapitalC.item["C"] := "{U+2663}"  ; (♣) black club suit
cmpCapitalC.item["d"] := "{U+2662}"  ; (♢) white diamond suit
cmpCapitalC.item["D"] := "{U+2666}"  ; (♦) black diamond suit
cmpCapitalC.item["h"] := "{U+2661}"  ; (♡) white heart suit
cmpCapitalC.item["H"] := "{U+2665}"  ; (♥) black heart suit
cmpCapitalC.item["s"] := "{U+2664}"  ; (♤) white spade suit
cmpCapitalC.item["S"] := "{U+2660}"  ; (♠) black spade suit


; Compose :  Dingbat Negative Circled Digits (n)

cmpSmallN.item["1"] := "{U+2776}"  ; (❶) dingbat negative circled digit 1
cmpSmallN.item["2"] := "{U+2777}"  ; (❷) dingbat negative circled digit 2
cmpSmallN.item["3"] := "{U+2778}"  ; (❸) dingbat negative circled digit 3
cmpSmallN.item["4"] := "{U+2779}"  ; (❹) dingbat negative circled digit 4
cmpSmallN.item["5"] := "{U+277A}"  ; (❺) dingbat negative circled digit 5
cmpSmallN.item["6"] := "{U+277B}"  ; (❻) dingbat negative circled digit 6
cmpSmallN.item["7"] := "{U+277C}"  ; (❼) dingbat negative circled digit 7
cmpSmallN.item["8"] := "{U+277D}"  ; (❽) dingbat negative circled digit 8
cmpSmallN.item["9"] := "{U+277E}"  ; (❾) dingbat negative circled digit 9
cmpSmallN.item["0"] := "{U+277F}"  ; (❿) dingbat negative circled digit 10


; Configuration :  'Right Alt' and 'Right Alt + Shift' on US QWERTY

>!a::
  if GetKeyState("CapsLock", "T")
    Send {U+00C4}  ; (Ä) A with diaeresis
  else
    Send {U+00E4}  ; (ä) a with diaeresis
  return
>!+a::
  if GetKeyState("CapsLock", "T")
    Send {U+00E4}  ; (ä) a with diaeresis
  else
    Send {U+00C4}  ; (Ä) A with diaeresis
  return

>!q::
  if GetKeyState("CapsLock", "T")
    Send {U+00C6}  ; (Æ) letter AE
  else
    Send {U+00E6}  ; (æ) letter ae
  return
>!+q::
  if GetKeyState("CapsLock", "T")
    Send {U+00E6}  ; (æ) letter ae
  else
    Send {U+00C6}  ; (Æ) letter AE
  return

>!w::
  if GetKeyState("CapsLock", "T")
    Send {U+00C5}  ; (Å) A with ring above
  else
    Send {U+00E5}  ; (å) a with ring above
  return
>!+w::
  if GetKeyState("CapsLock", "T")
    Send {U+00E5}  ; (å) a with ring above
  else
    Send {U+00C5}  ; (Å) A with ring above
  return

>!z::
  if GetKeyState("CapsLock", "T")
    Send {U+00C1}  ; (Á) A with acute
  else
    Send {U+00E1}  ; (á) a with acute
  return
>!+z::
  if GetKeyState("CapsLock", "T")
    Send {U+00E1}  ; (á) a with acute
  else
    Send {U+00C1}  ; (Á) A with acute
  return

>!x::
  if GetKeyState("CapsLock", "T")
    Send {U+00C0}  ; (À) A with grave
  else
    Send {U+00E0}  ; (à) a with grave
  return
>!+x::
  if GetKeyState("CapsLock", "T")
    Send {U+00E0}  ; (à) a with grave
  else
    Send {U+00C0}  ; (À) A with grave
  return

>!d::
  if GetKeyState("CapsLock", "T")
    Send {U+00C2}  ; (Â) A with circumflex
  else
    Send {U+00E2}  ; (â) a with circumflex
  return
>!+d::
  if GetKeyState("CapsLock", "T")
    Send {U+00E2}  ; (â) a with circumflex
  else
    Send {U+00C2}  ; (Â) A with circumflex
  return

>!c::
  if GetKeyState("CapsLock", "T")
    Send {U+00C7}  ; (Ç) C with cedilla
  else
    Send {U+00E7}  ; (ç) c with cedilla
  return
>!+c::
  if GetKeyState("CapsLock", "T")
    Send {U+00E7}  ; (ç) c with cedilla
  else
    Send {U+00C7}  ; (Ç) C with cedilla
  return

>!e::
  if GetKeyState("CapsLock", "T")
    Send {U+00CB}  ; (Ë) E with diaeresis
  else
    Send {U+00EB}  ; (ë) e with diaeresis
  return
>!+e::
  if GetKeyState("CapsLock", "T")
    Send {U+00EB}  ; (ë) e with diaeresis
  else
    Send {U+00CB}  ; (Ë) E with diaeresis
  return

>!f::
  if GetKeyState("CapsLock", "T")
    Send {U+00C9}  ; (É) E with acute
  else
    Send {U+00E9}  ; (é) e with acute
  return
>!+f::
  if GetKeyState("CapsLock", "T")
    Send {U+00E9}  ; (é) e with acute
  else
    Send {U+00C9}  ; (É) E with acute
  return

>!g::
  if GetKeyState("CapsLock", "T")
    Send {U+00C8}  ; (È) E with grave
  else
    Send {U+00E8}  ; (è) e with grave
  return
>!+g::
  if GetKeyState("CapsLock", "T")
    Send {U+00E8}  ; (è) e with grave
  else
    Send {U+00C8}  ; (È) E with grave
  return

>!r::
  if GetKeyState("CapsLock", "T")
    Send {U+00CA}  ; (Ê) E with circumflex
  else
    Send {U+00EA}  ; (ê) e with circumflex
  return
>!+r::
  if GetKeyState("CapsLock", "T")
    Send {U+00EA}  ; (ê) e with circumflex
  else
    Send {U+00CA}  ; (Ê) E with circumflex
  return

>!i::
  if GetKeyState("CapsLock", "T")
    Send {U+00CF}  ; (Ï) I with diaeresis
  else
    Send {U+00EF}  ; (ï) i with diaeresis
  return
>!+i::
  if GetKeyState("CapsLock", "T")
    Send {U+00EF}  ; (ï) i with diaeresis
  else
    Send {U+00CF}  ; (Ï) I with diaeresis
  return

>!v::
  if GetKeyState("CapsLock", "T")
    Send {U+00CD}  ; (Í) I with acute
  else
    Send {U+00ED}  ; (í) i with acute
  return
>!+v::
  if GetKeyState("CapsLock", "T")
    Send {U+00ED}  ; (í) i with acute
  else
    Send {U+00CD}  ; (Í) I with acute
  return

>!b::
  if GetKeyState("CapsLock", "T")
    Send {U+00CC}  ; (Ì) I with grave
  else
    Send {U+00EC}  ; (ì) i with grave
  return
>!+b::
  if GetKeyState("CapsLock", "T")
    Send {U+00EC}  ; (ì) i with grave
  else
    Send {U+00CC}  ; (Ì) I with grave
  return

>!t::
  if GetKeyState("CapsLock", "T")
    Send {U+00CE}  ; (Î) I with circumflex
  else
    Send {U+00EE}  ; (î) i with circumflex
  return
>!+t::
  if GetKeyState("CapsLock", "T")
    Send {U+00EE}  ; (î) i with circumflex
  else
    Send {U+00CE}  ; (Î) I with circumflex
  return

>!n::
  if GetKeyState("CapsLock", "T")
    Send {U+00D1}  ; (Ñ) N with tilde
  else
    Send {U+00F1}  ; (ñ) n with tilde
  return
>!+n::
  if GetKeyState("CapsLock", "T")
    Send {U+00F1}  ; (ñ) n with tilde
  else
    Send {U+00D1}  ; (Ñ) N with tilde
  return

>!o::
  if GetKeyState("CapsLock", "T")
    Send {U+00D6}  ; (Ö) O with diaeresis
  else
    Send {U+00F6}  ; (ö) o with diaeresis
  return
>!+o::
  if GetKeyState("CapsLock", "T")
    Send {U+00F6}  ; (ö) o with diaeresis
  else
    Send {U+00D6}  ; (Ö) O with diaeresis
  return

>!k::
  if GetKeyState("CapsLock", "T")
    Send {U+0152}  ; (Œ) ligature OE
  else
    Send {U+0153}  ; (œ) ligature oe
  return
>!+k::
  if GetKeyState("CapsLock", "T")
    Send {U+0153}  ; (œ) ligature oe
  else
    Send {U+0152}  ; (Œ) ligature OE
  return

>!l::
  if GetKeyState("CapsLock", "T")
    Send {U+00D8}  ; (Ø) O with stroke
  else
    Send {U+00F8}  ; (ø) o with stroke
  return
>!+l::
  if GetKeyState("CapsLock", "T")
    Send {U+00F8}  ; (ø) o with stroke
  else
    Send {U+00D8}  ; (Ø) O with stroke
  return

>!,::
  if GetKeyState("CapsLock", "T")
    Send {U+00D3}  ; (Ó) O with acute
  else
    Send {U+00F3}  ; (ó) o with acute
  return
>!<::
  if GetKeyState("CapsLock", "T")
    Send {U+00F3}  ; (ó) o with acute
  else
    Send {U+00D3}  ; (Ó) O with acute
  return

>!.::
  if GetKeyState("CapsLock", "T")
    Send {U+00D2}  ; (Ò) O with grave
  else
    Send {U+00F2}  ; (ò) o with grave
  return
>!>::
  if GetKeyState("CapsLock", "T")
    Send {U+00F2}  ; (ò) o with grave
  else
    Send {U+00D2}  ; (Ò) O with grave
  return

>!p::
  if GetKeyState("CapsLock", "T")
    Send {U+00D4}  ; (Ô) O with circumflex
  else
    Send {U+00F4}  ; (ô) o with circumflex
  return
>!+p::
  if GetKeyState("CapsLock", "T")
    Send {U+00F4}  ; (ô) o with circumflex
  else
    Send {U+00D4}  ; (Ô) O with circumflex
  return

>!s::
  if GetKeyState("CapsLock", "T")
    Send {U+1E9E}  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send {U+00DF}  ; (ß) small sharp s (Eszett)
  return
>!+s::
  if GetKeyState("CapsLock", "T")
    Send {U+00DF}  ; (ß) small sharp s (Eszett)
  else
    Send {U+1E9E}  ; (ẞ) capital sharp S (capital Eszett)
  return

>!u::
  if GetKeyState("CapsLock", "T")
    Send {U+00DC}  ; (Ü) U with diaeresis
  else
    Send {U+00FC}  ; (ü) u with diaeresis
  return
>!+u::
  if GetKeyState("CapsLock", "T")
    Send {U+00FC}  ; (ü) u with diaeresis
  else
    Send {U+00DC}  ; (Ü) U with diaeresis
  return

>!h::
  if GetKeyState("CapsLock", "T")
    Send {U+00DA}  ; (Ú) U with acute
  else
    Send {U+00FA}  ; (ú) u with acute
  return
>!+h::
  if GetKeyState("CapsLock", "T")
    Send {U+00FA}  ; (ú) u with acute
  else
    Send {U+00DA}  ; (Ú) U with acute
  return

>!j::
  if GetKeyState("CapsLock", "T")
    Send {U+00D9}  ; (Ù) U with grave
  else
    Send {U+00F9}  ; (ù) u with grave
  return
>!+j::
  if GetKeyState("CapsLock", "T")
    Send {U+00F9}  ; (ù) u with grave
  else
    Send {U+00D9}  ; (Ù) U with grave
  return

>!y::
  if GetKeyState("CapsLock", "T")
    Send {U+00DB}  ; (Û) U with circumflex
  else
    Send {U+00FB}  ; (û) u with circumflex
  return
>!+y::
  if GetKeyState("CapsLock", "T")
    Send {U+00FB}  ; (û) u with circumflex
  else
    Send {U+00DB}  ; (Û) U with circumflex
  return

>!6::
  if GetKeyState("CapsLock", "T")
    Send {U+00C3}  ; (Ã) A with tilde
  else
    Send {U+00E3}  ; (ã) a with tilde
  return
>!+6::
  if GetKeyState("CapsLock", "T")
    Send {U+00E3}  ; (ã) a with tilde
  else
    Send {U+00C3}  ; (Ã) A with tilde
  return

>!7::
  if GetKeyState("CapsLock", "T")
    Send {U+00D5}  ; (Õ) O with tilde
  else
    Send {U+00F5}  ; (õ) o with tilde
  return
>!+7::
  if GetKeyState("CapsLock", "T")
    Send {U+00F5}  ; (õ) o with tilde
  else
    Send {U+00D5}  ; (Õ) O with tilde
  return

>!m::Send {U+00B5}   ; (µ) micro sign
>!+m::Send {U+00B1}  ; (±) plus-minus sign

>!1::Send {U+00A1}   ; (¡) inverted exclamation mark
>!+1::Send {U+00B9}  ; (¹) superscript 1

>!2::Send {U+2264}   ; (≤) less-than or equal to
>!+2::Send {U+00B2}  ; (²) superscript 2

>!3::Send {U+2265}   ; (≥) greater-than or equal to
>!+3::Send {U+00B3}  ; (³) superscript 3

>!4::Send {U+00A3}   ; (£) pound sign
>!+4::Send {U+00A5}  ; (¥) yen sign

>!5::Send {U+20AC}   ; (€) euro sign
>!+5::Send {U+00A2}  ; (¢) cent sign (dollar)

>!8::Send {U+201E}   ; („) double low-9 quotation mark
>!+8::Send {U+00A7}  ; (§) section sign

>!9::Send {U+201C}   ; (“) left double quotation mark
>!+9::Send {U+2018}  ; (‘) left single quotation mark

>!0::Send {U+201D}   ; (”) right double quotation mark
>!+0::Send {U+2019}  ; (’) right single quotation mark

>!-::Send {U+2013}   ; (–) en dash
>!_::Send {U+2014}   ; (—) em dash

>!=::Send {U+00D7}   ; (×) multiplication sign
>!+::Send {U+00F7}   ; (÷) division sign

>![::Send {U+00AB}   ; («) left-pointing double angle quotation mark
>!{::Send {U+2039}   ; (‹) left-pointing single angle quotation mark

>!]::Send {U+00BB}   ; (») right-pointing double angle quotation mark
>!}::Send {U+203A}   ; (›) right-pointing single angle quotation mark

>!;::Send {U+00B0}   ; (°) degree sign
>!+;::Send {U+00B7}  ; (·) middle dot

>!'::Send {U+266A}   ; (♪) eighth note
>!"::Send {U+266B}   ; (♫) beamed eighth notes

>!\::Send {U+2002}   ;     en space
>!|::Send {U+2003}   ;     em space

>!/::Send {U+00BF}   ; (¿) inverted question mark
>!?::Send {U+2022}   ; (•) bullet

>!space::Send {U+00A0}   ; non-breaking space (NBSP)
>!+space::Send {U+00A0}  ; non-breaking space (NBSP)


; Configuration :  Compose Key Selector

>!`::
>!~::
>!sc056::
>!+sc056::
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
  else if (keyA == "t")
    Send % cmpSmallT.item[keyB]
  else if (keyA == "T")
    Send % cmpCapitalT.item[keyB]
  else if (keyA == "P")
    Send % cmpCapitalP.item[keyB]
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
  else if (keyA == "[")
    Send % cmpBracketLeft.item[keyB]
  else if (keyA == "]")
    Send % cmpBracketRight.item[keyB]
  else if (keyA == "\")
    Send % cmpBackslash.item[keyB]
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
  else if (keyA == "C")
    Send % cmpCapitalC.item[keyB]

  keyA := ""  ; avoids leaking content via debug properties
  keyB := ""  ; avoids leaking content via debug properties
  return
