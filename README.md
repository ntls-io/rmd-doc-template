# An RMarkdown template

## Dependencies

Package names will vary acorss operating systems, but essentially the following
dependencies are needed to render this template:

- `pandoc`
- `texlive`
- `R`
- `R` packages:
    - `rmarkdown`
    - `bookdown`
    - `rextendr` (optional)
    - `reticulate` (optional)

Note that the `reticulate` package enables Python support whereas `rextendr`
does the same for the Rust programming language.

## Usage

In order to build the template run
```
make all
```
which will produce a pdf and browsable web page in the subdirectory `_book`.
Alternatively, it can be built and viewed by simply running
```
make www
```
