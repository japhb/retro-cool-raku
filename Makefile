MONTAGE_IMAGES=montage/roguelike.png montage/zork-1-start.png montage/sst-battle.png \
               montage/dod-monster.png montage/pop-sword-fight.png montage/robotron.jpg

GENERATED=montage.png tle-stack.svg index.html


all: ${GENERATED}

clean:
	rm -f ${GENERATED}

realclean:
	rm -rf ${GENERATED} reveal.js

setup:
	git clone https://github.com/hakimel/reveal.js.git
	cd reveal.js && git checkout 3.7.0

montage.png: Makefile ${MONTAGE_IMAGES}
	montage ${MONTAGE_IMAGES} -background black -geometry 320x200 montage.png

tle-stack.svg: Makefile tle-stack.pic
	dpic -v tle-stack.pic > tle-stack.svg

index.html: Makefile outline.md
	pandoc -t revealjs --css no-wrap.css -V controls=false -V transition=none -s outline.md -o index.html


.PHONY: clean realclean setup
