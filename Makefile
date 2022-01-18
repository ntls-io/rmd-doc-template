
INDEX_HTML="_book/index.html"
.PHONY: all pdf book www

all: book pdf

all:
	Rscript -e 'bookdown::render_book(".", output_format="all")'

book:
	Rscript -e 'bookdown::render_book(".", output_format="bookdown::gitbook")'

dry-clean:
	Rscript -e 'bookdown::clean_book()'

clean:
	Rscript -e 'bookdown::clean_book(clean="TRUE")'
	rm -f _*.Rmd _*.tex _*.html

pdf:
	Rscript -e 'bookdown::render_book(".", output_format="bookdown::pdf_book")'

www: book
	xdg-open ${INDEX_HTML} || start ${INDEX_HTML} || open ${INDEX_HTML}
