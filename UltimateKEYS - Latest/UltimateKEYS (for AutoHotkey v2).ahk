#requires AutoHotkey v2

; UltimateKEYS (for AutoHotkey v2).ahk - 2024-07-31

; Website :  https://pieter-degroote.github.io/UltimateKEYS/

; GitHub :   https://github.com/pieter-degroote/UltimateKEYS

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout (on Windows) :  US QWERTY



KeyHistory 0      ; disables the key history (for privacy and security)
ListLines False   ; omits recently executed lines from history (for privacy and security)

SendMode "Input"  ; optimizes for faster and more reliable input

global gEndKeys := "{bs}{del}{esc}{home}{end}"  ; ends dead key input on specific keys


; Compose :  Acute Accent (')

global cmpAcuteAccent := Map()
cmpAcuteAccent["a"] := "{U+00E1}"  ; (á) a with acute
cmpAcuteAccent["A"] := "{U+00C1}"  ; (Á) A with acute
cmpAcuteAccent["c"] := "{U+0107}"  ; (ć) c with acute
cmpAcuteAccent["C"] := "{U+0106}"  ; (Ć) C with acute
cmpAcuteAccent["d"] := "{U+1E09}"  ; (ḉ) c with cedilla and acute
cmpAcuteAccent["D"] := "{U+1E08}"  ; (Ḉ) C with cedilla and acute
cmpAcuteAccent["e"] := "{U+00E9}"  ; (é) e with acute
cmpAcuteAccent["E"] := "{U+00C9}"  ; (É) E with acute
cmpAcuteAccent["g"] := "{U+01F5}"  ; (ǵ) g with acute
cmpAcuteAccent["G"] := "{U+01F4}"  ; (Ǵ) G with acute
cmpAcuteAccent["i"] := "{U+00ED}"  ; (í) i with acute
cmpAcuteAccent["I"] := "{U+00CD}"  ; (Í) I with acute
cmpAcuteAccent["j"] := "{U+01FF}"  ; (ǿ) o with stroke and acute
cmpAcuteAccent["J"] := "{U+01FE}"  ; (Ǿ) O with stroke and acute
cmpAcuteAccent["k"] := "{U+1E31}"  ; (ḱ) k with acute
cmpAcuteAccent["K"] := "{U+1E30}"  ; (Ḱ) K with acute
cmpAcuteAccent["l"] := "{U+013A}"  ; (ĺ) l with acute
cmpAcuteAccent["L"] := "{U+0139}"  ; (Ĺ) L with acute
cmpAcuteAccent["m"] := "{U+1E3F}"  ; (ḿ) m with acute
cmpAcuteAccent["M"] := "{U+1E3E}"  ; (Ḿ) M with acute
cmpAcuteAccent["n"] := "{U+0144}"  ; (ń) n with acute
cmpAcuteAccent["N"] := "{U+0143}"  ; (Ń) N with acute
cmpAcuteAccent["o"] := "{U+00F3}"  ; (ó) o with acute
cmpAcuteAccent["O"] := "{U+00D3}"  ; (Ó) O with acute
cmpAcuteAccent["p"] := "{U+1E55}"  ; (ṕ) p with acute
cmpAcuteAccent["P"] := "{U+1E54}"  ; (Ṕ) P with acute
cmpAcuteAccent["q"] := "{U+01FD}"  ; (ǽ) ae with acute
cmpAcuteAccent["Q"] := "{U+01FC}"  ; (Ǽ) AE with acute
cmpAcuteAccent["r"] := "{U+0155}"  ; (ŕ) r with acute
cmpAcuteAccent["R"] := "{U+0154}"  ; (Ŕ) R with acute
cmpAcuteAccent["s"] := "{U+015B}"  ; (ś) s with acute
cmpAcuteAccent["S"] := "{U+015A}"  ; (Ś) S with acute
cmpAcuteAccent["u"] := "{U+00FA}"  ; (ú) u with acute
cmpAcuteAccent["U"] := "{U+00DA}"  ; (Ú) U with acute
cmpAcuteAccent["w"] := "{U+1E83}"  ; (ẃ) w with acute
cmpAcuteAccent["W"] := "{U+1E82}"  ; (Ẃ) W with acute
cmpAcuteAccent["x"] := "{U+01FB}"  ; (ǻ) a with ring above and acute
cmpAcuteAccent["X"] := "{U+01FA}"  ; (Ǻ) A with ring above and acute
cmpAcuteAccent["y"] := "{U+00FD}"  ; (ý) y with acute
cmpAcuteAccent["Y"] := "{U+00DD}"  ; (Ý) Y with acute
cmpAcuteAccent["z"] := "{U+017A}"  ; (ź) z with acute
cmpAcuteAccent["Z"] := "{U+0179}"  ; (Ź) Z with acute


; Compose :  Grave Accent (`)

global cmpGraveAccent := Map()
cmpGraveAccent["a"] := "{U+00E0}"  ; (à) a with grave
cmpGraveAccent["A"] := "{U+00C0}"  ; (À) A with grave
cmpGraveAccent["e"] := "{U+00E8}"  ; (è) e with grave
cmpGraveAccent["E"] := "{U+00C8}"  ; (È) E with grave
cmpGraveAccent["i"] := "{U+00EC}"  ; (ì) i with grave
cmpGraveAccent["I"] := "{U+00CC}"  ; (Ì) I with grave
cmpGraveAccent["n"] := "{U+01F9}"  ; (ǹ) n with grave
cmpGraveAccent["N"] := "{U+01F8}"  ; (Ǹ) N with grave
cmpGraveAccent["o"] := "{U+00F2}"  ; (ò) o with grave
cmpGraveAccent["O"] := "{U+00D2}"  ; (Ò) O with grave
cmpGraveAccent["u"] := "{U+00F9}"  ; (ù) u with grave
cmpGraveAccent["U"] := "{U+00D9}"  ; (Ù) U with grave
cmpGraveAccent["w"] := "{U+1E81}"  ; (ẁ) w with grave
cmpGraveAccent["W"] := "{U+1E80}"  ; (Ẁ) W with grave
cmpGraveAccent["y"] := "{U+1EF3}"  ; (ỳ) y with grave
cmpGraveAccent["Y"] := "{U+1EF2}"  ; (Ỳ) Y with grave


; Compose :  Diaeresis (")

global cmpDiaeresis := Map()
cmpDiaeresis["a"] := "{U+00E4}"  ; (ä) a with diaeresis
cmpDiaeresis["A"] := "{U+00C4}"  ; (Ä) A with diaeresis
cmpDiaeresis["e"] := "{U+00EB}"  ; (ë) e with diaeresis
cmpDiaeresis["E"] := "{U+00CB}"  ; (Ë) E with diaeresis
cmpDiaeresis["h"] := "{U+1E27}"  ; (ḧ) h with diaeresis
cmpDiaeresis["H"] := "{U+1E26}"  ; (Ḧ) H with diaeresis
cmpDiaeresis["i"] := "{U+00EF}"  ; (ï) i with diaeresis
cmpDiaeresis["I"] := "{U+00CF}"  ; (Ï) I with diaeresis
cmpDiaeresis["o"] := "{U+00F6}"  ; (ö) o with diaeresis
cmpDiaeresis["O"] := "{U+00D6}"  ; (Ö) O with diaeresis
cmpDiaeresis["t"] := "{U+1E97}"  ; (ẗ) t with diaeresis
cmpDiaeresis["u"] := "{U+00FC}"  ; (ü) u with diaeresis
cmpDiaeresis["U"] := "{U+00DC}"  ; (Ü) U with diaeresis
cmpDiaeresis["w"] := "{U+1E85}"  ; (ẅ) w with diaeresis
cmpDiaeresis["W"] := "{U+1E84}"  ; (Ẅ) W with diaeresis
cmpDiaeresis["x"] := "{U+1E8D}"  ; (ẍ) x with diaeresis
cmpDiaeresis["X"] := "{U+1E8C}"  ; (Ẍ) X with diaeresis
cmpDiaeresis["y"] := "{U+00FF}"  ; (ÿ) y with diaeresis
cmpDiaeresis["Y"] := "{U+0178}"  ; (Ÿ) Y with diaeresis


; Compose :  Circumflex Accent (c)

global cmpCircumflex := Map()
cmpCircumflex["a"] := "{U+00E2}"  ; (â) a with circumflex
cmpCircumflex["A"] := "{U+00C2}"  ; (Â) A with circumflex
cmpCircumflex["c"] := "{U+0109}"  ; (ĉ) c with circumflex
cmpCircumflex["C"] := "{U+0108}"  ; (Ĉ) C with circumflex
cmpCircumflex["e"] := "{U+00EA}"  ; (ê) e with circumflex
cmpCircumflex["E"] := "{U+00CA}"  ; (Ê) E with circumflex
cmpCircumflex["g"] := "{U+011D}"  ; (ĝ) g with circumflex
cmpCircumflex["G"] := "{U+011C}"  ; (Ĝ) G with circumflex
cmpCircumflex["h"] := "{U+0125}"  ; (ĥ) h with circumflex
cmpCircumflex["H"] := "{U+0124}"  ; (Ĥ) H with circumflex
cmpCircumflex["i"] := "{U+00EE}"  ; (î) i with circumflex
cmpCircumflex["I"] := "{U+00CE}"  ; (Î) I with circumflex
cmpCircumflex["j"] := "{U+0135}"  ; (ĵ) j with circumflex
cmpCircumflex["J"] := "{U+0134}"  ; (Ĵ) J with circumflex
cmpCircumflex["o"] := "{U+00F4}"  ; (ô) o with circumflex
cmpCircumflex["O"] := "{U+00D4}"  ; (Ô) O with circumflex
cmpCircumflex["s"] := "{U+015D}"  ; (ŝ) s with circumflex
cmpCircumflex["S"] := "{U+015C}"  ; (Ŝ) S with circumflex
cmpCircumflex["u"] := "{U+00FB}"  ; (û) u with circumflex
cmpCircumflex["U"] := "{U+00DB}"  ; (Û) U with circumflex
cmpCircumflex["w"] := "{U+0175}"  ; (ŵ) w with circumflex
cmpCircumflex["W"] := "{U+0174}"  ; (Ŵ) W with circumflex
cmpCircumflex["y"] := "{U+0177}"  ; (ŷ) y with circumflex
cmpCircumflex["Y"] := "{U+0176}"  ; (Ŷ) Y with circumflex
cmpCircumflex["z"] := "{U+1E91}"  ; (ẑ) z with circumflex
cmpCircumflex["Z"] := "{U+1E90}"  ; (Ẑ) Z with circumflex


; Compose :  Tilde (~)

global cmpTilde := Map()
cmpTilde["a"] := "{U+00E3}"  ; (ã) a with tilde
cmpTilde["A"] := "{U+00C3}"  ; (Ã) A with tilde
cmpTilde["e"] := "{U+1EBD}"  ; (ẽ) e with tilde
cmpTilde["E"] := "{U+1EBC}"  ; (Ẽ) E with tilde
cmpTilde["i"] := "{U+0129}"  ; (ĩ) i with tilde
cmpTilde["I"] := "{U+0128}"  ; (Ĩ) I with tilde
cmpTilde["l"] := "{U+026B}"  ; (ɫ) l with middle tilde
cmpTilde["L"] := "{U+2C62}"  ; (Ɫ) L with middle tilde
cmpTilde["n"] := "{U+00F1}"  ; (ñ) n with tilde
cmpTilde["N"] := "{U+00D1}"  ; (Ñ) N with tilde
cmpTilde["o"] := "{U+00F5}"  ; (õ) o with tilde
cmpTilde["O"] := "{U+00D5}"  ; (Õ) O with tilde
cmpTilde["u"] := "{U+0169}"  ; (ũ) u with tilde
cmpTilde["U"] := "{U+0168}"  ; (Ũ) U with tilde
cmpTilde["v"] := "{U+1E7D}"  ; (ṽ) v with tilde
cmpTilde["V"] := "{U+1E7C}"  ; (Ṽ) V with tilde
cmpTilde["y"] := "{U+1EF9}"  ; (ỹ) y with tilde
cmpTilde["Y"] := "{U+1EF8}"  ; (Ỹ) Y with tilde


; Compose :  Cedilla and Ogonek (,)

global cmpCedillaOgonek := Map()
cmpCedillaOgonek["a"] := "{U+0105}"  ; (ą) a with ogonek
cmpCedillaOgonek["A"] := "{U+0104}"  ; (Ą) A with ogonek
cmpCedillaOgonek["c"] := "{U+00E7}"  ; (ç) c with cedilla
cmpCedillaOgonek["C"] := "{U+00C7}"  ; (Ç) C with cedilla
cmpCedillaOgonek["d"] := "{U+1E11}"  ; (ḑ) d with cedilla
cmpCedillaOgonek["D"] := "{U+1E10}"  ; (Ḑ) D with cedilla
cmpCedillaOgonek["e"] := "{U+0119}"  ; (ę) e with ogonek
cmpCedillaOgonek["E"] := "{U+0118}"  ; (Ę) E with ogonek
cmpCedillaOgonek["f"] := "{U+0229}"  ; (ȩ) e with cedilla
cmpCedillaOgonek["F"] := "{U+0228}"  ; (Ȩ) E with cedilla
cmpCedillaOgonek["g"] := "{U+0123}"  ; (ģ) g with cedilla
cmpCedillaOgonek["G"] := "{U+0122}"  ; (Ģ) G with cedilla
cmpCedillaOgonek["h"] := "{U+1E29}"  ; (ḩ) h with cedilla
cmpCedillaOgonek["H"] := "{U+1E28}"  ; (Ḩ) H with cedilla
cmpCedillaOgonek["i"] := "{U+012F}"  ; (į) i with ogonek
cmpCedillaOgonek["I"] := "{U+012E}"  ; (Į) I with ogonek
cmpCedillaOgonek["k"] := "{U+0137}"  ; (ķ) k with cedilla
cmpCedillaOgonek["K"] := "{U+0136}"  ; (Ķ) K with cedilla
cmpCedillaOgonek["l"] := "{U+013C}"  ; (ļ) l with cedilla
cmpCedillaOgonek["L"] := "{U+013B}"  ; (Ļ) L with cedilla
cmpCedillaOgonek["n"] := "{U+0146}"  ; (ņ) n with cedilla
cmpCedillaOgonek["N"] := "{U+0145}"  ; (Ņ) N with cedilla
cmpCedillaOgonek["o"] := "{U+01EB}"  ; (ǫ) o with ogonek
cmpCedillaOgonek["O"] := "{U+01EA}"  ; (Ǫ) O with ogonek
cmpCedillaOgonek["r"] := "{U+0157}"  ; (ŗ) r with cedilla
cmpCedillaOgonek["R"] := "{U+0156}"  ; (Ŗ) R with cedilla
cmpCedillaOgonek["s"] := "{U+015F}"  ; (ş) s with cedilla
cmpCedillaOgonek["S"] := "{U+015E}"  ; (Ş) S with cedilla
cmpCedillaOgonek["t"] := "{U+0163}"  ; (ţ) t with cedilla
cmpCedillaOgonek["T"] := "{U+0162}"  ; (Ţ) T with cedilla
cmpCedillaOgonek["u"] := "{U+0173}"  ; (ų) u with ogonek
cmpCedillaOgonek["U"] := "{U+0172}"  ; (Ų) U with ogonek


; Compose :  Caron (v)

global cmpCaron := Map()
cmpCaron["a"] := "{U+01CE}"  ; (ǎ) a with caron
cmpCaron["A"] := "{U+01CD}"  ; (Ǎ) A with caron
cmpCaron["c"] := "{U+010D}"  ; (č) c with caron
cmpCaron["C"] := "{U+010C}"  ; (Č) C with caron
cmpCaron["d"] := "{U+010F}"  ; (ď) d with caron
cmpCaron["D"] := "{U+010E}"  ; (Ď) D with caron
cmpCaron["e"] := "{U+011B}"  ; (ě) e with caron
cmpCaron["E"] := "{U+011A}"  ; (Ě) E with caron
cmpCaron["g"] := "{U+01E7}"  ; (ǧ) g with caron
cmpCaron["G"] := "{U+01E6}"  ; (Ǧ) G with caron
cmpCaron["h"] := "{U+021F}"  ; (ȟ) h with caron
cmpCaron["H"] := "{U+021E}"  ; (Ȟ) H with caron
cmpCaron["i"] := "{U+01D0}"  ; (ǐ) i with caron
cmpCaron["I"] := "{U+01CF}"  ; (Ǐ) I with caron
cmpCaron["j"] := "{U+01F0}"  ; (ǰ) j with caron
cmpCaron["k"] := "{U+01E9}"  ; (ǩ) k with caron
cmpCaron["K"] := "{U+01E8}"  ; (Ǩ) K with caron
cmpCaron["l"] := "{U+013E}"  ; (ľ) l with caron
cmpCaron["L"] := "{U+013D}"  ; (Ľ) L with caron
cmpCaron["n"] := "{U+0148}"  ; (ň) n with caron
cmpCaron["N"] := "{U+0147}"  ; (Ň) N with caron
cmpCaron["o"] := "{U+01D2}"  ; (ǒ) o with caron
cmpCaron["O"] := "{U+01D1}"  ; (Ǒ) O with caron
cmpCaron["r"] := "{U+0159}"  ; (ř) r with caron
cmpCaron["R"] := "{U+0158}"  ; (Ř) R with caron
cmpCaron["s"] := "{U+0161}"  ; (š) s with caron
cmpCaron["S"] := "{U+0160}"  ; (Š) S with caron
cmpCaron["t"] := "{U+0165}"  ; (ť) t with caron
cmpCaron["T"] := "{U+0164}"  ; (Ť) T with caron
cmpCaron["u"] := "{U+01D4}"  ; (ǔ) u with caron
cmpCaron["U"] := "{U+01D3}"  ; (Ǔ) U with caron
cmpCaron["z"] := "{U+017E}"  ; (ž) z with caron
cmpCaron["Z"] := "{U+017D}"  ; (Ž) Z with caron
cmpCaron["3"] := "{U+01EF}"  ; (ǯ) small letter ezh with caron
cmpCaron["#"] := "{U+01EE}"  ; (Ǯ) capital letter ezh with caron


; Compose :  Dot Above (.)

global cmpDotAbove := Map()
cmpDotAbove["a"] := "{U+0227}"  ; (ȧ) a with dot above
cmpDotAbove["A"] := "{U+0226}"  ; (Ȧ) A with dot above
cmpDotAbove["b"] := "{U+1E03}"  ; (ḃ) b with dot above
cmpDotAbove["B"] := "{U+1E02}"  ; (Ḃ) B with dot above
cmpDotAbove["c"] := "{U+010B}"  ; (ċ) c with dot above
cmpDotAbove["C"] := "{U+010A}"  ; (Ċ) C with dot above
cmpDotAbove["d"] := "{U+1E0B}"  ; (ḋ) d with dot above
cmpDotAbove["D"] := "{U+1E0A}"  ; (Ḋ) D with dot above
cmpDotAbove["e"] := "{U+0117}"  ; (ė) e with dot above
cmpDotAbove["E"] := "{U+0116}"  ; (Ė) E with dot above
cmpDotAbove["f"] := "{U+1E1F}"  ; (ḟ) f with dot above
cmpDotAbove["F"] := "{U+1E1E}"  ; (Ḟ) F with dot above
cmpDotAbove["g"] := "{U+0121}"  ; (ġ) g with dot above
cmpDotAbove["G"] := "{U+0120}"  ; (Ġ) G with dot above
cmpDotAbove["h"] := "{U+1E23}"  ; (ḣ) h with dot above
cmpDotAbove["H"] := "{U+1E22}"  ; (Ḣ) H with dot above
cmpDotAbove["i"] := "{U+0131}"  ; (ı) dotless i (Turkish, Azerbaijani)
cmpDotAbove["I"] := "{U+0130}"  ; (İ) I with dot above (Turkish, Azerbaijani)
cmpDotAbove["j"] := "{U+0237}"  ; (ȷ) dotless j
cmpDotAbove["l"] := "{U+0140}"  ; (ŀ) l with middle dot
cmpDotAbove["L"] := "{U+013F}"  ; (Ŀ) L with middle dot
cmpDotAbove["m"] := "{U+1E41}"  ; (ṁ) m with dot above
cmpDotAbove["M"] := "{U+1E40}"  ; (Ṁ) M with dot above
cmpDotAbove["n"] := "{U+1E45}"  ; (ṅ) n with dot above
cmpDotAbove["N"] := "{U+1E44}"  ; (Ṅ) N with dot above
cmpDotAbove["o"] := "{U+022F}"  ; (ȯ) o with dot above
cmpDotAbove["O"] := "{U+022E}"  ; (Ȯ) O with dot above
cmpDotAbove["p"] := "{U+1E57}"  ; (ṗ) p with dot above
cmpDotAbove["P"] := "{U+1E56}"  ; (Ṗ) P with dot above
cmpDotAbove["q"] := "{U+1E9B}"  ; (ẛ) long s with dot above
cmpDotAbove["r"] := "{U+1E59}"  ; (ṙ) r with dot above
cmpDotAbove["R"] := "{U+1E58}"  ; (Ṙ) R with dot above
cmpDotAbove["s"] := "{U+1E61}"  ; (ṡ) s with dot above
cmpDotAbove["S"] := "{U+1E60}"  ; (Ṡ) S with dot above
cmpDotAbove["t"] := "{U+1E6B}"  ; (ṫ) t with dot above
cmpDotAbove["T"] := "{U+1E6A}"  ; (Ṫ) T with dot above
cmpDotAbove["u"] := "{U+016F}"  ; (ů) u with ring above
cmpDotAbove["U"] := "{U+016E}"  ; (Ů) U with ring above
cmpDotAbove["w"] := "{U+1E87}"  ; (ẇ) w with dot above
cmpDotAbove["W"] := "{U+1E86}"  ; (Ẇ) W with dot above
cmpDotAbove["x"] := "{U+1E8B}"  ; (ẋ) x with dot above
cmpDotAbove["X"] := "{U+1E8A}"  ; (Ẋ) X with dot above
cmpDotAbove["y"] := "{U+1E8F}"  ; (ẏ) y with dot above
cmpDotAbove["Y"] := "{U+1E8E}"  ; (Ẏ) Y with dot above
cmpDotAbove["z"] := "{U+017C}"  ; (ż) z with dot above
cmpDotAbove["Z"] := "{U+017B}"  ; (Ż) Z with dot above


; Compose :  Ring Above (o)

global cmpRingAbove := Map()
cmpRingAbove["a"] := "{U+00E5}"  ; (å) a with ring above
cmpRingAbove["A"] := "{U+00C5}"  ; (Å) A with ring above
cmpRingAbove["u"] := "{U+016F}"  ; (ů) u with ring above
cmpRingAbove["U"] := "{U+016E}"  ; (Ů) U with ring above
cmpRingAbove["w"] := "{U+1E98}"  ; (ẘ) w with ring above
cmpRingAbove["y"] := "{U+1E99}"  ; (ẙ) y with ring above


; Compose :  Macron and Stroke (-)

global cmpMacronStroke := Map()
cmpMacronStroke["a"] := "{U+0101}"  ; (ā) a with macron
cmpMacronStroke["A"] := "{U+0100}"  ; (Ā) A with macron
cmpMacronStroke["b"] := "{U+0180}"  ; (ƀ) b with stroke
cmpMacronStroke["B"] := "{U+0243}"  ; (Ƀ) B with stroke
cmpMacronStroke["d"] := "{U+0111}"  ; (đ) d with stroke
cmpMacronStroke["D"] := "{U+0110}"  ; (Đ) D with stroke
cmpMacronStroke["e"] := "{U+0113}"  ; (ē) e with macron
cmpMacronStroke["E"] := "{U+0112}"  ; (Ē) E with macron
cmpMacronStroke["g"] := "{U+01E5}"  ; (ǥ) g with stroke (Skolt Sami)
cmpMacronStroke["G"] := "{U+01E4}"  ; (Ǥ) G with stroke (Skolt Sami)
cmpMacronStroke["h"] := "{U+0127}"  ; (ħ) h with stroke (Maltese)
cmpMacronStroke["H"] := "{U+0126}"  ; (Ħ) H with stroke (Maltese)
cmpMacronStroke["i"] := "{U+012B}"  ; (ī) i with macron
cmpMacronStroke["I"] := "{U+012A}"  ; (Ī) I with macron
cmpMacronStroke["j"] := "{U+0249}"  ; (ɉ) j with stroke
cmpMacronStroke["J"] := "{U+0248}"  ; (Ɉ) J with stroke
cmpMacronStroke["l"] := "{U+0142}"  ; (ł) l with stroke
cmpMacronStroke["L"] := "{U+0141}"  ; (Ł) L with stroke
cmpMacronStroke["o"] := "{U+014D}"  ; (ō) o with macron
cmpMacronStroke["O"] := "{U+014C}"  ; (Ō) O with macron
cmpMacronStroke["p"] := "{U+1D7D}"  ; (ᵽ) p with stroke
cmpMacronStroke["P"] := "{U+2C63}"  ; (Ᵽ) P with stroke
cmpMacronStroke["q"] := "{U+01ED}"  ; (ǭ) o with ogonek and macron
cmpMacronStroke["Q"] := "{U+01EC}"  ; (Ǭ) O with ogonek and macron
cmpMacronStroke["r"] := "{U+024D}"  ; (ɍ) r with stroke
cmpMacronStroke["R"] := "{U+024C}"  ; (Ɍ) R with stroke
cmpMacronStroke["t"] := "{U+0167}"  ; (ŧ) t with stroke
cmpMacronStroke["T"] := "{U+0166}"  ; (Ŧ) T with stroke
cmpMacronStroke["u"] := "{U+016B}"  ; (ū) u with macron
cmpMacronStroke["U"] := "{U+016A}"  ; (Ū) U with macron
cmpMacronStroke["y"] := "{U+0233}"  ; (ȳ) y with macron
cmpMacronStroke["Y"] := "{U+0232}"  ; (Ȳ) Y with macron
cmpMacronStroke["z"] := "{U+01B6}"  ; (ƶ) z with stroke
cmpMacronStroke["Z"] := "{U+01B5}"  ; (Ƶ) Z with stroke


; Compose :  Macron and Stroke (additional) (_)

global cmpMacronStrokeAdd := Map()
cmpMacronStrokeAdd["f"] := "{U+1E9D}"  ; (ẝ) long s with high stroke
cmpMacronStrokeAdd["g"] := "{U+1E21}"  ; (ḡ) g with macron
cmpMacronStrokeAdd["G"] := "{U+1E20}"  ; (Ḡ) G with macron
cmpMacronStrokeAdd["i"] := "{U+0268}"  ; (ɨ) i with stroke
cmpMacronStrokeAdd["I"] := "{U+0197}"  ; (Ɨ) I with stroke
cmpMacronStrokeAdd["l"] := "{U+019A}"  ; (ƚ) l with bar
cmpMacronStrokeAdd["L"] := "{U+023D}"  ; (Ƚ) L with bar
cmpMacronStrokeAdd["o"] := "{U+0275}"  ; (ɵ) barred o
cmpMacronStrokeAdd["O"] := "{U+019F}"  ; (Ɵ) O with middle tilde
cmpMacronStrokeAdd["q"] := "{U+01E3}"  ; (ǣ) ae with macron
cmpMacronStrokeAdd["Q"] := "{U+01E2}"  ; (Ǣ) AE with macron
cmpMacronStrokeAdd["u"] := "{U+0289}"  ; (ʉ) u with bar
cmpMacronStrokeAdd["U"] := "{U+0244}"  ; (Ʉ) U with bar
cmpMacronStrokeAdd["y"] := "{U+024F}"  ; (ɏ) y with stroke
cmpMacronStrokeAdd["Y"] := "{U+024E}"  ; (Ɏ) Y with stroke


; Compose :  Oblique/Diagonal Stroke (/)

global cmpStroke := Map()
cmpStroke["a"] := "{U+2C65}"  ; (ⱥ) a with stroke
cmpStroke["A"] := "{U+023A}"  ; (Ⱥ) A with stroke
cmpStroke["c"] := "{U+023C}"  ; (ȼ) c with stroke
cmpStroke["C"] := "{U+023B}"  ; (Ȼ) C with stroke
cmpStroke["e"] := "{U+0247}"  ; (ɇ) e with stroke
cmpStroke["E"] := "{U+0246}"  ; (Ɇ) E with stroke
cmpStroke["f"] := "{U+1E9C}"  ; (ẜ) long s with diagonal stroke
cmpStroke["g"] := "{U+A7A1}"  ; (ꞡ) g with oblique stroke
cmpStroke["G"] := "{U+A7A0}"  ; (Ꞡ) G with oblique stroke
cmpStroke["k"] := "{U+A7A3}"  ; (ꞣ) k with oblique stroke
cmpStroke["K"] := "{U+A7A2}"  ; (Ꞣ) K with oblique stroke
cmpStroke["l"] := "{U+0142}"  ; (ł) l with stroke
cmpStroke["L"] := "{U+0141}"  ; (Ł) L with stroke
cmpStroke["n"] := "{U+A7A5}"  ; (ꞥ) n with oblique stroke
cmpStroke["N"] := "{U+A7A4}"  ; (Ꞥ) N with oblique stroke
cmpStroke["o"] := "{U+00F8}"  ; (ø) o with stroke
cmpStroke["O"] := "{U+00D8}"  ; (Ø) O with stroke
cmpStroke["r"] := "{U+A7A7}"  ; (ꞧ) r with oblique stroke
cmpStroke["R"] := "{U+A7A6}"  ; (Ꞧ) R with oblique stroke
cmpStroke["s"] := "{U+A7A9}"  ; (ꞩ) s with oblique stroke
cmpStroke["S"] := "{U+A7A8}"  ; (Ꞩ) S with oblique stroke
cmpStroke["t"] := "{U+2C66}"  ; (ⱦ) t with stroke
cmpStroke["T"] := "{U+023E}"  ; (Ⱦ) T with stroke


; Compose :  Breve and Special Letters (b)

global cmpBreveSpecial := Map()
cmpBreveSpecial["a"] := "{U+0103}"  ; (ă) a with breve
cmpBreveSpecial["A"] := "{U+0102}"  ; (Ă) A with breve
cmpBreveSpecial["d"] := "{U+0256}"  ; (ɖ) small letter d with tail
cmpBreveSpecial["D"] := "{U+0189}"  ; (Ɖ) capital letter African D
cmpBreveSpecial["e"] := "{U+0115}"  ; (ĕ) e with breve
cmpBreveSpecial["E"] := "{U+0114}"  ; (Ĕ) E with breve
cmpBreveSpecial["f"] := "{U+0259}"  ; (ə) small letter schwa (Azerbaijani)
cmpBreveSpecial["F"] := "{U+018F}"  ; (Ə) capital letter schwa (Azerbaijani)
cmpBreveSpecial["g"] := "{U+011F}"  ; (ğ) g with breve
cmpBreveSpecial["G"] := "{U+011E}"  ; (Ğ) G with breve
cmpBreveSpecial["i"] := "{U+012D}"  ; (ĭ) i with breve
cmpBreveSpecial["I"] := "{U+012C}"  ; (Ĭ) I with breve
cmpBreveSpecial["o"] := "{U+014F}"  ; (ŏ) o with breve
cmpBreveSpecial["O"] := "{U+014E}"  ; (Ŏ) O with breve
cmpBreveSpecial["s"] := "{U+0219}"  ; (ș) s with comma below (Romanian)
cmpBreveSpecial["S"] := "{U+0218}"  ; (Ș) S with comma below (Romanian)
cmpBreveSpecial["t"] := "{U+021B}"  ; (ț) t with comma below (Romanian)
cmpBreveSpecial["T"] := "{U+021A}"  ; (Ț) T with comma below (Romanian)
cmpBreveSpecial["u"] := "{U+016D}"  ; (ŭ) u with breve
cmpBreveSpecial["U"] := "{U+016C}"  ; (Ŭ) U with breve
cmpBreveSpecial["w"] := "{U+01BF}"  ; (ƿ) small letter wynn
cmpBreveSpecial["W"] := "{U+01F7}"  ; (Ƿ) capital letter wynn
cmpBreveSpecial["y"] := "{U+021D}"  ; (ȝ) small letter yogh
cmpBreveSpecial["Y"] := "{U+021C}"  ; (Ȝ) capital letter yogh
cmpBreveSpecial["3"] := "{U+0292}"  ; (ʒ) small letter ezh
cmpBreveSpecial["#"] := "{U+01B7}"  ; (Ʒ) capital letter ezh


; Compose :  Double Acute Accent (=)

global cmpDoubleAcute := Map()
cmpDoubleAcute["o"] := "{U+0151}"  ; (ő) o with double acute
cmpDoubleAcute["O"] := "{U+0150}"  ; (Ő) O with double acute
cmpDoubleAcute["u"] := "{U+0171}"  ; (ű) u with double acute
cmpDoubleAcute["U"] := "{U+0170}"  ; (Ű) U with double acute


; Compose :  Hook and Horn (h)

global cmpSmallH := Map()
cmpSmallH["b"] := "{U+0253}"  ; (ɓ) b with hook
cmpSmallH["B"] := "{U+0181}"  ; (Ɓ) B with hook
cmpSmallH["c"] := "{U+0188}"  ; (ƈ) c with hook
cmpSmallH["C"] := "{U+0187}"  ; (Ƈ) C with hook
cmpSmallH["d"] := "{U+0257}"  ; (ɗ) d with hook
cmpSmallH["D"] := "{U+018A}"  ; (Ɗ) D with hook
cmpSmallH["e"] := "{U+025A}"  ; (ɚ) small letter schwa with hook
cmpSmallH["f"] := "{U+0192}"  ; (ƒ) f with hook
cmpSmallH["F"] := "{U+0191}"  ; (Ƒ) F with hook
cmpSmallH["g"] := "{U+0260}"  ; (ɠ) g with hook
cmpSmallH["G"] := "{U+0193}"  ; (Ɠ) G with hook
cmpSmallH["h"] := "{U+0266}"  ; (ɦ) h with hook
cmpSmallH["H"] := "{U+A7AA}"  ; (Ɦ) H with hook
cmpSmallH["j"] := "{U+0267}"  ; (ɧ) small letter heng with hook
cmpSmallH["k"] := "{U+0199}"  ; (ƙ) k with hook
cmpSmallH["K"] := "{U+0198}"  ; (Ƙ) K with hook
cmpSmallH["l"] := "{U+026C}"  ; (ɬ) l with belt
cmpSmallH["L"] := "{U+A7AD}"  ; (Ɬ) L with belt
cmpSmallH["m"] := "{U+0271}"  ; (ɱ) m with hook
cmpSmallH["M"] := "{U+2C6E}"  ; (Ɱ) M with hook
cmpSmallH["n"] := "{U+0272}"  ; (ɲ) n with left hook
cmpSmallH["N"] := "{U+019D}"  ; (Ɲ) N with left hook
cmpSmallH["o"] := "{U+01A1}"  ; (ơ) o with horn
cmpSmallH["O"] := "{U+01A0}"  ; (Ơ) O with horn
cmpSmallH["p"] := "{U+01A5}"  ; (ƥ) p with hook
cmpSmallH["P"] := "{U+01A4}"  ; (Ƥ) P with hook
cmpSmallH["q"] := "{U+024B}"  ; (ɋ) q with hook tail
cmpSmallH["Q"] := "{U+024A}"  ; (Ɋ) Q with hook tail
cmpSmallH["r"] := "{U+027D}"  ; (ɽ) r with tail
cmpSmallH["R"] := "{U+2C64}"  ; (Ɽ) R with tail
cmpSmallH["s"] := "{U+0282}"  ; (ʂ) s with hook
cmpSmallH["t"] := "{U+01AD}"  ; (ƭ) t with hook
cmpSmallH["T"] := "{U+01AC}"  ; (Ƭ) T with hook
cmpSmallH["u"] := "{U+01B0}"  ; (ư) u with horn
cmpSmallH["U"] := "{U+01AF}"  ; (Ư) U with horn
cmpSmallH["v"] := "{U+028B}"  ; (ʋ) v with hook
cmpSmallH["V"] := "{U+01B2}"  ; (Ʋ) V with hook
cmpSmallH["w"] := "{U+2C73}"  ; (ⱳ) w with hook
cmpSmallH["W"] := "{U+2C72}"  ; (Ⱳ) W with hook
cmpSmallH["y"] := "{U+01B4}"  ; (ƴ) y with hook
cmpSmallH["Y"] := "{U+01B3}"  ; (Ƴ) Y with hook
cmpSmallH["z"] := "{U+0225}"  ; (ȥ) z with hook
cmpSmallH["Z"] := "{U+0224}"  ; (Ȥ) Z with hook


; Compose :  Retroflex Hook, Right Hook, Crossed-Tail and Variations (f)

global cmpSmallF := Map()
cmpSmallF["d"] := "{U+1D91}"  ; (ᶑ) d with hook and tail
cmpSmallF["e"] := "{U+025D}"  ; (ɝ) small letter reversed open e with hook
cmpSmallF["f"] := "{U+1D94}"  ; (ᶔ) small letter reversed open e with retroflex hook
cmpSmallF["g"] := "{U+AB36}"  ; (ꬶ) small letter script g with crossed-tail
cmpSmallF["h"] := "{U+A727}"  ; (ꜧ) small letter heng
cmpSmallF["H"] := "{U+A726}"  ; (Ꜧ) capital letter heng
cmpSmallF["j"] := "{U+029D}"  ; (ʝ) j with crossed-tail
cmpSmallF["J"] := "{U+A7B2}"  ; (Ʝ) J with crossed-tail
cmpSmallF["l"] := "{U+026D}"  ; (ɭ) l with retroflex hook
cmpSmallF["n"] := "{U+0273}"  ; (ɳ) n with retroflex hook
cmpSmallF["q"] := "{U+02A0}"  ; (ʠ) q with hook
cmpSmallF["r"] := "{U+027E}"  ; (ɾ) r with fishhook
cmpSmallF["t"] := "{U+0288}"  ; (ʈ) t with retroflex hook
cmpSmallF["T"] := "{U+01AE}"  ; (Ʈ) T with retroflex hook
cmpSmallF["v"] := "{U+2C71}"  ; (ⱱ) v with right hook
cmpSmallF["z"] := "{U+0290}"  ; (ʐ) z with retroflex hook


; Compose :  Latin Greek Letters and Variations (l)

global cmpSmallL := Map()
cmpSmallL["a"] := "{U+0251}"  ; (ɑ) Latin small letter alpha
cmpSmallL["A"] := "{U+2C6D}"  ; (Ɑ) Latin capital letter alpha
cmpSmallL["b"] := "{U+025E}"  ; (ɞ) small letter closed reversed open e
cmpSmallL["d"] := "{U+1E9F}"  ; (ẟ) Latin small letter delta
cmpSmallL["e"] := "{U+025B}"  ; (ɛ) small letter open e (Latin small epsilon)
cmpSmallL["E"] := "{U+0190}"  ; (Ɛ) capital letter open E (Latin capital epsilon)
cmpSmallL["f"] := "{U+0278}"  ; (ɸ) Latin small letter phi
cmpSmallL["g"] := "{U+0261}"  ; (ɡ) small letter script g
cmpSmallL["G"] := "{U+A7AC}"  ; (Ɡ) capital letter script G
cmpSmallL["h"] := "{U+01A3}"  ; (ƣ) small letter gha
cmpSmallL["H"] := "{U+01A2}"  ; (Ƣ) capital letter gha
cmpSmallL["i"] := "{U+0269}"  ; (ɩ) Latin small letter iota
cmpSmallL["I"] := "{U+0196}"  ; (Ɩ) Latin capital letter iota
cmpSmallL["j"] := "{U+0263}"  ; (ɣ) Latin small letter gamma
cmpSmallL["J"] := "{U+0194}"  ; (Ɣ) Latin capital letter gamma
cmpSmallL["k"] := "{U+0138}"  ; (ĸ) small letter kra
cmpSmallL["l"] := "{U+019B}"  ; (ƛ) Latin small letter lambda with stroke (barred lambda)
cmpSmallL["m"] := "{U+0270}"  ; (ɰ) small letter turned m with long leg
cmpSmallL["n"] := "{U+019E}"  ; (ƞ) small letter n with long right leg
cmpSmallL["N"] := "{U+0220}"  ; (Ƞ) capital letter N with long right leg
cmpSmallL["o"] := "{U+0254}"  ; (ɔ) small letter open o
cmpSmallL["O"] := "{U+0186}"  ; (Ɔ) capital letter open O
cmpSmallL["q"] := "{U+0277}"  ; (ɷ) Latin small letter closed omega
cmpSmallL["s"] := "{U+0283}"  ; (ʃ) Latin small letter esh
cmpSmallL["S"] := "{U+01A9}"  ; (Ʃ) Latin capital letter esh
cmpSmallL["u"] := "{U+028A}"  ; (ʊ) Latin small letter upsilon
cmpSmallL["U"] := "{U+01B1}"  ; (Ʊ) Latin capital letter upsilon
cmpSmallL["3"] := "{U+01B9}"  ; (ƹ) Latin small letter ezh reversed
cmpSmallL["#"] := "{U+01B8}"  ; (Ƹ) Latin capital letter ezh reversed
cmpSmallL["8"] := "{U+0223}"  ; (ȣ) small letter ou
cmpSmallL["*"] := "{U+0222}"  ; (Ȣ) capital letter OU
cmpSmallL["7"] := "{U+0242}"  ; (ɂ) small letter glottal stop
cmpSmallL["&"] := "{U+0241}"  ; (Ɂ) capital letter glottal stop
cmpSmallL["?"] := "{U+0294}"  ; (ʔ) unicase letter glottal stop


; Compose :  Turned Letters (r)

global cmpSmallR := Map()
cmpSmallR["a"] := "{U+0250}"  ; (ɐ) small letter turned a
cmpSmallR["A"] := "{U+2C6F}"  ; (Ɐ) capital letter turned A
cmpSmallR["b"] := "{U+025C}"  ; (ɜ) small letter reversed open e
cmpSmallR["B"] := "{U+A7AB}"  ; (Ɜ) capital letter reversed open E
cmpSmallR["d"] := "{U+018D}"  ; (ƍ) Latin small letter turned delta
cmpSmallR["e"] := "{U+01DD}"  ; (ǝ) small letter turned e
cmpSmallR["E"] := "{U+018E}"  ; (Ǝ) capital letter reversed E
cmpSmallR["f"] := "{U+0258}"  ; (ɘ) small letter reversed e
cmpSmallR["g"] := "{U+1D77}"  ; (ᵷ) small letter turned g
cmpSmallR["G"] := "{U+2141}"  ; (⅁) capital letter turned G
cmpSmallR["h"] := "{U+0265}"  ; (ɥ) small letter turned h
cmpSmallR["H"] := "{U+A78D}"  ; (Ɥ) capital letter turned H
cmpSmallR["i"] := "{U+1D09}"  ; (ᴉ) small letter turned i
cmpSmallR["k"] := "{U+029E}"  ; (ʞ) small letter turned k
cmpSmallR["K"] := "{U+A7B0}"  ; (Ʞ) capital letter turned K
cmpSmallR["m"] := "{U+026F}"  ; (ɯ) small letter turned m
cmpSmallR["M"] := "{U+019C}"  ; (Ɯ) capital letter turned M
cmpSmallR["o"] := "{U+0264}"  ; (ɤ) small letter ram's horn (baby gamma)
cmpSmallR["q"] := "{U+0252}"  ; (ɒ) Latin small letter turned alpha
cmpSmallR["Q"] := "{U+2C70}"  ; (Ɒ) Latin capital letter turned alpha
cmpSmallR["r"] := "{U+0279}"  ; (ɹ) small letter turned r
cmpSmallR["s"] := "{U+023F}"  ; (ȿ) small letter s with swash tail
cmpSmallR["S"] := "{U+2C7E}"  ; (Ȿ) capital letter S with swash tail
cmpSmallR["t"] := "{U+0287}"  ; (ʇ) small letter turned t
cmpSmallR["T"] := "{U+A7B1}"  ; (Ʇ) small letter turned T
cmpSmallR["v"] := "{U+028C}"  ; (ʌ) small letter turned v
cmpSmallR["V"] := "{U+0245}"  ; (Ʌ) capital letter turned V
cmpSmallR["w"] := "{U+028D}"  ; (ʍ) small letter turned w
cmpSmallR["y"] := "{U+028E}"  ; (ʎ) small letter turned y
cmpSmallR["z"] := "{U+0240}"  ; (ɀ) small letter z with swash tail
cmpSmallR["Z"] := "{U+2C7F}"  ; (Ɀ) capital letter Z with swash tail


; Compose :  Currency Symbols ($)

global cmpCurrency := Map()
cmpCurrency["a"] := "{U+058F}"  ; (֏) Armenian dram
cmpCurrency["A"] := "{U+20B3}"  ; (₳) Argentine austral
cmpCurrency["b"] := "{U+20BF}"  ; (₿) bitcoin
cmpCurrency["B"] := "{U+0E3F}"  ; (฿) Thai baht
cmpCurrency["c"] := "{U+20A1}"  ; (₡) Costa Rican colón
cmpCurrency["C"] := "{U+20B5}"  ; (₵) Ghanaian cedi
cmpCurrency["d"] := "{U+20AB}"  ; (₫) Vietnamese dong
cmpCurrency["D"] := "{U+20AF}"  ; (₯) Greek drachma
cmpCurrency["e"] := "{U+20AC}"  ; (€) euro sign
cmpCurrency["E"] := "{U+20A0}"  ; (₠) euro-currency sign
cmpCurrency["f"] := "{U+20A3}"  ; (₣) French franc
cmpCurrency["F"] := "{U+20A3}"  ; (₣) French franc
cmpCurrency["g"] := "{U+20B2}"  ; (₲) Paraguayan guaraní
cmpCurrency["G"] := "{U+20BE}"  ; (₾) Georgian lari
cmpCurrency["h"] := "{U+20B4}"  ; (₴) Ukrainian hryvnia
cmpCurrency["H"] := "{U+20B4}"  ; (₴) Ukrainian hryvnia
cmpCurrency["i"] := "{U+20A4}"  ; (₤) lira
cmpCurrency["I"] := "{U+20B6}"  ; (₶) livre tournois
cmpCurrency["k"] := "{U+20AD}"  ; (₭) Laotian kip
cmpCurrency["K"] := "{U+20AD}"  ; (₭) Laotian kip
cmpCurrency["l"] := "{U+20BA}"  ; (₺) Turkish lira
cmpCurrency["L"] := "{U+00A3}"  ; (£) pound sign
cmpCurrency["m"] := "{U+20BC}"  ; (₼) Azerbaijani manat
cmpCurrency["M"] := "{U+20A5}"  ; (₥) mill sign
cmpCurrency["n"] := "{U+20A6}"  ; (₦) Nigerian naira
cmpCurrency["N"] := "{U+20BB}"  ; (₻) Nordic mark
cmpCurrency["o"] := "{U+00A2}"  ; (¢) cent sign (dollar)
cmpCurrency["p"] := "{U+20B1}"  ; (₱) Philippine peso
cmpCurrency["P"] := "{U+20A7}"  ; (₧) Spanish pesetas
cmpCurrency["r"] := "{U+20B9}"  ; (₹) Indian rupee
cmpCurrency["R"] := "{U+20BD}"  ; (₽) Russian ruble
cmpCurrency["s"] := "{U+20AA}"  ; (₪) Israeli new shekel
cmpCurrency["S"] := "{U+20B7}"  ; (₷) spesmilo
cmpCurrency["t"] := "{U+20AE}"  ; (₮) Mongolian tögrög (tugrik)
cmpCurrency["T"] := "{U+20B8}"  ; (₸) Kazakh tenge
cmpCurrency["u"] := "{U+20A8}"  ; (₨) rupee sign
cmpCurrency["U"] := "{U+20A2}"  ; (₢) Brazilian cruzeiro
cmpCurrency["w"] := "{U+20A9}"  ; (₩) South Korean won
cmpCurrency["W"] := "{U+20A9}"  ; (₩) South Korean won
cmpCurrency["x"] := "{U+00A4}"  ; (¤) currency sign
cmpCurrency["y"] := "{U+00A5}"  ; (¥) yen sign
cmpCurrency["Y"] := "{U+00A5}"  ; (¥) yen sign


; Compose :  Greek Alphabet (g)

global cmpGreek := Map()
cmpGreek["a"] := "{U+03B1}"  ; (α) Greek small alpha
cmpGreek["A"] := "{U+0391}"  ; (Α) Greek capital alpha
cmpGreek["b"] := "{U+03B2}"  ; (β) Greek small beta
cmpGreek["B"] := "{U+0392}"  ; (Β) Greek capital beta
cmpGreek["v"] := "{U+03B2}"  ; (β) Greek small beta
cmpGreek["V"] := "{U+0392}"  ; (Β) Greek capital beta
cmpGreek["g"] := "{U+03B3}"  ; (γ) Greek small gamma
cmpGreek["G"] := "{U+0393}"  ; (Γ) Greek capital gamma
cmpGreek["d"] := "{U+03B4}"  ; (δ) Greek small delta
cmpGreek["D"] := "{U+0394}"  ; (Δ) Greek capital delta
cmpGreek["e"] := "{U+03B5}"  ; (ε) Greek small epsilon
cmpGreek["E"] := "{U+0395}"  ; (Ε) Greek capital epsilon
cmpGreek["z"] := "{U+03B6}"  ; (ζ) Greek small zeta
cmpGreek["Z"] := "{U+0396}"  ; (Ζ) Greek capital zeta
cmpGreek["h"] := "{U+03B7}"  ; (η) Greek small eta
cmpGreek["H"] := "{U+0397}"  ; (Η) Greek capital eta
cmpGreek["j"] := "{U+03B8}"  ; (θ) Greek small theta
cmpGreek["J"] := "{U+0398}"  ; (Θ) Greek capital theta
cmpGreek["i"] := "{U+03B9}"  ; (ι) Greek small iota
cmpGreek["I"] := "{U+0399}"  ; (Ι) Greek capital iota
cmpGreek["k"] := "{U+03BA}"  ; (κ) Greek small kappa
cmpGreek["K"] := "{U+039A}"  ; (Κ) Greek capital kappa
cmpGreek["l"] := "{U+03BB}"  ; (λ) Greek small lambda
cmpGreek["L"] := "{U+039B}"  ; (Λ) Greek capital lambda
cmpGreek["m"] := "{U+03BC}"  ; (μ) Greek small mu
cmpGreek["M"] := "{U+039C}"  ; (Μ) Greek capital mu
cmpGreek["n"] := "{U+03BD}"  ; (ν) Greek small nu
cmpGreek["N"] := "{U+039D}"  ; (Ν) Greek capital nu
cmpGreek["x"] := "{U+03BE}"  ; (ξ) Greek small xi
cmpGreek["X"] := "{U+039E}"  ; (Ξ) Greek capital xi
cmpGreek["o"] := "{U+03BF}"  ; (ο) Greek small omicron
cmpGreek["O"] := "{U+039F}"  ; (Ο) Greek capital omicron
cmpGreek["p"] := "{U+03C0}"  ; (π) Greek small pi
cmpGreek["P"] := "{U+03A0}"  ; (Π) Greek capital pi
cmpGreek["r"] := "{U+03C1}"  ; (ρ) Greek small rho
cmpGreek["R"] := "{U+03A1}"  ; (Ρ) Greek capital rho
cmpGreek["s"] := "{U+03C3}"  ; (σ) Greek small sigma
cmpGreek[","] := "{U+03C2}"  ; (ς) Greek small final sigma
cmpGreek["S"] := "{U+03A3}"  ; (Σ) Greek capital sigma
cmpGreek["t"] := "{U+03C4}"  ; (τ) Greek small tau
cmpGreek["T"] := "{U+03A4}"  ; (Τ) Greek capital tau
cmpGreek["u"] := "{U+03C5}"  ; (υ) Greek small upsilon
cmpGreek["U"] := "{U+03A5}"  ; (Υ) Greek capital upsilon
cmpGreek["y"] := "{U+03C5}"  ; (υ) Greek small upsilon
cmpGreek["Y"] := "{U+03A5}"  ; (Υ) Greek capital upsilon
cmpGreek["f"] := "{U+03C6}"  ; (φ) Greek small phi
cmpGreek["F"] := "{U+03A6}"  ; (Φ) Greek capital phi
cmpGreek["c"] := "{U+03C7}"  ; (χ) Greek small chi
cmpGreek["C"] := "{U+03A7}"  ; (Χ) Greek capital chi
cmpGreek["w"] := "{U+03C8}"  ; (ψ) Greek small psi
cmpGreek["W"] := "{U+03A8}"  ; (Ψ) Greek capital psi
cmpGreek["q"] := "{U+03C9}"  ; (ω) Greek small omega
cmpGreek["Q"] := "{U+03A9}"  ; (Ω) Greek capital omega


; Compose :  Superscript Characters (p)

global cmpSuperscript := Map()
cmpSuperscript["1"] := "{U+00B9}"  ; (¹) superscript 1
cmpSuperscript["2"] := "{U+00B2}"  ; (²) superscript 2
cmpSuperscript["3"] := "{U+00B3}"  ; (³) superscript 3
cmpSuperscript["4"] := "{U+2074}"  ; (⁴) superscript 4
cmpSuperscript["5"] := "{U+2075}"  ; (⁵) superscript 5
cmpSuperscript["6"] := "{U+2076}"  ; (⁶) superscript 6
cmpSuperscript["7"] := "{U+2077}"  ; (⁷) superscript 7
cmpSuperscript["8"] := "{U+2078}"  ; (⁸) superscript 8
cmpSuperscript["9"] := "{U+2079}"  ; (⁹) superscript 9
cmpSuperscript["0"] := "{U+2070}"  ; (⁰) superscript 0
cmpSuperscript["i"] := "{U+2071}"  ; (ⁱ) superscript i
cmpSuperscript["n"] := "{U+207F}"  ; (ⁿ) superscript n
cmpSuperscript["+"] := "{U+207A}"  ; (⁺) superscript +
cmpSuperscript["-"] := "{U+207B}"  ; (⁻) superscript -
cmpSuperscript["="] := "{U+207C}"  ; (⁼) superscript =
cmpSuperscript["("] := "{U+207D}"  ; (⁽) superscript (
cmpSuperscript[")"] := "{U+207E}"  ; (⁾) superscript )


; Compose :  Subscript Characters (u)

global cmpSubscript := Map()
cmpSubscript["1"] := "{U+2081}"  ; (₁) subscript 1
cmpSubscript["2"] := "{U+2082}"  ; (₂) subscript 2
cmpSubscript["3"] := "{U+2083}"  ; (₃) subscript 3
cmpSubscript["4"] := "{U+2084}"  ; (₄) subscript 4
cmpSubscript["5"] := "{U+2085}"  ; (₅) subscript 5
cmpSubscript["6"] := "{U+2086}"  ; (₆) subscript 6
cmpSubscript["7"] := "{U+2087}"  ; (₇) subscript 7
cmpSubscript["8"] := "{U+2088}"  ; (₈) subscript 8
cmpSubscript["9"] := "{U+2089}"  ; (₉) subscript 9
cmpSubscript["0"] := "{U+2080}"  ; (₀) subscript 0
cmpSubscript["a"] := "{U+2090}"  ; (ₐ) subscript a
cmpSubscript["b"] := "{U+1D66}"  ; (ᵦ) subscript beta
cmpSubscript["c"] := "{U+1D6A}"  ; (ᵪ) subscript chi
cmpSubscript["e"] := "{U+2091}"  ; (ₑ) subscript e
cmpSubscript["E"] := "{U+2094}"  ; (ₔ) subscript schwa
cmpSubscript["f"] := "{U+1D69}"  ; (ᵩ) subscript phi
cmpSubscript["g"] := "{U+1D67}"  ; (ᵧ) subscript gamma
cmpSubscript["h"] := "{U+2095}"  ; (ₕ) subscript h
cmpSubscript["i"] := "{U+1D62}"  ; (ᵢ) subscript i
cmpSubscript["j"] := "{U+2C7C}"  ; (ⱼ) subscript j
cmpSubscript["k"] := "{U+2096}"  ; (ₖ) subscript k
cmpSubscript["l"] := "{U+2097}"  ; (ₗ) subscript l
cmpSubscript["m"] := "{U+2098}"  ; (ₘ) subscript m
cmpSubscript["n"] := "{U+2099}"  ; (ₙ) subscript n
cmpSubscript["o"] := "{U+2092}"  ; (ₒ) subscript o
cmpSubscript["p"] := "{U+209A}"  ; (ₚ) subscript p
cmpSubscript["r"] := "{U+1D63}"  ; (ᵣ) subscript r
cmpSubscript["R"] := "{U+1D68}"  ; (ᵨ) subscript rho
cmpSubscript["s"] := "{U+209B}"  ; (ₛ) subscript s
cmpSubscript["t"] := "{U+209C}"  ; (ₜ) subscript t
cmpSubscript["u"] := "{U+1D64}"  ; (ᵤ) subscript u
cmpSubscript["v"] := "{U+1D65}"  ; (ᵥ) subscript v
cmpSubscript["x"] := "{U+2093}"  ; (ₓ) subscript x
cmpSubscript["+"] := "{U+208A}"  ; (₊) subscript +
cmpSubscript["-"] := "{U+208B}"  ; (₋) subscript -
cmpSubscript["="] := "{U+208C}"  ; (₌) subscript =
cmpSubscript["("] := "{U+208D}"  ; (₍) subscript (
cmpSubscript[")"] := "{U+208E}"  ; (₎) subscript )


; Compose :  Spacing Characters and Dashes

global cmpSpace := Map()
global cmpQuad := Map()
cmpSpace["1"] := "{U+2004}"  ; three-per-em space
cmpSpace["2"] := "{U+2002}"  ; en space
cmpSpace["3"] := "{U+2003}"  ; em space
cmpSpace["4"] := "{U+2005}"  ; four-per-em space
cmpSpace["5"] := "{U+2008}"  ; punctuation space
cmpSpace["6"] := "{U+2006}"  ; six-per-em space
cmpSpace["7"] := "{U+2009}"  ; thin space
cmpSpace["8"] := "{U+200A}"  ; hair space
cmpSpace["9"] := "{U+2007}"  ; figure space
cmpSpace["0"] := "{U+200B}"  ; zero-width space (ZWSP)
cmpSpace["m"] := "{U+205F}"  ; medium mathematical space (MMSP)
cmpSpace["n"] := "{U+202F}"  ; narrow no-break space (NNBSP)
cmpSpace[" "] := "{U+00A0}"  ; non-breaking space (NBSP)
cmpMacronStroke["2"] := "{U+2013}"  ; (–) en dash
cmpMacronStroke["3"] := "{U+2014}"  ; (—) em dash
cmpMacronStroke["4"] := "{U+2015}"  ; (―) horizontal bar
cmpMacronStroke["5"] := "{U+2010}"  ; (‐) hyphen
cmpMacronStroke["9"] := "{U+2012}"  ; (‒) figure dash
cmpMacronStroke["0"] := "{U+00AD}"  ; (­) soft hyphen (SHY)
cmpMacronStroke["-"] := "{U+2011}"  ; (‑) non-breaking hyphen
cmpQuad["2"] := "{U+2000}"  ; en quad
cmpQuad["3"] := "{U+2001}"  ; em quad


; Compose :  Arrows and Pointing Triangles

global cmpArrow := Map()
cmpArrow["w"] := "{U+25B2}"  ; (▲) black up-pointing triangle
cmpArrow["a"] := "{U+25C0}"  ; (◀) black left-pointing triangle
cmpArrow["s"] := "{U+25BC}"  ; (▼) black down-pointing triangle
cmpArrow["d"] := "{U+25B6}"  ; (▶) black right-pointing triangle
cmpArrow["i"] := "{U+25B3}"  ; (△) white up-pointing triangle
cmpArrow["j"] := "{U+25C1}"  ; (◁) white left-pointing triangle
cmpArrow["k"] := "{U+25BD}"  ; (▽) white down-pointing triangle
cmpArrow["l"] := "{U+25B7}"  ; (▷) white right-pointing triangle
cmpArrow["1"] := "{U+2199}"  ; (↙) south west arrow
cmpArrow["2"] := "{U+2193}"  ; (↓) downwards arrow
cmpArrow["3"] := "{U+2198}"  ; (↘) south east arrow
cmpArrow["4"] := "{U+2190}"  ; (←) leftwards arrow
cmpArrow["5"] := "{U+2195}"  ; (↕) up down arrow
cmpArrow["6"] := "{U+2192}"  ; (→) rightwards arrow
cmpArrow["7"] := "{U+2196}"  ; (↖) north west arrow
cmpArrow["8"] := "{U+2191}"  ; (↑) upwards arrow
cmpArrow["9"] := "{U+2197}"  ; (↗) north east arrow
cmpArrow["0"] := "{U+2194}"  ; (↔) left right arrow
cmpDoubleAcute["1"] := "{U+21D9}"  ; (⇙) south west double arrow
cmpDoubleAcute["2"] := "{U+21D3}"  ; (⇓) downwards double arrow
cmpDoubleAcute["3"] := "{U+21D8}"  ; (⇘) south east double arrow
cmpDoubleAcute["4"] := "{U+21D0}"  ; (⇐) leftwards double arrow
cmpDoubleAcute["5"] := "{U+21D5}"  ; (⇕) up down double arrow
cmpDoubleAcute["6"] := "{U+21D2}"  ; (⇒) rightwards double arrow
cmpDoubleAcute["7"] := "{U+21D6}"  ; (⇖) north west double arrow
cmpDoubleAcute["8"] := "{U+21D1}"  ; (⇑) upwards double arrow
cmpDoubleAcute["9"] := "{U+21D7}"  ; (⇗) north east double arrow
cmpDoubleAcute["0"] := "{U+21D4}"  ; (⇔) left right double arrow


; Compose :  Various Symbols (s)

global cmpSymbols := Map()
cmpSymbols["a"] := "{U+214D}"  ; (⅍) aktieselskab
cmpSymbols["b"] := "{U+203D}"  ; (‽) interrobang
cmpSymbols["B"] := "{U+2E18}"  ; (⸘) inverted interrobang
cmpSymbols["c"] := "{U+2105}"  ; (℅) care of
cmpSymbols["d"] := "{U+22C4}"  ; (⋄) diamond operator
cmpSymbols["e"] := "{U+212E}"  ; (℮) estimated symbol
cmpSymbols["f"] := "{U+2640}"  ; (♀) female sign (Venus)
cmpSymbols["h"] := "{U+2302}"  ; (⌂) house
cmpSymbols["H"] := "{U+2126}"  ; (Ω) ohm sign (backwards compatibility)
cmpSymbols["i"] := "{U+2300}"  ; (⌀) diameter sign
cmpSymbols["l"] := "{U+2113}"  ; (ℓ) script small l
cmpSymbols["L"] := "{U+2112}"  ; (ℒ) Laplace transform
cmpSymbols["m"] := "{U+2642}"  ; (♂) male sign (Mars)
cmpSymbols["M"] := "{U+2120}"  ; (℠) service mark
cmpSymbols["p"] := "{U+211E}"  ; (℞) prescription take (Recipere)
cmpSymbols["P"] := "{U+211E}"  ; (℞) prescription take (Recipere)
cmpSymbols["r"] := "{U+211F}"  ; (℟) response (liturgy)
cmpSymbols["R"] := "{U+211F}"  ; (℟) response (liturgy)
cmpSymbols["v"] := "{U+2123}"  ; (℣) versicle (liturgy)
cmpSymbols["V"] := "{U+2123}"  ; (℣) versicle (liturgy)
cmpSymbols["x"] := "{U+203B}"  ; (※) reference mark
cmpSymbols["2"] := "{U+266B}"  ; (♫) beamed eighth notes
cmpSymbols["3"] := "{U+2042}"  ; (⁂) asterism
cmpSymbols["4"] := "{U+203B}"  ; (※) reference mark
cmpSymbols["8"] := "{U+266A}"  ; (♪) eighth note
cmpSymbols["!"] := "{U+203C}"  ; (‼) double exclamation mark
cmpSymbols["?"] := "{U+2E2E}"  ; (⸮) reversed question mark
cmpSymbols["/"] := "{U+205E}"  ; (⁞) vertical four dots
cmpSymbols["|"] := "{U+00A6}"  ; (¦) broken bar


; Compose :  Math Symbols (m)

global cmpMathSymbols := Map()
cmpMathSymbols["a"] := "{U+2200}"  ; (∀) for all
cmpMathSymbols["A"] := "{U+2200}"  ; (∀) for all
cmpMathSymbols["b"] := "{U+2286}"  ; (⊆) subset of or equal to
cmpMathSymbols["B"] := "{U+2287}"  ; (⊇) superset of or equal to
cmpMathSymbols["c"] := "{U+221D}"  ; (∝) proportional to
cmpMathSymbols["C"] := "{U+2102}"  ; (ℂ) complex numbers
cmpMathSymbols["d"] := "{U+2206}"  ; (∆) increment operator
cmpMathSymbols["D"] := "{U+2207}"  ; (∇) nabla/del operator
cmpMathSymbols["e"] := "{U+2203}"  ; (∃) there exists
cmpMathSymbols["E"] := "{U+2204}"  ; (∄) there does not exist
cmpMathSymbols["f"] := "{U+0192}"  ; (ƒ) f with hook
cmpMathSymbols["F"] := "{U+220E}"  ; (∎) end of proof
cmpMathSymbols["g"] := "{U+2282}"  ; (⊂) subset of
cmpMathSymbols["G"] := "{U+2284}"  ; (⊄) not a subset of
cmpMathSymbols["h"] := "{U+2283}"  ; (⊃) superset of
cmpMathSymbols["H"] := "{U+2285}"  ; (⊅) not a superset of
cmpMathSymbols["I"] := "{U+2111}"  ; (ℑ) imaginary numbers
cmpMathSymbols["j"] := "{U+2245}"  ; (≅) congruent to
cmpMathSymbols["J"] := "{U+2247}"  ; (≇) not congruent to
cmpMathSymbols["k"] := "{U+220B}"  ; (∋) contains as member
cmpMathSymbols["K"] := "{U+220C}"  ; (∌) does not contain as member
cmpMathSymbols["l"] := "{U+2225}"  ; (∥) parallel to
cmpMathSymbols["L"] := "{U+2226}"  ; (∦) not parallel to
cmpMathSymbols["m"] := "{U+2208}"  ; (∈) element of
cmpMathSymbols["M"] := "{U+2209}"  ; (∉) not an element of
cmpMathSymbols["n"] := "{U+00AC}"  ; (¬) not sign
cmpMathSymbols["N"] := "{U+2115}"  ; (ℕ) natural numbers
cmpMathSymbols["o"] := "{U+2218}"  ; (∘) ring operator
cmpMathSymbols["O"] := "{U+2205}"  ; (∅) empty set
cmpMathSymbols["p"] := "{U+2202}"  ; (∂) partial differential
cmpMathSymbols["P"] := "{U+2119}"  ; (ℙ) prime numbers
cmpMathSymbols["Q"] := "{U+211A}"  ; (ℚ) rational numbers
cmpMathSymbols["R"] := "{U+211D}"  ; (ℝ) real numbers
cmpMathSymbols["s"] := "{U+2229}"  ; (∩) set intersection
cmpMathSymbols["S"] := "{U+222B}"  ; (∫) integral symbol
cmpMathSymbols["t"] := "{U+2261}"  ; (≡) identical to
cmpMathSymbols["T"] := "{U+2262}"  ; (≢) not identical to
cmpMathSymbols["u"] := "{U+222A}"  ; (∪) set union
cmpMathSymbols["U"] := "{U+2216}"  ; (∖) set minus
cmpMathSymbols["w"] := "{U+2118}"  ; (℘) Weierstrass elliptic function
cmpMathSymbols["z"] := "{U+21AF}"  ; (↯) downwards zigzag arrow
cmpMathSymbols["Z"] := "{U+2124}"  ; (ℤ) whole numbers
cmpMathSymbols["2"] := "{U+2236}"  ; (∶) ratio symbol
cmpMathSymbols["4"] := "{U+2237}"  ; (∷) proportion sign
cmpMathSymbols["6"] := "{U+2220}"  ; (∠) angle symbol
cmpMathSymbols["9"] := "{U+221F}"  ; (∟) right angle
cmpMathSymbols["0"] := "{U+2221}"  ; (∡) measured angle
cmpMathSymbols[","] := "{U+2219}"  ; (∙) bullet operator
cmpMathSymbols["+"] := "{U+2295}"  ; (⊕) circled plus
cmpMathSymbols["-"] := "{U+2296}"  ; (⊖) circled minus
cmpMathSymbols["*"] := "{U+2297}"  ; (⊗) circled times
cmpMathSymbols["/"] := "{U+2298}"  ; (⊘) circled division slash
cmpMathSymbols["."] := "{U+2299}"  ; (⊙) circled dot operator
cmpMathSymbols["="] := "{U+225D}"  ; (≝) equal to by definition
cmpMathSymbols[";"] := "{U+2235}"  ; (∵) because sign
cmpMathSymbols[":"] := "{U+2234}"  ; (∴) therefore sign
cmpMathSymbols["&"] := "{U+2227}"  ; (∧) logical and
cmpMathSymbols["|"] := "{U+2228}"  ; (∨) logical or


; Compose :  Special Letters/Characters

global cmpCapitalA := Map()
global cmpSmallD := Map()
global cmpCapitalD := Map()
global cmpSmallI := Map()
global cmpCapitalI := Map()
global cmpSmallN := Map()
global cmpCapitalN := Map()
global cmpCapitalO := Map()
global cmpCapitalS := Map()
global cmpSmallT := Map()
global cmpCapitalT := Map()
cmpArrow["e"] := "{U+00E6}"      ; (æ) letter ae
cmpCapitalA["E"] := "{U+00C6}"   ; (Æ) letter AE
cmpSmallD["h"] := "{U+00F0}"     ; (ð) small letter eth
cmpCapitalD["H"] := "{U+00D0}"   ; (Ð) capital letter eth
cmpSmallF["s"] := "{U+017F}"     ; (ſ) small letter long s
cmpSmallI["j"] := "{U+0133}"     ; (ĳ) ligature ij
cmpCapitalI["J"] := "{U+0132}"   ; (Ĳ) ligature IJ
cmpSmallN["g"] := "{U+014B}"     ; (ŋ) small letter eng(ma)
cmpCapitalN["G"] := "{U+014A}"   ; (Ŋ) capital letter eng(ma)
cmpRingAbove["e"] := "{U+0153}"  ; (œ) ligature oe
cmpCapitalO["E"] := "{U+0152}"   ; (Œ) ligature OE
cmpSymbols["s"] := "{U+00DF}"    ; (ß) small sharp s (Eszett)
cmpCapitalS["S"] := "{U+1E9E}"   ; (ẞ) capital sharp S (capital Eszett)
cmpSmallT["h"] := "{U+00FE}"     ; (þ) small letter thorn
cmpCapitalT["H"] := "{U+00DE}"   ; (Þ) capital letter thorn


; Compose :  General/Math Symbols

global cmpDigitEight := Map()
global cmpCapitalP := Map()
global cmpVerticalLine := Map()
global cmpAsterisk := Map()
global cmpExclam := Map()
global cmpQuestion := Map()
global cmpParenLeft := Map()
global cmpPlus := Map()
global cmpPercent := Map()
global cmpLessThan := Map()
global cmpGreaterThan := Map()
cmpSmallD["d"] := "{U+2020}"        ; (†) dagger
cmpCapitalD["D"] := "{U+2021}"      ; (‡) double dagger
cmpSmallI["i"] := "{U+221E}"        ; (∞) infinity symbol
cmpDigitEight["8"] := "{U+221E}"    ; (∞) infinity symbol
cmpMathSymbols["i"] := "{U+00B5}"   ; (µ) micro sign
cmpSmallN["o"] := "{U+2116}"        ; (№) numero sign
cmpCapitalN["o"] := "{U+2116}"      ; (№) numero sign
cmpRingAbove["x"] := "{U+00A4}"     ; (¤) currency sign
cmpSuperscript["p"] := "{U+00B6}"   ; (¶) pilcrow sign
cmpCapitalP["P"] := "{U+00B6}"      ; (¶) pilcrow sign
cmpSmallR["2"] := "{U+221A}"        ; (√) square root
cmpSmallR["3"] := "{U+221B}"        ; (∛) cube root
cmpSmallR["4"] := "{U+221C}"        ; (∜) fourth root
cmpSymbols["o"] := "{U+00A7}"       ; (§) section sign
cmpCapitalS["o"] := "{U+00A7}"      ; (§) section sign
cmpSmallT["m"] := "{U+2122}"        ; (™) trademark symbol
cmpVerticalLine["|"] := "{U+2016}"  ; (‖) double vertical line
cmpAcuteAccent["1"] := "{U+2032}"   ; (′) prime
cmpAcuteAccent["2"] := "{U+2033}"   ; (″) double prime
cmpAcuteAccent["3"] := "{U+2034}"   ; (‴) triple prime
cmpAcuteAccent["4"] := "{U+2057}"   ; (⁗) quadruple prime
cmpAsterisk["*"] := "{U+00D7}"      ; (×) multiplication sign
cmpStroke["/"] := "{U+00F7}"        ; (÷) division sign
cmpAsterisk["o"] := "{U+00B0}"      ; (°) degree sign
cmpRingAbove["*"] := "{U+00B0}"     ; (°) degree sign
cmpDotAbove["-"] := "{U+00B7}"      ; (·) middle dot
cmpDotAbove["3"] := "{U+2026}"      ; (…) horizontal ellipsis
cmpDotAbove["."] := "{U+2026}"      ; (…) horizontal ellipsis
cmpArrow["-"] := "{U+00AA}"         ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
cmpRingAbove["-"] := "{U+00BA}"     ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
cmpExclam["!"] := "{U+00A1}"        ; (¡) inverted exclamation mark
cmpQuestion["?"] := "{U+00BF}"      ; (¿) inverted question mark
cmpRingAbove["c"] := "{U+00A9}"     ; (©) copyright sign
cmpParenLeft["c"] := "{U+00A9}"     ; (©) copyright sign
cmpRingAbove["p"] := "{U+2117}"     ; (℗) sound recording copyright
cmpParenLeft["p"] := "{U+2117}"     ; (℗) sound recording copyright
cmpRingAbove["r"] := "{U+00AE}"     ; (®) registered sign
cmpParenLeft["r"] := "{U+00AE}"     ; (®) registered sign
cmpPlus["-"] := "{U+00B1}"          ; (±) plus-minus sign
cmpMacronStroke["+"] := "{U+2213}"  ; (∓) minus-or-plus sign
cmpPercent["%"] := "{U+2030}"       ; (‰) per mille sign
cmpPercent["3"] := "{U+2030}"       ; (‰) per mille sign
cmpPercent["4"] := "{U+2031}"       ; (‱) per ten thousand sign
cmpExclam["="] := "{U+2260}"        ; (≠) not equal to
cmpLessThan[">"] := "{U+2260}"      ; (≠) not equal to
cmpLessThan["="] := "{U+2264}"      ; (≤) less-than or equal to
cmpGreaterThan["="] := "{U+2265}"   ; (≥) greater-than or equal to
cmpLessThan["+"] := "{U+2A7D}"      ; (⩽) less-than or slanted equal to
cmpGreaterThan["+"] := "{U+2A7E}"   ; (⩾) greater-than or slanted equal to
cmpTilde["~"] := "{U+2248}"         ; (≈) almost equal to


; Compose :  Bullets and Small Geometric Shapes (;)

global cmpSemicolon := Map()
cmpSemicolon["b"] := "{U+2022}"  ; (•) bullet
cmpSemicolon["o"] := "{U+25E6}"  ; (◦) white bullet
cmpSemicolon["h"] := "{U+2043}"  ; (⁃) hyphen bullet
cmpSemicolon["t"] := "{U+2023}"  ; (‣) triangular bullet
cmpSemicolon["q"] := "{U+25AA}"  ; (▪) black small square
cmpSemicolon["u"] := "{U+25AB}"  ; (▫) white small square
cmpSemicolon["w"] := "{U+25B4}"  ; (▴) black up-pointing small triangle
cmpSemicolon["a"] := "{U+25C2}"  ; (◂) black left-pointing small triangle
cmpSemicolon["s"] := "{U+25BE}"  ; (▾) black down-pointing small triangle
cmpSemicolon["d"] := "{U+25B8}"  ; (▸) black right-pointing small triangle
cmpSemicolon["i"] := "{U+25B5}"  ; (▵) white up-pointing small triangle
cmpSemicolon["j"] := "{U+25C3}"  ; (◃) white left-pointing small triangle
cmpSemicolon["k"] := "{U+25BF}"  ; (▿) white down-pointing small triangle
cmpSemicolon["l"] := "{U+25B9}"  ; (▹) white right-pointing small triangle
cmpSemicolon["z"] := "{U+25A0}"  ; (■) black square
cmpSemicolon["x"] := "{U+25A1}"  ; (□) white square
cmpSemicolon["c"] := "{U+25C6}"  ; (◆) black diamond
cmpSemicolon["v"] := "{U+25C7}"  ; (◇) white diamond
cmpSemicolon[";"] := "{U+2022}"  ; (•) bullet


; Compose :  Vulgar Fractions

global cmpDigitOne := Map()
global cmpDigitTwo := Map()
global cmpDigitThree := Map()
global cmpDigitFour := Map()
global cmpDigitFive := Map()
global cmpDigitSeven := Map()
global cmpDigitZero := Map()
cmpDigitOne["2"] := "{U+00BD}"    ; (½) vulgar fraction 1/2
cmpDigitOne["3"] := "{U+2153}"    ; (⅓) vulgar fraction 1/3
cmpDigitTwo["3"] := "{U+2154}"    ; (⅔) vulgar fraction 2/3
cmpDigitOne["4"] := "{U+00BC}"    ; (¼) vulgar fraction 1/4
cmpDigitThree["4"] := "{U+00BE}"  ; (¾) vulgar fraction 3/4
cmpDigitOne["5"] := "{U+2155}"    ; (⅕) vulgar fraction 1/5
cmpDigitTwo["5"] := "{U+2156}"    ; (⅖) vulgar fraction 2/5
cmpDigitThree["5"] := "{U+2157}"  ; (⅗) vulgar fraction 3/5
cmpDigitFour["5"] := "{U+2158}"   ; (⅘) vulgar fraction 4/5
cmpDigitOne["6"] := "{U+2159}"    ; (⅙) vulgar fraction 1/6
cmpDigitFive["6"] := "{U+215A}"   ; (⅚) vulgar fraction 5/6
cmpDigitOne["7"] := "{U+2150}"    ; (⅐) vulgar fraction 1/7
cmpDigitOne["8"] := "{U+215B}"    ; (⅛) vulgar fraction 1/8
cmpDigitThree["8"] := "{U+215C}"  ; (⅜) vulgar fraction 3/8
cmpDigitFive["8"] := "{U+215D}"   ; (⅝) vulgar fraction 5/8
cmpDigitSeven["8"] := "{U+215E}"  ; (⅞) vulgar fraction 7/8
cmpDigitOne["9"] := "{U+2151}"    ; (⅑) vulgar fraction 1/9
cmpDigitOne["0"] := "{U+2152}"    ; (⅒) vulgar fraction 1/10
cmpDigitZero["3"] := "{U+2189}"   ; (↉) vulgar fraction 0/3


; Compose :  Quotation Marks

global cmpBracketLeft := Map()
global cmpBracketRight := Map()
global cmpBackslash := Map()
cmpCedillaOgonek[chr(34)] := "{U+201E}"  ; („) double low-9 quotation mark
cmpDiaeresis[","] := "{U+201E}"          ; („) double low-9 quotation mark
cmpCedillaOgonek["'"] := "{U+201A}"      ; (‚) single low-9 quotation mark
cmpAcuteAccent[","] := "{U+201A}"        ; (‚) single low-9 quotation mark
cmpCedillaOgonek[","] := "{U+201A}"      ; (‚) single low-9 quotation mark
cmpDiaeresis["["] := "{U+201C}"          ; (“) left double quotation mark
cmpBracketLeft[chr(34)] := "{U+201C}"    ; (“) left double quotation mark
cmpDiaeresis["]"] := "{U+201D}"          ; (”) right double quotation mark
cmpBracketRight[chr(34)] := "{U+201D}"   ; (”) right double quotation mark
cmpAcuteAccent["["] := "{U+2018}"        ; (‘) left single quotation mark
cmpBracketLeft["'"] := "{U+2018}"        ; (‘) left single quotation mark
cmpAcuteAccent["]"] := "{U+2019}"        ; (’) right single quotation mark
cmpBracketRight["'"] := "{U+2019}"       ; (’) right single quotation mark
cmpBackslash[chr(34)] := "{U+201F}"      ; (‟) double high-reversed-9 quotation mark
cmpDiaeresis["\"] := "{U+201F}"          ; (‟) double high-reversed-9 quotation mark
cmpBackslash["'"] := "{U+201B}"          ; (‛) single high-reversed-9 quotation mark
cmpAcuteAccent["\"] := "{U+201B}"        ; (‛) single high-reversed-9 quotation mark
cmpLessThan["<"] := "{U+00AB}"           ; («) left-pointing double angle quotation mark
cmpLessThan[chr(34)] := "{U+00AB}"       ; («) left-pointing double angle quotation mark
cmpDiaeresis["<"] := "{U+00AB}"          ; («) left-pointing double angle quotation mark
cmpGreaterThan[">"] := "{U+00BB}"        ; (») right-pointing double angle quotation mark
cmpGreaterThan[chr(34)] := "{U+00BB}"    ; (») right-pointing double angle quotation mark
cmpDiaeresis[">"] := "{U+00BB}"          ; (») right-pointing double angle quotation mark
cmpLessThan["'"] := "{U+2039}"           ; (‹) left-pointing single angle quotation mark
cmpAcuteAccent["<"] := "{U+2039}"        ; (‹) left-pointing single angle quotation mark
cmpGreaterThan["'"] := "{U+203A}"        ; (›) right-pointing single angle quotation mark
cmpAcuteAccent[">"] := "{U+203A}"        ; (›) right-pointing single angle quotation mark


; Compose :  Double Grave Accent (G)

global cmpCapitalG := Map()
cmpCapitalG["a"] := "{U+0201}"  ; (ȁ) a with double grave
cmpCapitalG["A"] := "{U+0200}"  ; (Ȁ) A with double grave
cmpCapitalG["e"] := "{U+0205}"  ; (ȅ) e with double grave
cmpCapitalG["E"] := "{U+0204}"  ; (Ȅ) E with double grave
cmpCapitalG["i"] := "{U+0209}"  ; (ȉ) i with double grave
cmpCapitalG["I"] := "{U+0208}"  ; (Ȉ) I with double grave
cmpCapitalG["o"] := "{U+020D}"  ; (ȍ) o with double grave
cmpCapitalG["O"] := "{U+020C}"  ; (Ȍ) O with double grave
cmpCapitalG["r"] := "{U+0211}"  ; (ȑ) r with double grave
cmpCapitalG["R"] := "{U+0210}"  ; (Ȑ) R with double grave
cmpCapitalG["u"] := "{U+0215}"  ; (ȕ) u with double grave
cmpCapitalG["U"] := "{U+0214}"  ; (Ȕ) U with double grave


; Compose :  Inverted Breve (B)

global cmpCapitalB := Map()
cmpCapitalB["a"] := "{U+0203}"  ; (ȃ) a with inverted breve
cmpCapitalB["A"] := "{U+0202}"  ; (Ȃ) A with inverted breve
cmpCapitalB["e"] := "{U+0207}"  ; (ȇ) e with inverted breve
cmpCapitalB["E"] := "{U+0206}"  ; (Ȇ) E with inverted breve
cmpCapitalB["i"] := "{U+020B}"  ; (ȋ) i with inverted breve
cmpCapitalB["I"] := "{U+020A}"  ; (Ȋ) I with inverted breve
cmpCapitalB["o"] := "{U+020F}"  ; (ȏ) o with inverted breve
cmpCapitalB["O"] := "{U+020E}"  ; (Ȏ) O with inverted breve
cmpCapitalB["r"] := "{U+0213}"  ; (ȓ) r with inverted breve
cmpCapitalB["R"] := "{U+0212}"  ; (Ȓ) R with inverted breve
cmpCapitalB["u"] := "{U+0217}"  ; (ȗ) u with inverted breve
cmpCapitalB["U"] := "{U+0216}"  ; (Ȗ) U with inverted breve


; Compose :  Circumflex Below (I)

cmpCapitalI["d"] := "{U+1E13}"  ; (ḓ) d with circumflex below
cmpCapitalI["D"] := "{U+1E12}"  ; (Ḓ) D with circumflex below
cmpCapitalI["e"] := "{U+1E19}"  ; (ḙ) e with circumflex below
cmpCapitalI["E"] := "{U+1E18}"  ; (Ḙ) E with circumflex below
cmpCapitalI["l"] := "{U+1E3D}"  ; (ḽ) l with circumflex below
cmpCapitalI["L"] := "{U+1E3C}"  ; (Ḽ) L with circumflex below
cmpCapitalI["n"] := "{U+1E4B}"  ; (ṋ) n with circumflex below
cmpCapitalI["N"] := "{U+1E4A}"  ; (Ṋ) N with circumflex below
cmpCapitalI["t"] := "{U+1E71}"  ; (ṱ) t with circumflex below
cmpCapitalI["T"] := "{U+1E70}"  ; (Ṱ) T with circumflex below
cmpCapitalI["u"] := "{U+1E77}"  ; (ṷ) u with circumflex below
cmpCapitalI["U"] := "{U+1E76}"  ; (Ṷ) U with circumflex below


; Compose :  Tilde Below (T)

cmpCapitalT["e"] := "{U+1E1B}"  ; (ḛ) e with tilde below
cmpCapitalT["E"] := "{U+1E1A}"  ; (Ḛ) E with tilde below
cmpCapitalT["i"] := "{U+1E2D}"  ; (ḭ) i with tilde below
cmpCapitalT["I"] := "{U+1E2C}"  ; (Ḭ) I with tilde below
cmpCapitalT["u"] := "{U+1E75}"  ; (ṵ) u with tilde below
cmpCapitalT["U"] := "{U+1E74}"  ; (Ṵ) U with tilde below


; Compose :  Line Below (L)

global cmpCapitalL := Map()
cmpCapitalL["b"] := "{U+1E07}"  ; (ḇ) b with line below
cmpCapitalL["B"] := "{U+1E06}"  ; (Ḇ) B with line below
cmpCapitalL["d"] := "{U+1E0F}"  ; (ḏ) d with line below
cmpCapitalL["D"] := "{U+1E0E}"  ; (Ḏ) D with line below
cmpCapitalL["h"] := "{U+1E96}"  ; (ẖ) h with line below
cmpCapitalL["k"] := "{U+1E35}"  ; (ḵ) k with line below
cmpCapitalL["K"] := "{U+1E34}"  ; (Ḵ) K with line below
cmpCapitalL["l"] := "{U+1E3B}"  ; (ḻ) l with line below
cmpCapitalL["L"] := "{U+1E3A}"  ; (Ḻ) L with line below
cmpCapitalL["n"] := "{U+1E49}"  ; (ṉ) n with line below
cmpCapitalL["N"] := "{U+1E48}"  ; (Ṉ) N with line below
cmpCapitalL["r"] := "{U+1E5F}"  ; (ṟ) r with line below
cmpCapitalL["R"] := "{U+1E5E}"  ; (Ṟ) R with line below
cmpCapitalL["t"] := "{U+1E6F}"  ; (ṯ) t with line below
cmpCapitalL["T"] := "{U+1E6E}"  ; (Ṯ) T with line below
cmpCapitalL["z"] := "{U+1E95}"  ; (ẕ) z with line below
cmpCapitalL["Z"] := "{U+1E94}"  ; (Ẕ) Z with line below


; Compose :  Ring Below, Breve Below and Diaeresis Below (R)

global cmpCapitalR := Map()
cmpCapitalR["a"] := "{U+1E01}"  ; (ḁ) a with ring below
cmpCapitalR["A"] := "{U+1E00}"  ; (Ḁ) A with ring below
cmpCapitalR["h"] := "{U+1E2B}"  ; (ḫ) h with breve below
cmpCapitalR["H"] := "{U+1E2A}"  ; (Ḫ) H with breve below
cmpCapitalR["u"] := "{U+1E73}"  ; (ṳ) u with diaeresis below
cmpCapitalR["U"] := "{U+1E72}"  ; (Ṳ) U with diaeresis below


; Compose :  Hook Above (<)

cmpLessThan["a"] := "{U+1EA3}"  ; (ả) a with hook above
cmpLessThan["A"] := "{U+1EA2}"  ; (Ả) A with hook above
cmpLessThan["e"] := "{U+1EBB}"  ; (ẻ) e with hook above
cmpLessThan["E"] := "{U+1EBA}"  ; (Ẻ) E with hook above
cmpLessThan["i"] := "{U+1EC9}"  ; (ỉ) i with hook above
cmpLessThan["I"] := "{U+1EC8}"  ; (Ỉ) I with hook above
cmpLessThan["o"] := "{U+1ECF}"  ; (ỏ) o with hook above
cmpLessThan["O"] := "{U+1ECE}"  ; (Ỏ) O with hook above
cmpLessThan["u"] := "{U+1EE7}"  ; (ủ) u with hook above
cmpLessThan["U"] := "{U+1EE6}"  ; (Ủ) U with hook above
cmpLessThan["y"] := "{U+1EF7}"  ; (ỷ) y with hook above
cmpLessThan["Y"] := "{U+1EF6}"  ; (Ỷ) Y with hook above


; Compose :  Dot Below (>)

cmpGreaterThan["a"] := "{U+1EA1}"  ; (ạ) a with dot below
cmpGreaterThan["A"] := "{U+1EA0}"  ; (Ạ) A with dot below
cmpGreaterThan["b"] := "{U+1E05}"  ; (ḅ) b with dot below
cmpGreaterThan["B"] := "{U+1E04}"  ; (Ḅ) B with dot below
cmpGreaterThan["d"] := "{U+1E0D}"  ; (ḍ) d with dot below
cmpGreaterThan["D"] := "{U+1E0C}"  ; (Ḍ) D with dot below
cmpGreaterThan["e"] := "{U+1EB9}"  ; (ẹ) e with dot below
cmpGreaterThan["E"] := "{U+1EB8}"  ; (Ẹ) E with dot below
cmpGreaterThan["h"] := "{U+1E25}"  ; (ḥ) h with dot below
cmpGreaterThan["H"] := "{U+1E24}"  ; (Ḥ) H with dot below
cmpGreaterThan["i"] := "{U+1ECB}"  ; (ị) i with dot below
cmpGreaterThan["I"] := "{U+1ECA}"  ; (Ị) I with dot below
cmpGreaterThan["k"] := "{U+1E33}"  ; (ḳ) k with dot below
cmpGreaterThan["K"] := "{U+1E32}"  ; (Ḳ) K with dot below
cmpGreaterThan["l"] := "{U+1E37}"  ; (ḷ) l with dot below
cmpGreaterThan["L"] := "{U+1E36}"  ; (Ḷ) L with dot below
cmpGreaterThan["m"] := "{U+1E43}"  ; (ṃ) m with dot below
cmpGreaterThan["M"] := "{U+1E42}"  ; (Ṃ) M with dot below
cmpGreaterThan["n"] := "{U+1E47}"  ; (ṇ) n with dot below
cmpGreaterThan["N"] := "{U+1E46}"  ; (Ṇ) N with dot below
cmpGreaterThan["o"] := "{U+1ECD}"  ; (ọ) o with dot below
cmpGreaterThan["O"] := "{U+1ECC}"  ; (Ọ) O with dot below
cmpGreaterThan["r"] := "{U+1E5B}"  ; (ṛ) r with dot below
cmpGreaterThan["R"] := "{U+1E5A}"  ; (Ṛ) R with dot below
cmpGreaterThan["s"] := "{U+1E63}"  ; (ṣ) s with dot below
cmpGreaterThan["S"] := "{U+1E62}"  ; (Ṣ) S with dot below
cmpGreaterThan["t"] := "{U+1E6D}"  ; (ṭ) t with dot below
cmpGreaterThan["T"] := "{U+1E6C}"  ; (Ṭ) T with dot below
cmpGreaterThan["u"] := "{U+1EE5}"  ; (ụ) u with dot below
cmpGreaterThan["U"] := "{U+1EE4}"  ; (Ụ) U with dot below
cmpGreaterThan["v"] := "{U+1E7F}"  ; (ṿ) v with dot below
cmpGreaterThan["V"] := "{U+1E7E}"  ; (Ṿ) V with dot below
cmpGreaterThan["w"] := "{U+1E89}"  ; (ẉ) w with dot below
cmpGreaterThan["W"] := "{U+1E88}"  ; (Ẉ) W with dot below
cmpGreaterThan["y"] := "{U+1EF5}"  ; (ỵ) y with dot below
cmpGreaterThan["Y"] := "{U+1EF4}"  ; (Ỵ) Y with dot below
cmpGreaterThan["z"] := "{U+1E93}"  ; (ẓ) z with dot below
cmpGreaterThan["Z"] := "{U+1E92}"  ; (Ẓ) Z with dot below


; Compose :  Miscellaneous Symbols and Dingbats

global cmpDigitSix := Map()

cmpDigitOne["a"] := "{U+2600}"  ; (☀) black sun with rays
cmpDigitOne["b"] := "{U+2601}"  ; (☁) cloud
cmpDigitOne["c"] := "{U+2602}"  ; (☂) umbrella
cmpDigitOne["d"] := "{U+2603}"  ; (☃) snowman
cmpDigitOne["e"] := "{U+2604}"  ; (☄) comet
cmpDigitOne["f"] := "{U+2605}"  ; (★) black star
cmpDigitOne["g"] := "{U+2606}"  ; (☆) white star
cmpDigitOne["h"] := "{U+260E}"  ; (☎) black telephone
cmpDigitOne["i"] := "{U+260F}"  ; (☏) white telephone
cmpDigitOne["j"] := "{U+2610}"  ; (☐) ballot box
cmpDigitOne["k"] := "{U+2611}"  ; (☑) ballot box with check
cmpDigitOne["l"] := "{U+2612}"  ; (☒) ballot box with x
cmpDigitOne["m"] := "{U+2619}"  ; (☙) reversed rotated floral heart bullet
cmpDigitOne["n"] := "{U+261A}"  ; (☚) black left-pointing index
cmpDigitOne["o"] := "{U+261B}"  ; (☛) black right-pointing index
cmpDigitOne["p"] := "{U+261C}"  ; (☜) white left-pointing index
cmpDigitOne["q"] := "{U+261D}"  ; (☝) white up-pointing index
cmpDigitOne["r"] := "{U+261E}"  ; (☞) white right-pointing index
cmpDigitOne["s"] := "{U+261F}"  ; (☟) white down-pointing index
cmpDigitOne["t"] := "{U+2620}"  ; (☠) skull and crossbones
cmpDigitOne["u"] := "{U+2621}"  ; (☡) caution sign
cmpDigitOne["v"] := "{U+2622}"  ; (☢) radioactive sign
cmpDigitOne["w"] := "{U+2623}"  ; (☣) biohazard sign
cmpDigitOne["x"] := "{U+2639}"  ; (☹) white frowning face
cmpDigitOne["y"] := "{U+263A}"  ; (☺) white smiling face
cmpDigitOne["z"] := "{U+263B}"  ; (☻) black smiling face

cmpDigitTwo["a"] := "{U+263C}"  ; (☼) white sun with rays
cmpDigitTwo["b"] := "{U+263D}"  ; (☽) first quarter moon
cmpDigitTwo["c"] := "{U+263E}"  ; (☾) last quarter moon
cmpDigitTwo["d"] := "{U+2640}"  ; (♀) female sign (Venus)
cmpDigitTwo["e"] := "{U+2642}"  ; (♂) male sign (Mars)
cmpDigitTwo["f"] := "{U+2668}"  ; (♨) hot springs
cmpDigitTwo["g"] := "{U+2669}"  ; (♩) quarter note
cmpDigitTwo["h"] := "{U+266A}"  ; (♪) eighth note
cmpDigitTwo["i"] := "{U+266B}"  ; (♫) beamed eighth notes
cmpDigitTwo["j"] := "{U+266C}"  ; (♬) beamed sixteenth notes
cmpDigitTwo["k"] := "{U+266D}"  ; (♭) music flat sign
cmpDigitTwo["l"] := "{U+266E}"  ; (♮) music natural sign
cmpDigitTwo["m"] := "{U+266F}"  ; (♯) music sharp sign
cmpDigitTwo["n"] := "{U+2672}"  ; (♲) universal recycling symbol
cmpDigitTwo["o"] := "{U+267A}"  ; (♺) recycling symbol for generic materials
cmpDigitTwo["p"] := "{U+267B}"  ; (♻) black universal recycling symbol
cmpDigitTwo["q"] := "{U+267F}"  ; (♿) wheelchair symbol
cmpDigitTwo["r"] := "{U+2690}"  ; (⚐) white flag
cmpDigitTwo["s"] := "{U+2691}"  ; (⚑) black flag
cmpDigitTwo["t"] := "{U+26A0}"  ; (⚠) warning sign
cmpDigitTwo["u"] := "{U+26A1}"  ; (⚡) high voltage sign
cmpDigitTwo["v"] := "{U+26D4}"  ; (⛔) no entry
cmpDigitTwo["w"] := "{U+231A}"  ; (⌚) watch
cmpDigitTwo["x"] := "{U+231B}"  ; (⌛) hourglass

cmpDigitThree["a"] := "{U+2701}"  ; (✁) upper blade scissors
cmpDigitThree["b"] := "{U+2702}"  ; (✂) black scissors
cmpDigitThree["c"] := "{U+2703}"  ; (✃) lower blade scissors
cmpDigitThree["d"] := "{U+2704}"  ; (✄) white scissors
cmpDigitThree["e"] := "{U+2706}"  ; (✆) telephone location sign
cmpDigitThree["f"] := "{U+2707}"  ; (✇) tape drive
cmpDigitThree["g"] := "{U+2708}"  ; (✈) airplane
cmpDigitThree["h"] := "{U+2709}"  ; (✉) envelope
cmpDigitThree["i"] := "{U+270A}"  ; (✊) raised fist
cmpDigitThree["j"] := "{U+270B}"  ; (✋) raised hand
cmpDigitThree["k"] := "{U+270C}"  ; (✌) victory hand
cmpDigitThree["l"] := "{U+270D}"  ; (✍) writing hand
cmpDigitThree["m"] := "{U+270E}"  ; (✎) lower right pencil
cmpDigitThree["n"] := "{U+270F}"  ; (✏) pencil
cmpDigitThree["o"] := "{U+2710}"  ; (✐) upper right pencil
cmpDigitThree["p"] := "{U+2711}"  ; (✑) white nib
cmpDigitThree["q"] := "{U+2712}"  ; (✒) black nib
cmpDigitThree["r"] := "{U+2713}"  ; (✓) check mark
cmpDigitThree["s"] := "{U+2714}"  ; (✔) heavy check mark
cmpDigitThree["t"] := "{U+2715}"  ; (✕) multiplication x
cmpDigitThree["u"] := "{U+2716}"  ; (✖) heavy multiplication x
cmpDigitThree["v"] := "{U+2717}"  ; (✗) ballot x
cmpDigitThree["w"] := "{U+2718}"  ; (✘) heavy ballot x
cmpDigitThree["x"] := "{U+2719}"  ; (✙) outlined Greek cross
cmpDigitThree["y"] := "{U+271A}"  ; (✚) heavy Greek cross
cmpDigitThree["z"] := "{U+271B}"  ; (✛) open centre cross

cmpDigitFour["a"] := "{U+271C}"  ; (✜) heavy open centre cross
cmpDigitFour["b"] := "{U+271D}"  ; (✝) Latin cross
cmpDigitFour["c"] := "{U+271E}"  ; (✞) shadowed white Latin cross
cmpDigitFour["d"] := "{U+271F}"  ; (✟) outlined Latin cross
cmpDigitFour["e"] := "{U+2720}"  ; (✠) Maltese cross
cmpDigitFour["f"] := "{U+2721}"  ; (✡) star of David
cmpDigitFour["g"] := "{U+2722}"  ; (✢) four teardrop-spoked asterisk
cmpDigitFour["h"] := "{U+2723}"  ; (✣) four balloon-spoked asterisk
cmpDigitFour["i"] := "{U+2724}"  ; (✤) heavy four balloon-spoked asterisk
cmpDigitFour["j"] := "{U+2725}"  ; (✥) four club-spoked asterisk
cmpDigitFour["k"] := "{U+2726}"  ; (✦) black four-pointed star
cmpDigitFour["l"] := "{U+2727}"  ; (✧) white four-pointed star
cmpDigitFour["m"] := "{U+2729}"  ; (✩) stress outlined white star
cmpDigitFour["n"] := "{U+272A}"  ; (✪) circled white star
cmpDigitFour["o"] := "{U+272B}"  ; (✫) open centre black star
cmpDigitFour["p"] := "{U+272C}"  ; (✬) black centre white star
cmpDigitFour["q"] := "{U+272D}"  ; (✭) outlined black star
cmpDigitFour["r"] := "{U+272E}"  ; (✮) heavy outlined black star
cmpDigitFour["s"] := "{U+272F}"  ; (✯) pinwheel star
cmpDigitFour["t"] := "{U+2730}"  ; (✰) shadowed white star
cmpDigitFour["u"] := "{U+2731}"  ; (✱) heavy asterisk
cmpDigitFour["v"] := "{U+2732}"  ; (✲) open centre asterisk
cmpDigitFour["w"] := "{U+2733}"  ; (✳) eight-spoked asterisk
cmpDigitFour["x"] := "{U+2734}"  ; (✴) eight-pointed black star
cmpDigitFour["y"] := "{U+2735}"  ; (✵) eight-pointed pinwheel star
cmpDigitFour["z"] := "{U+2736}"  ; (✶) six-pointed black star

cmpDigitFive["a"] := "{U+2737}"  ; (✷) eight-pointed rectilinear black star
cmpDigitFive["b"] := "{U+2738}"  ; (✸) heavy eight-pointed rectilinear black star
cmpDigitFive["c"] := "{U+2739}"  ; (✹) twelve pointed black star
cmpDigitFive["d"] := "{U+273A}"  ; (✺) sixteen-pointed asterisk
cmpDigitFive["e"] := "{U+273B}"  ; (✻) teardrop-spoked asterisk
cmpDigitFive["f"] := "{U+273C}"  ; (✼) open centre teardrop-spoked asterisk
cmpDigitFive["g"] := "{U+273D}"  ; (✽) heavy teardrop-spoked asterisk
cmpDigitFive["h"] := "{U+273E}"  ; (✾) six-petalled black and white florette
cmpDigitFive["i"] := "{U+273F}"  ; (✿) black florette
cmpDigitFive["j"] := "{U+2740}"  ; (❀) white florette
cmpDigitFive["k"] := "{U+2741}"  ; (❁) eight-petalled outlined black florette
cmpDigitFive["l"] := "{U+2742}"  ; (❂) circled open centre eight-pointed star
cmpDigitFive["m"] := "{U+2743}"  ; (❃) heavy teardrop-spoked pinwheel asterisk
cmpDigitFive["n"] := "{U+2744}"  ; (❄) snowflake
cmpDigitFive["o"] := "{U+2745}"  ; (❅) tight trifoliate snowflake
cmpDigitFive["p"] := "{U+2746}"  ; (❆) heavy chevron snowflake
cmpDigitFive["q"] := "{U+2747}"  ; (❇) sparkle
cmpDigitFive["r"] := "{U+2748}"  ; (❈) heavy sparkle
cmpDigitFive["s"] := "{U+2749}"  ; (❉) balloon-spoked asterisk
cmpDigitFive["t"] := "{U+274A}"  ; (❊) eight teardrop-spoked propeller asterisk
cmpDigitFive["u"] := "{U+274B}"  ; (❋) heavy eight teardrop-spoked propeller asterisk
cmpDigitFive["v"] := "{U+274D}"  ; (❍) shadowed white circle
cmpDigitFive["w"] := "{U+274F}"  ; (❏) lower right drop-shadowed white square
cmpDigitFive["x"] := "{U+2750}"  ; (❐) upper right drop-shadowed white square
cmpDigitFive["y"] := "{U+2751}"  ; (❑) lower right shadowed white square
cmpDigitFive["z"] := "{U+2752}"  ; (❒) upper right shadowed white square

cmpDigitSix["a"] := "{U+2756}"  ; (❖) black diamond minus white x
cmpDigitSix["b"] := "{U+2758}"  ; (❘) light vertical bar
cmpDigitSix["c"] := "{U+2759}"  ; (❙) medium vertical bar
cmpDigitSix["d"] := "{U+275A}"  ; (❚) heavy vertical bar
cmpDigitSix["e"] := "{U+275B}"  ; (❛) heavy single turned comma quotation mark ornament
cmpDigitSix["f"] := "{U+275C}"  ; (❜) heavy single comma quotation mark ornament
cmpDigitSix["g"] := "{U+275D}"  ; (❝) heavy double turned comma quotation mark ornament
cmpDigitSix["h"] := "{U+275E}"  ; (❞) heavy double comma quotation mark ornament
cmpDigitSix["i"] := "{U+275F}"  ; (❟) heavy low single comma quotation mark ornament
cmpDigitSix["j"] := "{U+2760}"  ; (❠) heavy low double comma quotation mark ornament
cmpDigitSix["k"] := "{U+2761}"  ; (❡) curved stem paragraph sign ornament
cmpDigitSix["l"] := "{U+2762}"  ; (❢) heavy exclamation mark ornament
cmpDigitSix["m"] := "{U+2763}"  ; (❣) heavy heart exclamation mark ornament
cmpDigitSix["n"] := "{U+2764}"  ; (❤) heavy black heart
cmpDigitSix["o"] := "{U+2765}"  ; (❥) rotated heavy black heart bullet
cmpDigitSix["p"] := "{U+2766}"  ; (❦) floral heart
cmpDigitSix["q"] := "{U+2767}"  ; (❧) rotated floral heart bullet

cmpDigitSeven["a"] := "{U+2794}"  ; (➔) heavy wide-headed rightwards arrow
cmpDigitSeven["b"] := "{U+2798}"  ; (➘) heavy south east arrow
cmpDigitSeven["c"] := "{U+2799}"  ; (➙) heavy rightwards arrow
cmpDigitSeven["d"] := "{U+279A}"  ; (➚) heavy north east arrow
cmpDigitSeven["e"] := "{U+279B}"  ; (➛) drafting point rightwards arrow
cmpDigitSeven["f"] := "{U+279C}"  ; (➜) heavy round-tipped rightwards arrow
cmpDigitSeven["g"] := "{U+279D}"  ; (➝) triangle-headed rightwards arrow
cmpDigitSeven["h"] := "{U+279E}"  ; (➞) heavy triangle-headed rightwards arrow
cmpDigitSeven["i"] := "{U+279F}"  ; (➟) dashed triangle-headed rightwards arrow
cmpDigitSeven["j"] := "{U+27A0}"  ; (➠) heavy dashed triangle-headed rightwards arrow
cmpDigitSeven["k"] := "{U+27A1}"  ; (➡) black rightwards arrow
cmpDigitSeven["l"] := "{U+27A2}"  ; (➢) 3d top-lighted rightwards arrowhead
cmpDigitSeven["m"] := "{U+27A3}"  ; (➣) 3d bottom-lighted rightwards arrowhead
cmpDigitSeven["n"] := "{U+27A4}"  ; (➤) black rightwards arrowhead
cmpDigitSeven["o"] := "{U+27A5}"  ; (➥) heavy black curved downwards and rightwards arrow
cmpDigitSeven["p"] := "{U+27A6}"  ; (➦) heavy black curved upwards and rightwards arrow
cmpDigitSeven["q"] := "{U+27A7}"  ; (➧) squat black rightwards arrow
cmpDigitSeven["r"] := "{U+27A8}"  ; (➨) heavy concave-pointed black rightwards arrow
cmpDigitSeven["s"] := "{U+27A9}"  ; (➩) right-shaded white rightwards arrow
cmpDigitSeven["t"] := "{U+27AA}"  ; (➪) left-shaded white rightwards arrow
cmpDigitSeven["u"] := "{U+27AB}"  ; (➫) back-tilted shadowed white rightwards arrow
cmpDigitSeven["v"] := "{U+27AC}"  ; (➬) front-tilted shadowed white rightwards arrow
cmpDigitSeven["w"] := "{U+27AD}"  ; (➭) heavy lower right-shadowed white rightwards arrow
cmpDigitSeven["x"] := "{U+27AE}"  ; (➮) heavy upper right-shadowed white rightwards arrow
cmpDigitSeven["y"] := "{U+27AF}"  ; (➯) notched lower right-shadowed white rightwards arrow
cmpDigitSeven["z"] := "{U+27B1}"  ; (➱) notched upper right-shadowed white rightwards arrow

cmpDigitEight["a"] := "{U+27B2}"  ; (➲) circled heavy white rightwards arrow
cmpDigitEight["b"] := "{U+27B3}"  ; (➳) white-feathered rightwards arrow
cmpDigitEight["c"] := "{U+27B4}"  ; (➴) black-feathered south east arrow
cmpDigitEight["d"] := "{U+27B5}"  ; (➵) black-feathered rightwards arrow
cmpDigitEight["e"] := "{U+27B6}"  ; (➶) black-feathered north east arrow
cmpDigitEight["f"] := "{U+27B7}"  ; (➷) heavy black-feathered south east arrow
cmpDigitEight["g"] := "{U+27B8}"  ; (➸) heavy black-feathered rightwards arrow
cmpDigitEight["h"] := "{U+27B9}"  ; (➹) heavy black-feathered north east arrow
cmpDigitEight["i"] := "{U+27BA}"  ; (➺) teardrop-barbed rightwards arrow
cmpDigitEight["j"] := "{U+27BB}"  ; (➻) heavy teardrop-shanked rightwards arrow
cmpDigitEight["k"] := "{U+27BC}"  ; (➼) wedge-tailed rightwards arrow
cmpDigitEight["l"] := "{U+27BD}"  ; (➽) heavy wedge-tailed rightwards arrow
cmpDigitEight["m"] := "{U+27BE}"  ; (➾) open-outlined rightwards arrow
cmpDigitEight["n"] := "{U+27C1}"  ; (⟁) white triangle containing small white triangle


; Compose :  Chess Pieces and Playing Card Suit Symbols (C)

global cmpCapitalC := Map()
cmpCapitalC["k"] := "{U+2654}"  ; (♔) white chess king
cmpCapitalC["q"] := "{U+2655}"  ; (♕) white chess queen
cmpCapitalC["r"] := "{U+2656}"  ; (♖) white chess rook
cmpCapitalC["b"] := "{U+2657}"  ; (♗) white chess bishop
cmpCapitalC["n"] := "{U+2658}"  ; (♘) white chess knight
cmpCapitalC["p"] := "{U+2659}"  ; (♙) white chess pawn
cmpCapitalC["K"] := "{U+265A}"  ; (♚) black chess king
cmpCapitalC["Q"] := "{U+265B}"  ; (♛) black chess queen
cmpCapitalC["R"] := "{U+265C}"  ; (♜) black chess rook
cmpCapitalC["B"] := "{U+265D}"  ; (♝) black chess bishop
cmpCapitalC["N"] := "{U+265E}"  ; (♞) black chess knight
cmpCapitalC["P"] := "{U+265F}"  ; (♟) black chess pawn
cmpCapitalC["c"] := "{U+2667}"  ; (♧) white club suit
cmpCapitalC["C"] := "{U+2663}"  ; (♣) black club suit
cmpCapitalC["d"] := "{U+2662}"  ; (♢) white diamond suit
cmpCapitalC["D"] := "{U+2666}"  ; (♦) black diamond suit
cmpCapitalC["h"] := "{U+2661}"  ; (♡) white heart suit
cmpCapitalC["H"] := "{U+2665}"  ; (♥) black heart suit
cmpCapitalC["s"] := "{U+2664}"  ; (♤) white spade suit
cmpCapitalC["S"] := "{U+2660}"  ; (♠) black spade suit


; Compose :  Dingbat Negative Circled Digits (n)

cmpSmallN["1"] := "{U+2776}"  ; (❶) dingbat negative circled digit 1
cmpSmallN["2"] := "{U+2777}"  ; (❷) dingbat negative circled digit 2
cmpSmallN["3"] := "{U+2778}"  ; (❸) dingbat negative circled digit 3
cmpSmallN["4"] := "{U+2779}"  ; (❹) dingbat negative circled digit 4
cmpSmallN["5"] := "{U+277A}"  ; (❺) dingbat negative circled digit 5
cmpSmallN["6"] := "{U+277B}"  ; (❻) dingbat negative circled digit 6
cmpSmallN["7"] := "{U+277C}"  ; (❼) dingbat negative circled digit 7
cmpSmallN["8"] := "{U+277D}"  ; (❽) dingbat negative circled digit 8
cmpSmallN["9"] := "{U+277E}"  ; (❾) dingbat negative circled digit 9
cmpSmallN["0"] := "{U+277F}"  ; (❿) dingbat negative circled digit 10


; Configuration :  'Right Alt' and 'Right Alt + Shift' on US QWERTY

>!a:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C4}"  ; (Ä) A with diaeresis
  else
    Send "{U+00E4}"  ; (ä) a with diaeresis
}
>!+a:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E4}"  ; (ä) a with diaeresis
  else
    Send "{U+00C4}"  ; (Ä) A with diaeresis
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

>!z:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C1}"  ; (Á) A with acute
  else
    Send "{U+00E1}"  ; (á) a with acute
}
>!+z:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E1}"  ; (á) a with acute
  else
    Send "{U+00C1}"  ; (Á) A with acute
}

>!x:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C0}"  ; (À) A with grave
  else
    Send "{U+00E0}"  ; (à) a with grave
}
>!+x:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E0}"  ; (à) a with grave
  else
    Send "{U+00C0}"  ; (À) A with grave
}

>!d:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C2}"  ; (Â) A with circumflex
  else
    Send "{U+00E2}"  ; (â) a with circumflex
}
>!+d:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E2}"  ; (â) a with circumflex
  else
    Send "{U+00C2}"  ; (Â) A with circumflex
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

>!e:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00CB}"  ; (Ë) E with diaeresis
  else
    Send "{U+00EB}"  ; (ë) e with diaeresis
}
>!+e:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00EB}"  ; (ë) e with diaeresis
  else
    Send "{U+00CB}"  ; (Ë) E with diaeresis
}

>!f:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C9}"  ; (É) E with acute
  else
    Send "{U+00E9}"  ; (é) e with acute
}
>!+f:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E9}"  ; (é) e with acute
  else
    Send "{U+00C9}"  ; (É) E with acute
}

>!g:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C8}"  ; (È) E with grave
  else
    Send "{U+00E8}"  ; (è) e with grave
}
>!+g:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E8}"  ; (è) e with grave
  else
    Send "{U+00C8}"  ; (È) E with grave
}

>!r:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00CA}"  ; (Ê) E with circumflex
  else
    Send "{U+00EA}"  ; (ê) e with circumflex
}
>!+r:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00EA}"  ; (ê) e with circumflex
  else
    Send "{U+00CA}"  ; (Ê) E with circumflex
}

>!i:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00CF}"  ; (Ï) I with diaeresis
  else
    Send "{U+00EF}"  ; (ï) i with diaeresis
}
>!+i:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00EF}"  ; (ï) i with diaeresis
  else
    Send "{U+00CF}"  ; (Ï) I with diaeresis
}

>!v:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00CD}"  ; (Í) I with acute
  else
    Send "{U+00ED}"  ; (í) i with acute
}
>!+v:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00ED}"  ; (í) i with acute
  else
    Send "{U+00CD}"  ; (Í) I with acute
}

>!b:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00CC}"  ; (Ì) I with grave
  else
    Send "{U+00EC}"  ; (ì) i with grave
}
>!+b:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00EC}"  ; (ì) i with grave
  else
    Send "{U+00CC}"  ; (Ì) I with grave
}

>!t:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00CE}"  ; (Î) I with circumflex
  else
    Send "{U+00EE}"  ; (î) i with circumflex
}
>!+t:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00EE}"  ; (î) i with circumflex
  else
    Send "{U+00CE}"  ; (Î) I with circumflex
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

>!o:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D6}"  ; (Ö) O with diaeresis
  else
    Send "{U+00F6}"  ; (ö) o with diaeresis
}
>!+o:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F6}"  ; (ö) o with diaeresis
  else
    Send "{U+00D6}"  ; (Ö) O with diaeresis
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

>!,:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D3}"  ; (Ó) O with acute
  else
    Send "{U+00F3}"  ; (ó) o with acute
}
>!<:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F3}"  ; (ó) o with acute
  else
    Send "{U+00D3}"  ; (Ó) O with acute
}

>!.:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D2}"  ; (Ò) O with grave
  else
    Send "{U+00F2}"  ; (ò) o with grave
}
>!>:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F2}"  ; (ò) o with grave
  else
    Send "{U+00D2}"  ; (Ò) O with grave
}

>!p:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D4}"  ; (Ô) O with circumflex
  else
    Send "{U+00F4}"  ; (ô) o with circumflex
}
>!+p:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F4}"  ; (ô) o with circumflex
  else
    Send "{U+00D4}"  ; (Ô) O with circumflex
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

>!u:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00DC}"  ; (Ü) U with diaeresis
  else
    Send "{U+00FC}"  ; (ü) u with diaeresis
}
>!+u:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00FC}"  ; (ü) u with diaeresis
  else
    Send "{U+00DC}"  ; (Ü) U with diaeresis
}

>!h:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00DA}"  ; (Ú) U with acute
  else
    Send "{U+00FA}"  ; (ú) u with acute
}
>!+h:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00FA}"  ; (ú) u with acute
  else
    Send "{U+00DA}"  ; (Ú) U with acute
}

>!j:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D9}"  ; (Ù) U with grave
  else
    Send "{U+00F9}"  ; (ù) u with grave
}
>!+j:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F9}"  ; (ù) u with grave
  else
    Send "{U+00D9}"  ; (Ù) U with grave
}

>!y:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00DB}"  ; (Û) U with circumflex
  else
    Send "{U+00FB}"  ; (û) u with circumflex
}
>!+y:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00FB}"  ; (û) u with circumflex
  else
    Send "{U+00DB}"  ; (Û) U with circumflex
}

>!6:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00C3}"  ; (Ã) A with tilde
  else
    Send "{U+00E3}"  ; (ã) a with tilde
}
>!+6:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00E3}"  ; (ã) a with tilde
  else
    Send "{U+00C3}"  ; (Ã) A with tilde
}

>!7:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00D5}"  ; (Õ) O with tilde
  else
    Send "{U+00F5}"  ; (õ) o with tilde
}
>!+7:: {
  if GetKeyState("CapsLock", "T")
    Send "{U+00F5}"  ; (õ) o with tilde
  else
    Send "{U+00D5}"  ; (Õ) O with tilde
}

>!m::Send "{U+00B5}"   ; (µ) micro sign
>!+m::Send "{U+00B1}"  ; (±) plus-minus sign

>!1::Send "{U+00A1}"   ; (¡) inverted exclamation mark
>!+1::Send "{U+00B9}"  ; (¹) superscript 1

>!2::Send "{U+2264}"   ; (≤) less-than or equal to
>!+2::Send "{U+00B2}"  ; (²) superscript 2

>!3::Send "{U+2265}"   ; (≥) greater-than or equal to
>!+3::Send "{U+00B3}"  ; (³) superscript 3

>!4::Send "{U+00A3}"   ; (£) pound sign
>!+4::Send "{U+00A5}"  ; (¥) yen sign

>!5::Send "{U+20AC}"   ; (€) euro sign
>!+5::Send "{U+00A2}"  ; (¢) cent sign (dollar)

>!8::Send "{U+201E}"   ; („) double low-9 quotation mark
>!+8::Send "{U+00A7}"  ; (§) section sign

>!9::Send "{U+201C}"   ; (“) left double quotation mark
>!+9::Send "{U+2018}"  ; (‘) left single quotation mark

>!0::Send "{U+201D}"   ; (”) right double quotation mark
>!+0::Send "{U+2019}"  ; (’) right single quotation mark

>!-::Send "{U+2013}"   ; (–) en dash
>!_::Send "{U+2014}"   ; (—) em dash

>!=::Send "{U+00D7}"   ; (×) multiplication sign
>!+::Send "{U+00F7}"   ; (÷) division sign

>![::Send "{U+00AB}"   ; («) left-pointing double angle quotation mark
>!{::Send "{U+2039}"   ; (‹) left-pointing single angle quotation mark

>!]::Send "{U+00BB}"   ; (») right-pointing double angle quotation mark
>!}::Send "{U+203A}"   ; (›) right-pointing single angle quotation mark

>!;::Send "{U+00B0}"   ; (°) degree sign
>!+;::Send "{U+00B7}"  ; (·) middle dot

>!'::Send "{U+266A}"   ; (♪) eighth note
>!"::Send "{U+266B}"   ; (♫) beamed eighth notes

>!\::Send "{U+2002}"   ;     en space
>!|::Send "{U+2003}"   ;     em space

>!/::Send "{U+00BF}"   ; (¿) inverted question mark
>!?::Send "{U+2022}"   ; (•) bullet

>!space::Send "{U+00A0}"   ; non-breaking space (NBSP)
>!+space::Send "{U+00A0}"  ; non-breaking space (NBSP)


; Configuration :  Compose Key Selector

>!`::
>!~::
>!sc056::
>!+sc056:: {
  ihA := InputHook("L1", gEndKeys)
  ihA.Start()
  ihA.Wait()

  ihB := InputHook("L1", gEndKeys)
  ihB.Start()
  ihB.Wait()

  if (ihA.Input == "'") {
    if cmpAcuteAccent.Has(ihB.Input)
      Send cmpAcuteAccent[ihB.Input]
  }
  else if (ihA.Input == "``") {
    if cmpGraveAccent.Has(ihB.Input)
      Send cmpGraveAccent[ihB.Input]
  }
  else if (ihA.Input == chr(34)) {
    if cmpDiaeresis.Has(ihB.Input)
      Send cmpDiaeresis[ihB.Input]
  }
  else if (ihA.Input == "c") {
    if cmpCircumflex.Has(ihB.Input)
      Send cmpCircumflex[ihB.Input]
  }
  else if (ihA.Input == "~") {
    if cmpTilde.Has(ihB.Input)
      Send cmpTilde[ihB.Input]
  }
  else if (ihA.Input == ",") {
    if cmpCedillaOgonek.Has(ihB.Input)
      Send cmpCedillaOgonek[ihB.Input]
  }
  else if (ihA.Input == "v") {
    if cmpCaron.Has(ihB.Input)
      Send cmpCaron[ihB.Input]
  }
  else if (ihA.Input == ".") {
    if cmpDotAbove.Has(ihB.Input)
      Send cmpDotAbove[ihB.Input]
  }
  else if (ihA.Input == "o") {
    if cmpRingAbove.Has(ihB.Input)
      Send cmpRingAbove[ihB.Input]
  }
  else if (ihA.Input == "-") {
    if cmpMacronStroke.Has(ihB.Input)
      Send cmpMacronStroke[ihB.Input]
  }
  else if (ihA.Input == "_") {
    if cmpMacronStrokeAdd.Has(ihB.Input)
      Send cmpMacronStrokeAdd[ihB.Input]
  }
  else if (ihA.Input == "/") {
    if cmpStroke.Has(ihB.Input)
      Send cmpStroke[ihB.Input]
  }
  else if (ihA.Input == "b") {
    if cmpBreveSpecial.Has(ihB.Input)
      Send cmpBreveSpecial[ihB.Input]
  }
  else if (ihA.Input == "=") {
    if cmpDoubleAcute.Has(ihB.Input)
      Send cmpDoubleAcute[ihB.Input]
  }
  else if (ihA.Input == "h") {
    if cmpSmallH.Has(ihB.Input)
      Send cmpSmallH[ihB.Input]
  }
  else if (ihA.Input == "f") {
    if cmpSmallF.Has(ihB.Input)
      Send cmpSmallF[ihB.Input]
  }
  else if (ihA.Input == "l") {
    if cmpSmallL.Has(ihB.Input)
      Send cmpSmallL[ihB.Input]
  }
  else if (ihA.Input == "r") {
    if cmpSmallR.Has(ihB.Input)
      Send cmpSmallR[ihB.Input]
  }
  else if (ihA.Input == "$") {
    if cmpCurrency.Has(ihB.Input)
      Send cmpCurrency[ihB.Input]
  }
  else if (ihA.Input == "g") {
    if cmpGreek.Has(ihB.Input)
      Send cmpGreek[ihB.Input]
  }
  else if (ihA.Input == "p") {
    if cmpSuperscript.Has(ihB.Input)
      Send cmpSuperscript[ihB.Input]
  }
  else if (ihA.Input == "u") {
    if cmpSubscript.Has(ihB.Input)
      Send cmpSubscript[ihB.Input]
  }
  else if (ihA.Input == " ") {
    if cmpSpace.Has(ihB.Input)
      Send cmpSpace[ihB.Input]
  }
  else if (ihA.Input == "q") {
    if cmpQuad.Has(ihB.Input)
      Send cmpQuad[ihB.Input]
  }
  else if (ihA.Input == "a") {
    if cmpArrow.Has(ihB.Input)
      Send cmpArrow[ihB.Input]
  }
  else if (ihA.Input == "s") {
    if cmpSymbols.Has(ihB.Input)
      Send cmpSymbols[ihB.Input]
  }
  else if (ihA.Input == "m") {
    if cmpMathSymbols.Has(ihB.Input)
      Send cmpMathSymbols[ihB.Input]
  }
  else if (ihA.Input == "A") {
    if cmpCapitalA.Has(ihB.Input)
      Send cmpCapitalA[ihB.Input]
  }
  else if (ihA.Input == "d") {
    if cmpSmallD.Has(ihB.Input)
      Send cmpSmallD[ihB.Input]
  }
  else if (ihA.Input == "D") {
    if cmpCapitalD.Has(ihB.Input)
      Send cmpCapitalD[ihB.Input]
  }
  else if (ihA.Input == "i") {
    if cmpSmallI.Has(ihB.Input)
      Send cmpSmallI[ihB.Input]
  }
  else if (ihA.Input == "I") {
    if cmpCapitalI.Has(ihB.Input)
      Send cmpCapitalI[ihB.Input]
  }
  else if (ihA.Input == "n") {
    if cmpSmallN.Has(ihB.Input)
      Send cmpSmallN[ihB.Input]
  }
  else if (ihA.Input == "N") {
    if cmpCapitalN.Has(ihB.Input)
      Send cmpCapitalN[ihB.Input]
  }
  else if (ihA.Input == "O") {
    if cmpCapitalO.Has(ihB.Input)
      Send cmpCapitalO[ihB.Input]
  }
  else if (ihA.Input == "S") {
    if cmpCapitalS.Has(ihB.Input)
      Send cmpCapitalS[ihB.Input]
  }
  else if (ihA.Input == "t") {
    if cmpSmallT.Has(ihB.Input)
      Send cmpSmallT[ihB.Input]
  }
  else if (ihA.Input == "T") {
    if cmpCapitalT.Has(ihB.Input)
      Send cmpCapitalT[ihB.Input]
  }
  else if (ihA.Input == "P") {
    if cmpCapitalP.Has(ihB.Input)
      Send cmpCapitalP[ihB.Input]
  }
  else if (ihA.Input == "|") {
    if cmpVerticalLine.Has(ihB.Input)
      Send cmpVerticalLine[ihB.Input]
  }
  else if (ihA.Input == "*") {
    if cmpAsterisk.Has(ihB.Input)
      Send cmpAsterisk[ihB.Input]
  }
  else if (ihA.Input == "!") {
    if cmpExclam.Has(ihB.Input)
      Send cmpExclam[ihB.Input]
  }
  else if (ihA.Input == "?") {
    if cmpQuestion.Has(ihB.Input)
      Send cmpQuestion[ihB.Input]
  }
  else if (ihA.Input == "(") {
    if cmpParenLeft.Has(ihB.Input)
      Send cmpParenLeft[ihB.Input]
  }
  else if (ihA.Input == "+") {
    if cmpPlus.Has(ihB.Input)
      Send cmpPlus[ihB.Input]
  }
  else if (ihA.Input == "%") {
    if cmpPercent.Has(ihB.Input)
      Send cmpPercent[ihB.Input]
  }
  else if (ihA.Input == "8") {
    if cmpDigitEight.Has(ihB.Input)
      Send cmpDigitEight[ihB.Input]
  }
  else if (ihA.Input == "<") {
    if cmpLessThan.Has(ihB.Input)
      Send cmpLessThan[ihB.Input]
  }
  else if (ihA.Input == ">") {
    if cmpGreaterThan.Has(ihB.Input)
      Send cmpGreaterThan[ihB.Input]
  }
  else if (ihA.Input == ";") {
    if cmpSemicolon.Has(ihB.Input)
      Send cmpSemicolon[ihB.Input]
  }
  else if (ihA.Input == "1") {
    if cmpDigitOne.Has(ihB.Input)
      Send cmpDigitOne[ihB.Input]
  }
  else if (ihA.Input == "2") {
    if cmpDigitTwo.Has(ihB.Input)
      Send cmpDigitTwo[ihB.Input]
  }
  else if (ihA.Input == "3") {
    if cmpDigitThree.Has(ihB.Input)
      Send cmpDigitThree[ihB.Input]
  }
  else if (ihA.Input == "4") {
    if cmpDigitFour.Has(ihB.Input)
      Send cmpDigitFour[ihB.Input]
  }
  else if (ihA.Input == "5") {
    if cmpDigitFive.Has(ihB.Input)
      Send cmpDigitFive[ihB.Input]
  }
  else if (ihA.Input == "7") {
    if cmpDigitSeven.Has(ihB.Input)
      Send cmpDigitSeven[ihB.Input]
  }
  else if (ihA.Input == "0") {
    if cmpDigitZero.Has(ihB.Input)
      Send cmpDigitZero[ihB.Input]
  }
  else if (ihA.Input == "[") {
    if cmpBracketLeft.Has(ihB.Input)
      Send cmpBracketLeft[ihB.Input]
  }
  else if (ihA.Input == "]") {
    if cmpBracketRight.Has(ihB.Input)
      Send cmpBracketRight[ihB.Input]
  }
  else if (ihA.Input == "\") {
    if cmpBackslash.Has(ihB.Input)
      Send cmpBackslash[ihB.Input]
  }
  else if (ihA.Input == "G") {
    if cmpCapitalG.Has(ihB.Input)
      Send cmpCapitalG[ihB.Input]
  }
  else if (ihA.Input == "B") {
    if cmpCapitalB.Has(ihB.Input)
      Send cmpCapitalB[ihB.Input]
  }
  else if (ihA.Input == "L") {
    if cmpCapitalL.Has(ihB.Input)
      Send cmpCapitalL[ihB.Input]
  }
  else if (ihA.Input == "R") {
    if cmpCapitalR.Has(ihB.Input)
      Send cmpCapitalR[ihB.Input]
  }
  else if (ihA.Input == "6") {
    if cmpDigitSix.Has(ihB.Input)
      Send cmpDigitSix[ihB.Input]
  }
  else if (ihA.Input == "C") {
    if cmpCapitalC.Has(ihB.Input)
      Send cmpCapitalC[ihB.Input]
  }
}
