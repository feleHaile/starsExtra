% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_grid.R
\name{make_grid}
\alias{make_grid}
\title{Make 'stars' grid from 'sf' layer}
\usage{
make_grid(x, res, buffer = 0)
}
\arguments{
\item{x}{An \code{sf}, \code{sfc} or \code{sfg} object}

\item{res}{Required grid resolution, in CRS units of \code{x}}

\item{buffer}{Buffer size around \code{x} (default is \code{0}, i.e., no buffer)}
}
\value{
A \code{stars} raster with the grid, with all cell values equal to \code{1}
}
\description{
Create 'stars' raster grid from bounding box of 'sf' vector layer, possibly buffered, with specified resolution.
}
\examples{
# Sample 'sf' layer
x = st_point(c(0,0))
y = st_point(c(1,1))
x = st_sfc(x, y)
x = st_sf(x)

# Make grid
r = make_grid(x, res = 0.1, buffer = 0.5)
r[[1]][] = rep(1:3, length.out = length(r[[1]]))

# Plot
plot(r, axes = TRUE, reset = FALSE)
plot(st_geometry(x), add = TRUE, pch = 4, cex = 3, col = "red")
}
