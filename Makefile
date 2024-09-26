all: index.html index.pdf
index.html: index.md Makefile
	pandoc -t revealjs -s \
       -V theme=moon \
       -V revealjs-url=https://cdn.jsdelivr.net/npm/reveal.js@3.9.2 \
	   --katex=https://cdn.jsdelivr.net/npm/katex@0.16.11/dist/ \
        ./index.md  -o index.html
index.pdf: index.md Makefile
	pandoc -t beamer -s ./index.md -o index.pdf
