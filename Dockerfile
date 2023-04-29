FROM conoria/alpine-r-bookdown

WORKDIR /usr/src

COPY . .

# RUN R -q -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")' && mv _book /public
RUN R -q -e 'bookdown::render_book("index.Rmd", "bookdown::bs4_book")' && mv _book /public