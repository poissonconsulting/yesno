roxygen2md::roxygen2md()

system2("air", c("format", "."))
styler::style_pkg(filetype = c("Rmd")) # Air currently doesn't format .Rmd files

lintr::lint_package()

devtools::test()
devtools::document()

rmarkdown::render("README.Rmd", output_format = "md_document")
pkgdown::build_site()

devtools::check()
