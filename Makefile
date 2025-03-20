SHELL:=/bin/bash

all:
	( \
	cat header.html ; \
	cat szoveg.html ; \
	cat nevek_elott.html ; \
	echo "<p>" ; cat nevek.txt | sed "s/$$/<br\/>/" ; echo "</p>" ; \
	echo "<h3 id=\"visszhang\">Visszhang</h3>" ; \
	echo "<p class=\"s\">" ; cat sajto.txt | grep "	" | sed "s/\(.*\)	\(.*\)/\1 <a href=\"\2\">\2<\/a><br\/>/"; cat sajto.txt | grep -v "	" | sed "s/\(.*\)/<a href=\"\1\">\1<\/a><br\/>/"; echo "</p>" ; \
	cat adomanygyujtes.html ; \
	cat footer_elott.html ; \
	echo "aláírók száma: " ; cat nevek.txt | wc -l ; \
	echo "&bullet; frissítve: " ; date +%Y-%m-%d ; \
	cat footer.html \
	) > index.html

