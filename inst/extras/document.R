# Package release instructions: http://r-pkgs.had.co.nz/release.html

# Documentation, Build and Check
library(devtools)
document("../../")
#build("../../")
#build(vignettes = FALSE)
#check("../../", vignettes = FALSE)
#install()

library(knitr)
knit(input = "../../README.Rmd", output = "../../README.md")

# build the ../../docs directory as a pkg website
library(pkgdown)
setwd("../../")
build_site()

# Submissions:
#
# release() # Submit to CRAN
# submit_cran() # Submit to CRAN without all release() questions

# Utilities:
#
# build_win("../../") # Windows check
# revdep_check("../../")
# add_rstudio_project("../../")
# use_build_ignore("../NEWS.md", pkg = "../../") # NEWS.md not supported by CRAN
# use_package("dplyr") # add package to imports
# load_all(".") # Reload the package
# test() # Run tests
# run_examples()

# Vignettes:
#
# library(knitr)
# knit("../../vignettes/eurostat_tutorial.Rmd", "../../vignettes/eurostat_tutorial.md")
# or run main.R in vignettes
setwd("vignettes/")
source("main.R")


