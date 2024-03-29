% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CalcClimate.R
\name{CalcClimate}
\alias{CalcClimate}
\title{Calculate climate statistics}
\usage{
CalcClimate(
  DATA,
  CLIMATE,
  ID,
  Rain.Data.Name,
  Temp.Data.Name,
  Rain.Windows = c(6 * 7, 4 * 7, 2 * 7, 2 * 7),
  Widths = c(3, 3, 2, 2),
  Rain.Threshold = c(30, 30, 20, 15),
  Win.Start = 1,
  Do.LT.Avg = T,
  Max.LT.Avg = 2010,
  Do.BioClim = T,
  Windows = data.table(Name = "Plant.0-30", Start = 1, End = 30),
  SaveDir = "Climate Stats/",
  ErrorDir = "Climate Stats/Errors/",
  Exclude.EC.Diff = F,
  EC.Diff = 0.6,
  ROUND = 5
)
}
\arguments{
\item{DATA}{An ERA dataset (e.g. \code{ERA.Compiled}) processed by the \code{AddEcoCrop}, \code{EstPDayData}, \code{EstSLenData} and \code{EstPDayRain} functions.}

\item{CLIMATE}{A daily agroclimatology dataset with fields: 1) \code{Temp.Mean} = mean daily temperature - C; 2) \code{Temp.Max} = maximum daily temperature - C;
\code{Temp.Min} = minimum daily temperature - C; 4) \code{Rain} = daily rainfall - mm; 5) \code{ETo} = reference evapotranspiration - mm; 6) class \code{Date} field
named \code{Date}; and 7) location identity as per \code{ID} argument and named the same as per \code{DATA}.}

\item{ID}{A character vector of length one containing the column name for a unique id field naming each location in the dataset provided}

\item{Rain.Data.Name}{A character vector of length one containing the name of the rainfall dataset in \code{CLIMATE}, this must be the same has the rainfall data used when preparing \code{DATA} using
the \code{EstPDayRain} function. This can be the same as \code{Temp.Data.Name}.}

\item{Temp.Data.Name}{A character vector of length one containing the name of the agroclimatology dataset in \code{CLIMATE}.}

\item{Rain.Windows}{An integer vector; the width in days of four temporal windows within which rainfall is assessed for potential planting dates. The first
value in the series specifies a period before the planting date, then subsequent values define three consecutive windows after the planting date.}

\item{Widths}{An integer vector of length equivalent to length(\code{Window}); the width of the scanning window in days within which rainfall is summed for
the corresponding \code{Rain.Windows} entry.}

\item{Rain.Threshold}{An integer vector of length equivalent to length(\code{Rain.Windows}); the amount of rainfall that has to fall in the temporal windows considered.}

\item{Win.Start}{Integer value of length one; when should the window for climate calculations begin relative to the planting date (estimated or reported) in days? for example: 0 = day of planting, -1 = one day before planting, +1 = one day after planting.}

\item{Do.LT.Avg}{Logical \code{T/F;} if \code{T} long term averages and deviances are calculated.}

\item{Max.LT.Avg}{Integer of length one only relevant if \code{Do.LT.Avg==T}; maximum year considered when calculating long-term averages.}

\item{Do.BioClim}{Logical \code{T/F}; if \code{T} calculate annual and long-term average bioclimatic variables from the agroclimatic data provided in \code{CLIMATE} using the \link[dismo]{biovars} function}

\item{Windows}{A data.table with three columns \code{Name}, \code{Start} and \code{End} which specifies additional temporal periods for calculation of climate statistics.
For example \code{data.table(Name="Plant.1-30",Start=1,End=30)} is a temporal period from the day after planting to 30 days after planting. Set to NA if no additional windows are required.}

\item{SaveDir}{A character vector of length one containing the path to the directory where the output is saved. Set to NA if you do not want to save the returned datasets.}

\item{ErrorDir}{A character vector of length one containing the path to the directory where information on potential analysis errors is to be saved. Set to NA if you do not want to save the returned dataset.}

\item{Exclude.EC.Diff}{Logical \code{T/F}; if \code{T} observations with a proportional difference of greater than \code{EC.Diff} between reported (or data estimated) and ecocrop season length are excluded.}

\item{EC.Diff}{A numeric vector of length one; a value 0-1 to be used in combination with the \code{Exclude.EC.Diff} argument.
If \code{Exclude.EC.Diff==T} and \code{abs(Reported.Season.Length-EcoCrop.Season.Length)/EcoCrop.Season.Length>EC.Diff} then observations are excluded from analysis.}

\item{ROUND}{An integer vector of length one indicating the number of decimal places to round output values to.}
}
\value{
A list is output containing following data.tables:
\enumerate{
\item \strong{\verb{[[Observed]]}} = a \code{data.table} of seasonal climate statistics with the fields:
\itemize{
\item\code{GDDlow} growing degree hours below optimal EcoCrop temperature threshold (h)
\item\code{GDDopt} growing degree hours within optimal EcoCrop temperature thresholds (h)
\item*\code{GDDhigh} growing degree hours above optimum and below maximum EcoCrop temperature thresholds (h)
\item\code{GDDmax} growing degree hours above EcoCrop maximum temperature threshold (h)
\item\code{Rain.Days.L.0} total number of days with 0 mm rainfall (days)
\item\code{Rain.Days.L.1} total number of days with less than 1 mm rainfall (days)
\item\code{Rain.Days.L.5} total number of days with less than 5 mm rainfall (days)
\item\code{Rain.Max.RSeq.0} longest continuous period of days with 0 mm rainfall (days)
\item\code{Rain.Max.RSeq.0.1} longest continuous period of days with less than 0.1 mm rainfall (days)
\item\code{Rain.Max.RSeq.1} longest continuous period of days with less than 1 mm rainfall (days)
\item\code{Rain.Max.RSeq.5} longest continuous period of days with less than 5 mm rainfall (days)
\item\code{Rain.N.RSeq.T0.D7} number of continuous periods of 7 days or more of 0 mm rainfall
\item\code{Rain.N.RSeq.T1.D7} number of continuous periods of 7 days or more of less than 1 mm rainfall
\item\code{Rain.N.RSeq.T5.D7} number of continuous periods of 7 days or more of less than 5 mm rainfall
\item\code{Rain.N.RSeq.T0.D14} number of continuous periods of 14 days or more of 0 mm rainfall
\item\code{Rain.N.RSeq.T1.D14} number of continuous periods of 14 days or more of less than 1 mm rainfall
\item\code{Rain.N.RSeq.T5.D14} number of continuous periods of 14 days or more of less than 5 mm rainfall
\item\code{Rain.N.RSeq.T0.D21} number of continuous periods of 21 days or more of 0 mm rainfall
\item\code{Rain.N.RSeq.T1.D21} number of continuous periods of 21 days or more of less than 1 mm rainfall
\item\code{Rain.N.RSeq.T5.D21} number of continuous periods of 21 days or more of less than 5 mm rainfall
\item\code{Rain.sum} total rainfall (mm)
\item\code{ETo.sum} summed Penman-Monteith reference evapotranspiration (mm)
\item\code{ETo.NA} number of NA values in Penman-Monteith reference evapotranspiration
\item\code{WBalance} \code{Rain.sum-ETo.sum} difference between rainfall and reference evapotranspiration (mm)
\item\code{Tmax.mean} mean of daily maximum temperatures (C)
\item\code{Tmax.sd} standard deviation of daily maximum temperatures (C)
\item\code{Tmean.mean} mean of daily mean temperatures (C)
\item\code{Tmean.sd} standard deviation of daily mean temperatures (C)
\item\code{EU} ERA experimental unit (or product) code see \code{ERAg::EUCodes} for translations
\item\code{PD.Used} planting date used in calculations
\item\code{W.Start} adjust of the start date of the climate calculation window as days before (negative) or after (positive) after planting date (days)
\item\code{W.End} end point of the climate calculation window as the number of days after \code{PD.Used + W.Start} (days)
\item\code{W.Name} name of the climate window being considered. \code{Data} planting and harvest dates reported in publications used to define the climate calculation window. \code{EcoCrop} EcoCrop database used to define season lengths (i.e. \code{W.End}) for the climate calculation window, unless sufficient data existed within ERA to estimate season length for the specific crop.
\item\code{ID} unique ID for site provided to the \code{CalcClimate} function (for \code{ERA.Compiled} this is usually \code{Site.Key})
\item\code{M.Year} measurement year, this should correspond the to year at the end of the climate calculation window (y)
\item\code{Season} measurement season (1, 2 or NA)
}
\item**\verb{[[LongTerm]]}**
\item*\verb{[[LongTerm]][[LT.PD.Years]]}* A \code{data.table} of planting dates estimated from rainfall data as per process 5) with the field:
\itemize{
\item \code{P.Year} rainfall estimated planting year of crop (y)
\item \code{P.Date} rainfall estimated planting date of crop; class \code{Date} with format \verb{\%Y\%m\%d}
\item \code{Dev.Mean} deviance in days of planting date from \strong{mean} long-term  planting date calculated for location (d)
\item \code{Dev.Med} deviance in days of planting date from \strong{median} long-term planting date calculated for location (d)
\item \code{EU} ERA experimental unit (product) code see \code{ERAg::EUCodes} for translations
\item \code{Season} growing season of year for bimodal areas
\item \code{ID} unique ID for site provided to the \code{CalcClimate} function (for \code{ERA.Compiled} this is usually \code{Site.Key})
\item \code{P.Data.Flag} indicates if no seasons in a time-series met the rainfall thresholds required for planting. If this occurs then the  mid-point of the reported planting dates is used for \code{P.Year} and \code{P.Date} fields.
}
\item*\verb{[[LongTerm]][[LT.PD.Avg]]}* A \code{data.table} of long-term averages for the planting dates in \verb{[[LongTerm]][[LT.PD.Years]]}
\itemize{
\item \code{Mean} mean planting date in julian days (d)
\item \code{Median} median planting date in julian days (d)
\item \code{SD} standard deviation of mean planting date (d)
\item \code{N} number of years used to calculate long-term average
\item other fields as per the \verb{[[LongTerm]][[LT.PD.Years]]} table
}
\item*\verb{[[LongTerm]][[LT.Clim.Years]]}* a \code{data.table} of seasonal climate statistics calculated for each row of \verb{[[LongTerm]][[LT.PD.Years]]}. Fields are as per the \code{Observed} table apart from fields:
\itemize{
\item \code{P.Year} year of planting (y)
\item \code{H.Year} year of harvest (or end of calculation window) (y)
\item \code{Variable} in rows with \code{Annual.Value} statistics are calculated for the year in question, statistics in \code{Dev.Mean} and \code{Dev.Med} rows show annual deviance from long-term averages (as presented in the\verb{[[LongTerm]][[LT.Clim.Avg]]} table)
}
\item**\verb{[[LongTerm]][[LT.Clim.Avg]]}* a \code{data.table} of long-term climate statistics calculated from the \verb{[[LongTerm]][[LT.Clim.Years]]} table. Fields are as per the \code{Observed} table apart from field:
\itemize{
\item \code{Variable} one of \code{Mean}, \code{Median}, \code{SD}, \code{Min} and \code{Max} indicating the function applied to each climate statistic across the temporal period for each location x crop x season
}
\item**\verb{[[BioClim]]}** = a list of three data.tables containing bioclimatic variables derived using the \link[dismo]{biovars} function
\item*\verb{[[BioClim]][[Annual.Estimates]]}* = annual estimates of bioclimatic variables for each location with fields:
\itemize{
\item \code{ID} unique ID for site provided to the \code{CalcClimate} function (for \code{ERA.Compiled} this is usually \code{Site.Key})
\item \verb{BIO1 to BIO19} bioclimatic variables, for an explanation of these codes see \code{ERAg::BioClimCodes}
\item \code{Variable} in rows with \code{Annual.Value} statistics are calculated for the year in question, statistics in \code{Dev.Mean} and \code{Dev.Med} rows show annual deviance from long-term averages (as presented in the\verb{[[BioClim]][[LT.Averages]]} table)
}
\item*\verb{[[BioClim]][[LT.Averages]]}* = a \code{data.table} of long-term climate statistics calculated from the \verb{[[BioClim]][[Annual.Estimates]]}, fields that differ are:
\itemize{
\item \code{Variable} one of \code{Mean}, \code{Median} or \code{SD} indicating the function applied to each BIO statistic across the temporal period for each location x crop x season
\item \code{N} number of years used to calculate long-term average
}
\item \emph{\verb{[[Parameters]]}} = a \code{list} record of argument values supplied to the \code{CalcClimate} function
}
}
\description{
The \code{CalcClimate} function applies a complex sequence of calculationsto ERA and climate data (e.g. \code{POwER.CHIRPS}) processed as per the \code{ERA-Climate-Data} vignette.
\code{CalcClimate} calculates seasonal and long-term average climate variables the deviance of the seasonal values from  long-term averages. \code{CalcClimate} can also
provide bioclimatic variables annually with long-term averages and annual deviances (argument \code{Do.BioClim=T}). The \code{Observed} data.table returned in the output list shows calculates
climate variables (such as growing degree days, total rainfall and dry-spells) using the ERA dataset provided and temporal windows of calculation defined using the
\code{Win.Start} and \code{Windows} arguments. Two calculations windows are defined by default: \code{Data} which uses the planting and harvest dates reported/estimated and \code{EcoCrop}
which uses the planting dates reported/estimated and EcoCrop estimates of season length. Additional windows of analysis (e.g. post planting 1-30 days after planting) can
are defined using the \code{Windows} argument. If argument \code{Do.LT.Avg=T}estimates of long-term climate are estimated using planting dates derived from the rainfall data supplied (and not the ERA data, unless
insufficient rainfall to estimate a planting date) and the arguments \code{Rain.Windows}, \code{Widths}, \code{Rain.Threshold} and \code{LongTerm}. The end years of the period for which
long-term averages are calculated is set using the \code{Max.LT.Avg} argument. Please carefully read the \strong{Details} and \strong{Arguments} section of this documentation before use.
}
\details{
Process:
\enumerate{
\item Season Length \code{SLen} is calculated as difference between mean planting and harvest dates.
\item The \code{SLen} function is applied to the data which combines accurate temporal planting/harvest data with estimates using the following and sequential logic:
i) where \code{(Plant.End-Plant.Start)>20}and a planting date derived from the \code{EstPDayRain} function is available \code{SLen} is substituted for
\code{Harvest.End} - rainfall estimate planting date;
ii) where \code{(Plant.End-Plant.Start<20) & (Harvest.End-Harvest.Start>=20)} \code{SLen} is substituted for \code{Harvest.End-(Plant.Start+(Plant.End-Plant.Start)/2)};
iii) A \code{P.Date.Merge} field is added to \code{DATA} as \code{Plant.Start+(Plant.End-Plant.Start)/2};
iv) Missing \code{NA} values of \code{P.Date.Merge} are substituted with estimates derived from similar nearby observations estimated using the \code{EstPDayData}
function;
v) A \code{SLen.Merge}  field is added to \code{DATA} equivalent to the \code{SLen} field with missing \code{NA} values substituted with estimates derived from similar nearby
observations estimated using the \code{EstSLenData} function;
vi) A \code{SLen.Ecocrop} field is added to \code{DATA} as \code{(cycle_min+cycle_max)/2};
vii) \code{DATA} is subset to data.table named \code{SS} which contains unique values of location, product, observation date and planting/harvest/season length
fields. Some form of planting date and season length estimate must be present;
vii) Where there is a difference of greater than 60\% between ecocrop vs data estimates of season length observations are rejected.
\emph{The use of Harvest.End in Steps i & ii is deliberate; when uncertainty is large using mean planting and harvest dates can result in unrealistically
short season lengths that distort measures of seasonal climate, especially precipitation. The use of Harvest.End may overestimate season length overall for highly uncertain
scenarios, but we consider the effect this on seasonal climate measures less severe.}
\item For each row of \code{SS} the \code{CLIMATE} dataset is filtered on the \code{Date} field for two temporal periods based on the date fields \code{P.Date.Merge} and \code{SLen.Merge}
or \code{SLen.Ecocrop}, note one day is added to \code{P.Date.Merge} so the temporal window begins the day after planting. An additional temporal windows can
be specified using data.table supplied to the \code{Windows} argument, the data.table requires three fields: 1) \code{Name}; 2) \code{Start} and 3) \code{End}. The
\code{Start} and \code{End} fields define the additional temporal period as days after\code{P.Date.Merge}.For example \code{Window=data.table(Name="Plant.1-30",Start=1,End=30)}
is a temporal period from planting to 30 days after planting.
\item For each temporal period specified in 3) climate statistics are calculated:
i) \strong{growing degrees days (GDD)} are calculated using the \code{GDDcalc} function which requires daily \code{Tmax} and \code{Tmin} fields from \code{CLIMATE} and the EcoCrop
optimal and absolute temperate thresholds (fields \code{Tlow}, \code{Topt.low}, \code{Topt.high}, and \code{Thigh}) added to \code{DATA} using the \code{AddEcoCrop} function.
The \code{GDDcalc} function outputs four fields \code{GDDlow}, \code{GDDopt}, \code{GDDhigh} and \code{GDDmax} and the values of these are summed for the temporal period;
ii) \strong{precipitation and reference evapotranspiration (ETo)} statistics are estimated using the \code{RAIN.Calc} function which outputs a number of variables
described in the documentation for this function;
iii) \strong{max and mean temperatures} are averaged with standard deviation (\code{Tmax.Mean},\code{Tmax.sd},\code{Tmean.mean} and \code{Tmean.sd} fields).
\item If argument \code{Do.LT.Avg==T} annual and long-term climate statistics an planting dates are calculated  for each combination of location and product. Note
that each season in the data is treated separately. The process logic is as follows:
i) The median planting julian day of the year is taken for the location x product combination;
ii) For each year of complete climate data, the median planting date from i) is used as a starting point to estimate planting date from rainfall using the
\code{Est.Rain} function which takes the arguments \code{Rain.Windows}, \code{Widths} and \code{Rain.Threshold} as explained in the arguments for this function. These data are
returned as \verb{[[LongTerm]][[LT.PD.Years]]};
iii) Estimated planting dates from ii) are averaged (mean, sd, median) across years and returned as \verb{[[LongTerm]][[LT.PD.Avg]]};
iv) Annual planting date deviance is calculated as the absolute difference between the annual and mean/median planting dates and appended to
the output of ii);
v) Annual climate statistics are calculated for each year x site x product combination using the rainfall estimated planting date and as per steps
3 & 4. Data are return as \verb{[[LongTerm]][[LT.Clim.Years]]}. Where insufficient rainfall fell to meet the thresholds specified in ii) then the a median
planting date is substituted from those years that did have sufficient rainfall in ii);
vi) Long-term climate statistics from v) are calculated across years for mean, median, standard deviation, minimum and maximum statistics. Data are
returned \verb{[[LongTerm]][[LT.Clim.Avg]]};
vii) Deviance from long-term mean and median values for each climate statistic is appended as columns to the output of v).
\item If argument \code{Do.BioClim==T} then:
i) Annual bioclimatic values are calculated using the \link[dismo]{biovars} function for each complete year of
data in \code{CLIMATE} per unique locationas (\code{ID} field) in \code{DATA}. The output data is return as [\link{Annual.BioClim}][\link{Annual.Estimates}]\verb{;   ii) Bioclim variables are averaged over time to give long-term mean and median values. The output data is return as [[Annual.BioClim]][[LT.Averages]]};
iii) Deviance from long-term mean and median values for each climate statistic is appended as columns to the output of i).
}

If you are finding there are observations with suspiciously short reported season lengths in the ERA dataset (i.e. errors in the reporting of
planting and/or harvest dates) you can exclude observations (\code{Exclude.EC.Diff}) where the absolute difference between reported and EcoCrop estimated season lengths
is greater than a specified proportion (\code{EC.Diff}).
}
