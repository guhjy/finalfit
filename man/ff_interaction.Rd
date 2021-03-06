% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ff_interaction.R
\name{ff_interaction}
\alias{ff_interaction}
\alias{finalfit_interaction}
\title{Make an interaction variable and add to dataframe}
\usage{
ff_interaction(.data, ..., levels_sep = ":", var_sep = "__",
  label_sep = ":")

finalfit_interaction(.data, ..., levels_sep = ":", var_sep = "__",
  label_sep = ":")
}
\arguments{
\item{.data}{Data frame.}

\item{...}{The unquoted names of two factors.}

\item{levels_sep}{Quoted character: how levels are separated in new variable.}

\item{var_sep}{Quoted character: how variable name is separated.}

\item{label_sep}{Quoted character: how variable label is spearated}
}
\value{
Original data frame with new variable added via `dplyr::mutate`.
}
\description{
Combine two factor variables to make an interaction variable. Factor level
order is determined by the order in the variables themselves. Note, names of
the factor variables should not be quoted. The name of the variable is
created from the names of the two factors. The variable is also
labelled with a name derived from any pre-existing labels.
}
\examples{

colon_s \%>\%
  ff_interaction(sex.factor, perfor.factor) \%>\%
    summary_factorlist("mort_5yr", "sex.factor__perfor.factor")
}
