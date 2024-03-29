% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SOS_MaxMonth.R
\name{SOS_MaxMonth}
\alias{SOS_MaxMonth}
\title{Find and Code Wettest Months}
\usage{
SOS_MaxMonth(Rain, Month, Pad)
}
\arguments{
\item{Rain}{a numeric vector (length = 12) of three month rolling average rainfall for a year (i.e 12 months).}

\item{Month}{an integer vector (length = 12) of month numbers (1:12), if months are not in sequence the function should be able to handle this. If not supplied it is assumed months are in the order 1:12.}

\item{Pad}{an integer value (length = 1, values = 0:3) that sets the minimum separation distance between seasons in months (the maximum is 3).}
}
\value{
\code{MaxMonth} returns a numeric vector (length = 12) with the highest rainfall season coded as \code{1} and the next highest encoded as \code{2}.
}
\description{
\code{MaxMonth} takes 12 months of rainfall data and searches for two separate seasons with the highest rainfall.
}
\details{
Rainfall data need to be a three month rolling average (n+2).
The \code{Pad} parameter sets the minimum separation distance between seasons in months (the maximum is 3).
The three months corresponding to the highest rainfall are coded as \code{1}, the next highest rainfall period
which does not overlap season 1 and is separated by \code{Pad} months is coded as \code{2}.
If two identical rainfall values exist in the 12 month series the earliest month will be chosen first.
}
