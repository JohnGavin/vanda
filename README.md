# vanda

<!-- badges: start -->
[![pkgdown](https://github.com/JohnGavin/vanda/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/JohnGavin/vanda/actions/workflows/pkgdown.yaml)
<!-- badges: end -->

**vanda** provides an R interface to the [Victoria & Albert Museum's Model Context Protocol (MCP) server](https://mcp.vam.ac.uk/mcp/). It allows you to search, extract, and visualise collection data directly from R.

## Website

View the full documentation and vignettes at: **[https://JohnGavin.github.io/vanda/](https://JohnGavin.github.io/vanda/)**

## Installation

You can install the development version of vanda from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("JohnGavin/vanda")
```

## Usage

``` r
library(vanda)

# Connect (currently uses mock data if server is down)
client <- mcp_connect()

# Search
results <- mcp_search(client, "Textile")

# Visualise
vanda_visualise(results)
```

## License

MIT
