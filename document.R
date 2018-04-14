devtools::document()
if(file.exists("DESCRIPTION")) unlink("docs", recursive = TRUE)
codemetar::write_codemeta()
# knitr::knit("README.Rmd") do manually
pkgdown::build_site()
devtools::check()
