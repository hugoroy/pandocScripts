#!/bin/zsh

# Script utile pour la ponctuation en français notamment si le format
# de sortie est HTML ou Docx/ODT.

# Guillemets
sed 's#"t":"Str","c":"«"},{"t":"Space","c":\[\]#"t":"Str","c":"« "#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»"#"t":"Str","c":" »"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»."#"t":"Str","c":" »."#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»,"#"t":"Str","c":" »,"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»;"#"t":"Str","c":" »;"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»?"#"t":"Str","c":" »?"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»!"#"t":"Str","c":" »!"#g' | \
    sed 's/<<~/« /g' | sed 's/~>>/ »/g' | \
# Autres \
    sed 's# !# !#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"!"#"t":"Str","c":" !"#g' | \
    sed 's# ?# ?#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"?"#"t":"Str","c":" ?"#g' | \
    sed 's# ;# ;#g'  | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":";"#"t":"Str","c":" ;"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":":"#"t":"Str","c":" :"#g' 
