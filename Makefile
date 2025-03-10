SHELL:=/bin/bash

all:
	( echo "<p>" ; cat nevek.txt | sed "s/$$/<br\/>/" ; echo "</p>" ) > nevek.html
	( echo "aláírók száma: " ; cat nevek.txt | wc -l ; echo "&bullet; frissítve: " ; date +%Y-%m-%d ) > alairok_szama
	cat header.html szoveg.html nevek_elott.html nevek.html footer_elott.html alairok_szama footer.html > index.html

