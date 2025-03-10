SHELL:=/bin/bash

all:
	( echo "<p>" ; cat nevek.txt | sed "s/$$/<br\/>/" ; echo "</p>" ) > nevek.html
	cat header.html szoveg.html nevek_elott.html nevek.html footer.html > index.html

