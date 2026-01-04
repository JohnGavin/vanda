# Log for Issue #10: Create vanda R package
# Created: 2026-01-04

library(usethis)
library(devtools)
library(gert)

# 1. Initialize Package
# usethis::create_package("proj/data/vanda", open = FALSE) # Done manually due to nesting

# 2. Add Dependencies
usethis::use_package("httr2")
usethis::use_package("jsonlite")
usethis::use_package("dplyr")
usethis::use_package("ggplot2")
usethis::use_package("tibble")
usethis::use_package("rlang")
usethis::use_package("knitr", type = "Suggests")
usethis::use_package("rmarkdown", type = "Suggests")

# 3. Create Vignettes
usethis::use_vignette("easy", title = "Easy: Basic Search")
usethis::use_vignette("medium", title = "Medium: Data Extraction")
usethis::use_vignette("advanced", title = "Advanced: Visualization")

# 4. License
usethis::use_mit_license("John Gavin")

# 5. Build and Check
devtools::document()
# devtools::check()

# 6. Git Operations
# gert::git_add("proj/data/vanda")
# gert::git_commit("Init vanda package with MCP client, vignettes, and tests")
# usethis::pr_push()
