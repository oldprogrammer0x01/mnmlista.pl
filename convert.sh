#!/bin/bash

DATA='.mnmlista.md'
OUTPUT='public/mnmlista'

echo "Convert MD into Standalone HTML ..." 
${CONVERTER} --metadata title="Mnmlista" -s -f markdown -c "/assets/style.css" ${DATA}  -t html5 -o ${OUTPUT}.html

echo "Convert MD into EPUB ..." 
${CONVERTER} --metadata title="Mnmlista" -f markdown -s ${DATA} -t epub -o ${OUTPUT}.epub

DATA='.mnmlist.md'
OUTPUT='public/mnmlist'

echo "Convert MD into Standalone HTML ..." 
${CONVERTER} --metadata title="Mnmlist" -s -f markdown -c "/assets/style.css" ${DATA} -t html5 -o ${OUTPUT}.html

echo "Convert MD into EPUB ..." 
${CONVERTER} --metadata title="Mnmlist" -f markdown ${DATA} -t epub -o ${OUTPUT}.epub
