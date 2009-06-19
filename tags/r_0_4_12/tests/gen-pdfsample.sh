#!/bin/sh
# gen-pdfsample.sh - print all glyphs in PDF file
# Usage: gen-pdfsample.sh <suffix> <prefix>
#   where font file name is <prefix><font><suffix>
#
export GS_LIB=.
top_builddir=${top_builddir-../}
fsuffix=$1
fprefix=$2
 
FONTS="Garuda Garuda-Oblique Garuda-Bold Garuda-BoldOblique
Kinnari Kinnari-Oblique Kinnari-Italic
Kinnari-Bold Kinnari-BoldOblique Kinnari-BoldItalic
Norasi Norasi-Oblique Norasi-Italic
Norasi-Bold Norasi-BoldOblique Norasi-BoldItalic
Loma Loma-Oblique Loma-Bold Loma-BoldOblique 
TlwgMono TlwgMono-Oblique TlwgMono-Bold TlwgMono-BoldOblique 
TlwgTypewriter TlwgTypewriter-Oblique
TlwgTypewriter-Bold TlwgTypewriter-BoldOblique 
TlwgTypist TlwgTypist-Oblique TlwgTypist-Bold TlwgTypist-BoldOblique 
Sawasdee Sawasdee-Oblique Sawasdee-Bold Sawasdee-BoldOblique 
Waree Waree-Oblique Waree-Bold Waree-BoldOblique 
Umpush-Light Umpush-LightOblique Umpush Umpush-Oblique
Umpush-Bold Umpush-BoldOblique 
Purisa"
PHRASE="\340\264\347\241\241\265\321\255\220\331\340\275\207\322\344\242\214\244\330\263\273\331\206\315\302\331\213\267\325\350\272\214\322\271\303\324\301\271\355\351\322"
POEM_L1="\340\273\232\271\301\271\330\311\302\217\312\330\264\273\303\320\340\312\303\324\260\340\305\324\310\244\330\263\244\213\322"
POEM_L2="\241\307\213\322\272\303\303\264\322\275\331\247\312\321\265\307\217\340\264\303\321\250\251\322\271"
POEM_L3="\250\247\275\206\322\277\230\271\276\321\262\271\322\307\324\252\322\241\322\303"
POEM_L4="\315\302\213\322\305\214\322\247\274\305\322\255\304\345\340\242\213\271\246\213\322\272\325\261\322\343\244\303"
POEM_L5="\344\301\213\266\327\315\342\267\311\342\241\303\270\341\252\213\247\253\321\264\316\326\264\316\321\264\264\213\322"
POEM_L6="\313\321\264\315\300\321\302\340\313\301\327\315\271\241\325\314\322\315\321\252\254\322\312\321\302"
POEM_L7="\273\257\324\272\321\265\324\273\303\320\276\304\265\324\241\256\241\355\322\313\271\264\343\250"
POEM_L8="\276\331\264\250\322\343\313\214\250\215\320\346 \250\216\322\346 \271\213\322\277\230\247\340\315\302\317"
CIT="\305\324\242\312\324\267\270\324\354\342\264\302 \312\301\322\244\301\244\315\301\276\324\307\340\265\315\303\217\341\313\213\247\273\303\320\340\267\310\344\267\302\343\271\276\303\320\272\303\301\303\322\252\331\273\266\321\301\300\217"

cat <<END > Fontmap
/Garuda                 (${top_builddir}nf/${fprefix}Garuda${fsuffix});
/Garuda-Oblique         (${top_builddir}nf/${fprefix}Garuda-Oblique${fsuffix});
/Garuda-Bold            (${top_builddir}nf/${fprefix}Garuda-Bold${fsuffix});
/Garuda-BoldOblique     (${top_builddir}nf/${fprefix}Garuda-BoldOblique${fsuffix});
/Kinnari                (${top_builddir}nf/${fprefix}Kinnari${fsuffix});
/Kinnari-Oblique        (${top_builddir}nf/${fprefix}Kinnari-Oblique${fsuffix});
/Kinnari-Italic         (${top_builddir}nf/${fprefix}Kinnari-Italic${fsuffix});
/Kinnari-Bold           (${top_builddir}nf/${fprefix}Kinnari-Bold${fsuffix});
/Kinnari-BoldOblique    (${top_builddir}nf/${fprefix}Kinnari-BoldOblique${fsuffix});
/Kinnari-BoldItalic     (${top_builddir}nf/${fprefix}Kinnari-BoldItalic${fsuffix});
/Norasi                 (${top_builddir}nf/${fprefix}Norasi${fsuffix});
/Norasi-Oblique         (${top_builddir}nf/${fprefix}Norasi-Oblique${fsuffix});
/Norasi-Italic          (${top_builddir}nf/${fprefix}Norasi-Italic${fsuffix});
/Norasi-Bold            (${top_builddir}nf/${fprefix}Norasi-Bold${fsuffix});
/Norasi-BoldOblique     (${top_builddir}nf/${fprefix}Norasi-BoldOblique${fsuffix});
/Norasi-BoldItalic      (${top_builddir}nf/${fprefix}Norasi-BoldItalic${fsuffix});
/Loma                   (${top_builddir}nectec/${fprefix}Loma${fsuffix});
/Loma-Oblique           (${top_builddir}nectec/${fprefix}Loma-Oblique${fsuffix});
/Loma-Bold              (${top_builddir}nectec/${fprefix}Loma-Bold${fsuffix});
/Loma-BoldOblique       (${top_builddir}nectec/${fprefix}Loma-BoldOblique${fsuffix});
/TlwgMono               (${top_builddir}tlwg/${fprefix}TlwgMono${fsuffix});
/TlwgMono-Oblique       (${top_builddir}tlwg/${fprefix}TlwgMono-Oblique${fsuffix});
/TlwgMono-Bold          (${top_builddir}tlwg/${fprefix}TlwgMono-Bold${fsuffix});
/TlwgMono-BoldOblique   (${top_builddir}tlwg/${fprefix}TlwgMono-BoldOblique${fsuffix});
/TlwgTypewriter             (${top_builddir}tlwg/${fprefix}TlwgTypewriter${fsuffix});
/TlwgTypewriter-Oblique     (${top_builddir}tlwg/${fprefix}TlwgTypewriter-Oblique${fsuffix});
/TlwgTypewriter-Bold        (${top_builddir}tlwg/${fprefix}TlwgTypewriter-Bold${fsuffix});
/TlwgTypewriter-BoldOblique (${top_builddir}tlwg/${fprefix}TlwgTypewriter-BoldOblique${fsuffix});
/TlwgTypist             (${top_builddir}tlwg/${fprefix}TlwgTypist${fsuffix});
/TlwgTypist-Oblique     (${top_builddir}tlwg/${fprefix}TlwgTypist-Oblique${fsuffix});
/TlwgTypist-Bold        (${top_builddir}tlwg/${fprefix}TlwgTypist-Bold${fsuffix});
/TlwgTypist-BoldOblique (${top_builddir}tlwg/${fprefix}TlwgTypist-BoldOblique${fsuffix});
/Sawasdee               (${top_builddir}tlwg/${fprefix}Sawasdee${fsuffix});
/Sawasdee-Oblique       (${top_builddir}tlwg/${fprefix}Sawasdee-Oblique${fsuffix});
/Sawasdee-Bold          (${top_builddir}tlwg/${fprefix}Sawasdee-Bold${fsuffix});
/Sawasdee-BoldOblique   (${top_builddir}tlwg/${fprefix}Sawasdee-BoldOblique${fsuffix});
/Waree                  (${top_builddir}tlwg/${fprefix}Waree${fsuffix});
/Waree-Oblique          (${top_builddir}tlwg/${fprefix}Waree-Oblique${fsuffix});
/Waree-Bold             (${top_builddir}tlwg/${fprefix}Waree-Bold${fsuffix});
/Waree-BoldOblique      (${top_builddir}tlwg/${fprefix}Waree-BoldOblique${fsuffix});
/Umpush-Light           (${top_builddir}tlwg/${fprefix}Umpush-Light${fsuffix});
/Umpush-LightOblique    (${top_builddir}tlwg/${fprefix}Umpush-LightOblique${fsuffix});
/Umpush                 (${top_builddir}tlwg/${fprefix}Umpush${fsuffix});
/Umpush-Oblique         (${top_builddir}tlwg/${fprefix}Umpush-Oblique${fsuffix});
/Umpush-Bold            (${top_builddir}tlwg/${fprefix}Umpush-Bold${fsuffix});
/Umpush-BoldOblique     (${top_builddir}tlwg/${fprefix}Umpush-BoldOblique${fsuffix});
/Purisa                 (${top_builddir}tlwg/${fprefix}Purisa${fsuffix});
END

for font in $FONTS; do
#
# Create Postscript first
#
    cat <<EOF > ${font}.ps # output encoding
/cm {28.35 mul} def	
/TIS-620-2Encoding [
/.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef 
/.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef 
/.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef 
/.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef /.notdef 
/space /exclam /quotedbl /numbersign /dollar /percent /ampersand /quotesingle 
/parenleft /parenright /asterisk /plus /comma /hyphen /period /slash 
/zero /one /two /three /four /five /six /seven 
/eight /nine /colon /semicolon /less /equal /greater /question 
/at /A /B /C /D /E /F /G 
/H /I /J /K /L /M /N /O 
/P /Q /R /S /T /U /V /W 
/X /Y /Z /bracketleft /backslash /bracketright /asciicircum /underscore 
/grave /a /b /c /d /e /f /g 
/h /i /j /k /l /m /n /o 
/p /q /r /s /t /u /v /w 
/x /y /z /braceleft /bar /braceright /asciitilde /.notdef 
/uni0E10.descless /uni0E34.left /uni0E35.left /uni0E36.left /uni0E37.left /ellipsis /uni0E48.low_left /uni0E49.low_left 
/uni0E4A.low_left /uni0E4B.low_left /uni0E4C.low_left /uni0E48.low /uni0E49.low /uni0E4A.low /uni0E4B.low /uni0E4C.low 
/uni0E0D.descless /quoteleft /quoteright /quotedblleft /quotedblright /bullet /endash /emdash 
/uni0E31.left /uni0E4D.left /uni0E47.left /uni0E48.left /uni0E49.left /uni0E4A.left /uni0A4B.left /uni0E4C.left 
/nonbreakingspace /uni0E01 /uni0E02 /uni0E03 /uni0E04 /uni0E05 /uni0E06 /uni0E07 
/uni0E08 /uni0E09 /uni0E0A /uni0E0B /uni0E0C /uni0E0D /uni0E0E /uni0E0F 
/uni0E10 /uni0E11 /uni0E12 /uni0E13 /uni0E14 /uni0E15 /uni0E16 /uni0E17 
/uni0E18 /uni0E19 /uni0E1A /uni0E1B /uni0E1C /uni0E1D /uni0E1E /uni0E1F 
/uni0E20 /uni0E21 /uni0E22 /uni0E23 /uni0E24 /uni0E25 /uni0E26 /uni0E27 
/uni0E28 /uni0E29 /uni0E2A /uni0E2B /uni0E2C /uni0E2D /uni0E2E /uni0E2F 
/uni0E30 /uni0E31 /uni0E32 /uni0E33 /uni0E34 /uni0E35 /uni0E36 /uni0E37 
/uni0E38 /uni0E39 /uni0E3A /.notdef /.notdef /.notdef /.notdef /uni0E3F 
/uni0E40 /uni0E41 /uni0E42 /uni0E43 /uni0E44 /uni0E45 /uni0E46 /uni0E47 
/uni0E48 /uni0E49 /uni0E4A /uni0E4B /uni0E4C /uni0E4D /uni0E4E /uni0E4F 
/uni0E50 /uni0E51 /uni0E52 /uni0E53 /uni0E54 /uni0E55 /uni0E56 /uni0E57 
/uni0E58 /uni0E59 /uni0E5A /uni0E5B /uni0E38.low /uni0E39.low /uni0E3A.low /dottedcircle 
] readonly def
/RE { % /NewFontName [NewEncodingArray] /FontName RE -
    findfont dup length dict begin
        { % copy font dictionary into new dict
            1 index /FID ne
            {def} {pop pop} ifelse
        } forall
        /Encoding exch def
        /FontName 1 index def
        currentdict definefont pop
    end
} bind def
/CurrentV 26 cm def
/${font}-TIS-620-2 TIS-620-2Encoding /$font RE
/${font}-TIS-620-2 findfont 24 scalefont setfont
2 cm CurrentV moveto
(${font}) show
/CurrentV CurrentV 24 sub def
EOF
#
# Print a Thai text sample for each size (point)
#
for point in 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24; do
    cat <<EOF >> ${font}.ps
%% $point pt
/${font}-TIS-620-2 findfont $point scalefont setfont
2 cm CurrentV moveto (${point}pt) show
4 cm CurrentV moveto (${PHRASE}) show
/CurrentV CurrentV $point sub def
EOF
done
#
# Print a English text sample for each size (point)
#
for point in 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24; do
    cat <<EOF >> ${font}.ps
%% $point pt
/${font}-TIS-620-2 findfont $point scalefont setfont
2 cm CurrentV moveto (${point}pt) show
4 cm CurrentV moveto (The quick brown fox jumps over the lazy dog.) show
/CurrentV CurrentV $point sub def
EOF
done
echo showpage >> ${font}.ps
#
# Output the poem
#
point=16
cat <<EOF >> ${font}.ps
/CurrentV 20 cm def
/${font}-TIS-620-2 findfont $point scalefont setfont
4 cm CurrentV moveto
($POEM_L1) show
/CurrentV CurrentV $point sub def
4 cm CurrentV moveto
($POEM_L2) show
/CurrentV CurrentV $point sub def
4 cm CurrentV moveto
($POEM_L3) show
/CurrentV CurrentV $point sub def
4 cm CurrentV moveto
($POEM_L4) show
/CurrentV CurrentV $point sub def
4 cm CurrentV moveto
($POEM_L5) show
/CurrentV CurrentV $point sub def
4 cm CurrentV moveto
($POEM_L6) show
/CurrentV CurrentV $point sub def
4 cm CurrentV moveto
($POEM_L7) show
/CurrentV CurrentV $point sub def
4 cm CurrentV moveto
($POEM_L8) show
/CurrentV CurrentV $point $point add sub def
4 cm CurrentV moveto
/${font}-TIS-620-2 findfont 9 scalefont setfont
($CIT) show
showpage
EOF
#
# Make glyph table (DoFont)
#
cat <<EOF >> ${font}.ps
%% DoFont
(prfont.ps) runlibfile
/$font DoFont
EOF

         gs -sOutputFile=${fprefix}${font}${fsuffix}.pdf -sDEVICE=pdfwrite -dNOPAUSE -dBATCH ${font}.ps
rm ${font}.ps

         echo  ----- Wrote ${fprefix}${font}${fsuffix}.pdf -----
done
rm -f Fontmap

