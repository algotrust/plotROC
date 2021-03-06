% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/interactive_roc.R
\name{export_interactive_roc}
\alias{export_interactive_roc}
\title{Generate svg code for an ROC curve object}
\usage{
export_interactive_roc(ggroc_p, cutoffs = NULL, font.size = "12px",
  prefix = "a", width = 6, height = 6, lty = NULL, color = NULL,
  lwd = NULL, legend = FALSE)
}
\arguments{
\item{ggroc_p}{An object as returned by \link{ggroc} or \link{multi_ggroc}.
It can be modified with annotations, themes, etc.}

\item{cutoffs}{Optional vector or list of vectors to over-ride the default cutoff labels. Useful for rescaling or rounding.}

\item{font.size}{Character string that determines font size of cutoff labels}

\item{prefix}{A string to assign to the objects within the svg. Enables
unique idenfication by the javascript code}

\item{width}{Width in inches of plot}

\item{height}{Height in inches of plot}

\item{lty}{Optional vector of integers defining line types to apply to curves}

\item{color}{Optional vector of color names to apply to curves}

\item{lwd}{Line widths for curves}

\item{legend}{Logical. If true plots a legend in bottom right corner of plot}
}
\value{
A character object containing the html necessary to plot the ROC curve in a
  web browser
}
\description{
Takes a ggplot object as returned by \link{ggroc} or \link{multi_ggroc} and
returns a string that contains html suitable for creating a standalone
interactive ROC curve plot.
}
\details{
If you intend to include more than one of these objects in a single
  page, use a different \code{prefix} string for each one. To use this
  function in knitr, use the chunk options \code{fig.keep='none'} and
  \code{results = 'asis'}, then \code{cat()} the resulting string to the
  output. See the vignette for examples. Older browsers (< IE7) are not supported.
}

