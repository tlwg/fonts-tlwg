#!/bin/sh
# gen-pdfsample.sh - print all glyphs in PDF file
export GS_LIB=.
 

FONTS="Garuda Garuda-Oblique Garuda-Bold Garuda-BoldOblique Norasi 
Norasi-Oblique Norasi-Bold Norasi-BoldOblique DBThaiText 
DBThaiText-Oblique DBThaiText-Bold DBThaiText-BoldOblique"
 

cat <<END > Fontmap
/Garuda                 (../nf/PSGaruda.pfb);
/Garuda-Oblique         (../nf/PSGaruda-Oblique.pfb);
/Garuda-Bold            (../nf/PSGaruda-Bold.pfb);
/Garuda-BoldOblique     (../nf/PSGaruda-BoldOblique.pfb);
/Norasi                 (../nf/PSNorasi.pfb);
/Norasi-Oblique         (../nf/PSNorasi-Oblique.pfb);
/Norasi-Bold            (../nf/PSNorasi-Bold.pfb);
/Norasi-BoldOblique     (../nf/PSNorasi-BoldOblique.pfb);
/DBThaiText             (../db/PSDBThaiText.pfb);
/DBThaiText-Oblique     (../db/PSDBThaiText-Oblique.pfb);
/DBThaiText-Bold        (../db/PSDBThaiText-Bold.pfb);
/DBThaiText-BoldOblique (../db/PSDBThaiText-BoldOblique.pfb);
END

for font in $FONTS; do
         gs -sOutputFile=${font}.pdf -sDEVICE=pdfwrite -dNOPAUSE -dBATCH - <<END
(prfont.ps) runlibfile
/$font DoFont
END
         echo  ----- Wrote ${font}.pdf -----
done
rm -f Fontmap

