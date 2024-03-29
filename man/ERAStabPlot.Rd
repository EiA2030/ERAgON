% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ERAStabPlot.R
\name{ERAStabPlot}
\alias{ERAStabPlot}
\title{Stability Plot List}
\usage{
ERAStabPlot(Data, Intercept = F, Robust = F)
}
\arguments{
\item{Data}{a list object output by the \code{StabCalc2} function.}

\item{Intercept}{logical \code{(T/F)}; default = \code{F}; if \code{T} an intercept is added to the Beta line on each plot, if \code{F} the Beta has intercept = 0}

\item{Robust}{logical \code{(T/F)}; default = \code{F}; values for the relationship between x and y variables come from a robust linear regression when \code{T} and from linear
regression when \code{F }}
}
\value{
A list of stability plots.
}
\description{
This function creates a list of stability plots for all combinations of Practice x Outcome from the output of the \code{StabCalc2} function.
}
