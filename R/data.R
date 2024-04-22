#' ERA_Physical
#'
#'  \describe{
#'    \item{Latitude}{latitude of study location in decimal degrees}
#'    \item{Longitude}{longitude of study location in decimal degrees}
#'    \item{Buffer}{estimation in m of the spatial uncertainty for a point location}
#'    \item{Site.Key}{longitude, latitude and buffer for the site}
#'    \item{Country}{country in which the site is located in}
#'    \item{ISO.3166.1.alpha.3}{three-letter country codes. See: https://www.iso.org/obp/ui/#search}
#'    \item{DEMcells}{number of DEM cells within the site buffer}
#'    \item{Altitude.med}{median altitude of the site}
#'    \item{Altitude.mean}{mean altitude of the site}
#'    \item{Altitude.sd}{standard deviation of altitude at the site}
#'    \item{Altitude.max}{maximum altitude of the site}
#'    \item{Altitude.min}{minimum altitude of the site}
#'    \item{Slope.med}{median slope of the site}
#'    \item{Slope.mean}{mean slope of the site}
#'    \item{Slope.sd}{standard deviation of slope at the site}
#'    \item{Slope.max}{maximum slope of the site}
#'    \item{Slope.min}{minimum slope of the site}
#'    \item{Aspect.med}{median aspect of the site}
#'    \item{Aspect.mean}{mean aspect of the site}
#'    \item{Aspect.sd}{standard deviation of aspect at the site}
#'    ...
#'  }
#' @source Void filled Aster GDEM version 2 downloaded from http://www.viewfinderpanoramas.org/Coverage%20map%20viewfinderpanoramas_org3.htm
"ERA_Physical"
#'
#' Bioclimatic Variables
#'
#' \describe{There are  19 bioclimatic variables which are derived from the monthly temperature and rainfall values in order to generate biologically meaningful variables.
#' These are often used in species distribution modeling and related ecological modeling techniques. The bioclimatic variables represent annual
#' trends (e.g., mean annual temperature, annual precipitation) seasonality (e.g., annual range in temperature and precipitation) and extreme or
#' limiting environmental factors (e.g., temperature of the coldest and warmest month, and precipitation of the wet and dry quarters). A quarter
#' is a period of three months (1/4 of the year).
#' Bioclim data are extracted and summarized for each unique ERA location plus its buffer of spatial uncertainty.
#'   \item{bio_1}{Annual Mean Temperature}
#'   \item{bio_2}{Mean Diurnal Range (Mean of monthly (max temp - min temp))}
#'   \item{bio_3}{Isothermality (BIO2/BIO7) (* 100)}
#'   \item{bio_4}{Temperature Seasonality (standard deviation *100)}
#'   \item{bio_5}{Max Temperature of Warmest Month}
#'   \item{bio_6}{Min Temperature of Coldest Month}
#'   \item{bio_7}{Temperature Annual Range (BIO5-BIO6)}
#'   \item{bio_8}{Mean Temperature of Wettest Quarter}
#'   \item{bio_9}{Mean Temperature of Driest Quarter}
#'   \item{bio_10}{Mean Temperature of Warmest Quarter}
#'   \item{bio_11}{Mean Temperature of Coldest Quarter}
#'   \item{bio_12}{Annual Precipitation}
#'   \item{bio_13}{Precipitation of Wettest Month}
#'   \item{bio_14}{Precipitation of Driest Month}
#'   \item{bio_15}{Precipitation Seasonality (Coefficient of Variation)}
#'   \item{bio_16}{Precipitation of Wettest Quarter}
#'   \item{bio_17}{Precipitation of Driest Quarter}
#'   \item{bio_18}{Precipitation of Warmest Quarter}
#'   \item{bio_19}{Precipitation of Coldest Quarter}
#'   ...
#' }
#' @source https://www.worldclim.org/data/bioclim.html version 2.1 climate data for 1970-2000, released in January 2020.
"ERA_BioClim"
#'
#' Landcover
#'
#' \describe{
#'  The CCI-LC project delivers a new time series of 24 consistent global LC maps at 300 m spatial resolution on an annual basis from 1992 to 2015.
#'  The number of raster cells of each landcover class for the year 2015 is summed for each unique ERA location and its buffer of spatial uncertainty.
#'  A description of the landcover classes (fields) in this dataset can be found in the *`ERA_CCI_LC_15_Fields`* object.
#'   ...
#' }
#' @source CCI-LC Land Cover Maps - v2.0.7 http://maps.elie.ucl.ac.be/CCI/viewer/download.php
"ERA_CCI_LC_15"
#'
#' ISDA Soil Parameters
#'
#' \describe{
#' Using the  African Soil and Agronomy Data Cube ISDA soil data were downloaded and summarized for each unique ERA locations and its buffer of spatial
#' uncertainty. Variable information & descriptions can be found on the African Soil and Agronomy Data Cube website.
#'   \item{Median}{median value of the soil variable}
#'   \item{Mean}{mean value of the soil variable}
#'   \item{SD}{standard deviation of the soil variable}
#'   \item{Mode}{mode value of the soil variable}
#'   \item{Sum}{sum of the soil variable}
#'   \item{Ncells}{number of ISDA cells within buffer}
#'   \item{NAcells}{number of NA ISDA cells within buffer}
#'   \item{Variable}{soil variables including the soil depth. Variable include bulk density, soil pH, sand, silt and clay content etc}
#'   \item{Site.Key}{longitude, latitude and buffer for the site}
#'   ...
#' }
#' @source ISDA: https://www.isda-africa.com/isdasoil/  African Soil and Agronomy Data Cube: https://gitlab.com/openlandmap/africa-soil-and-agronomy-data-cube.
"ERA_ISDA"
#'
#' Agroecological zones
#'
#' \describe{For each of the unique ERA locations and its buffer of spatial uncertainty, the agroecological zone is determined based on one of the three
#' classification schemes
#'   \item{Site.Key}{longitude, latitude and buffer for the unique ERA location}
#'   \item{AEZ16simple}{shorter name for AEZ16}
#'   \item{AEZ16}{agroecological zone using the scheme with 16 classes}
#'   \item{AEZ5}{agroecological zone using the scheme with 5 classes}
#'   \item{Mean.Annual.Precip}{mean annual precipitation at the ERA location}
#'   \item{Mean.Annual.Temp}{mean annual precipitation at the ERA location}
#'   ...
#' }
#' @source HarvestChoice; International Food Policy Research Institute (IFPRI), 2015, "Agro-Ecological Zones for Africa South of the Sahara", https://doi.org/10.7910/DVN/M7XIUB, Harvard Dataverse, V3
"ERA_AEZ_MAP_MAT"
#'
#' SoilGrids Parameters
#'
#' \describe{
#' Using ISRIC World Soil Information, soil data were downloaded and summarized for each unique ERA locations and its buffer of spatial
#' uncertainty.
#'   \item{Latitude}{latitude of study location in decimal degrees}
#'   \item{Longitude}{longitude of study location in decimal degrees}
#'   \item{Buffer}{estimation in m of the spatial uncertainty for a point location}
#'   \item{Site.Key}{longitude, latitude and buffer for the site}
#'   \item{ACDWRB_M_ss_250m.Mean}{mean values of Acid sub-soils grade. Grade of a sub-soil being acid e.g. having a pH < 5 and low BS}
#'   \item{ACDWRB_M_ss_250m.SD}{standard deviation of Acid sub-soils grade. Grade of a sub-soil being acid e.g. having a pH < 5 and low BS}
#'   \item{ACDWRB_M_ss_250m.Quantiles}{quantiles of Acid sub-soils grade. Grade of a sub-soil being acid e.g. having a pH < 5 and low BS}
#'   \item{AWCh1_M_sl1_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a dept of 0-5cm. Unit = percent}
#'   \item{AWCh1_M_sl1_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a dept of 0-5cm. Unit = percent}
#'   \item{AWCh1_M_sl1_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a dept of 0-5cm. Unit = percent}
#'   \item{AWCh1_M_sl2_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a depth of 5-15cm. Unit = percent}
#'   \item{AWCh1_M_sl2_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a depth of 5-15cm. Unit = percent}
#'   \item{AWCh1_M_sl2_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a depth of 5-15cm. Unit = percent}
#'   \item{AWCh1_M_sl3_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a depth of 15-30cm. Unit = percent}
#'   \item{AWCh1_M_sl3_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a depth of 15-30cm. Unit = percent}
#'   \item{AWCh1_M_sl3_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h1 (moisture potential in kPa, e.g. -10 (pF 2.0)) at a depth of 15-30cm. Unit = percent}
#'   \item{AWCh2_M_sl1_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 0-5cm. Unit = percent}
#'   \item{AWCh2_M_sl1_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 0-5cm. Unit = percent}
#'   \item{AWCh2_M_sl1_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 0-5cm. Unit = percent}
#'   \item{AWCh2_M_sl2_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 5-15cm. Unit = percent}
#'   \item{AWCh2_M_sl2_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 5-15cm. Unit = percent}
#'   \item{AWCh2_M_sl2_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 5-15cm. Unit = percent}
#'   \item{AWCh2_M_sl3_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 15-30cm. Unit = percent}
#'   \item{AWCh2_M_sl3_250m.SD}{standard deviation of}{Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 15-30cm. Unit = percent}
#'   \item{AWCh2_M_sl3_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h2 (moisture potential in kPa, e.g. -20 (pF 2.3)) at a depth of 15-30cm. Unit = percent}
#'   \item{AWCh3_M_sl1_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 0-5cm. Unit = percent}
#'   \item{AWCh3_M_sl1_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 0-5cm. Unit = percent}
#'   \item{AWCh3_M_sl1_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 0-5cm. Unit = percent}
#'   \item{AWCh3_M_sl2_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 5-15cm. Unit = percent}
#'   \item{AWCh3_M_sl2_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 5-15cm. Unit = percent}
#'   \item{AWCh3_M_sl2_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 5-15cm. Unit = percent}
#'   \item{AWCh3_M_sl3_250m.Mean}{mean value of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 15-30cm. Unit = percent}
#'   \item{AWCh3_M_sl3_250m.SD}{standard deviation of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 15-30cm. Unit = percent}
#'   \item{AWCh3_M_sl3_250m.Quantiles}{quantiles of Available soil water capacity (volumetric fraction) for h3 (moisture potential in kPa, e.g. -31.6  (pF 2.5)) at a dept of 15-30cm. Unit = percent}
#'   \item{AWCtS_M_sl1_250m.Mean}{mean value of Saturated water content (volumetric fraction) for tS at a depth of 0-5cm. Unit = percent}
#'   \item{AWCtS_M_sl1_250m.SD}{standard deviation of Saturated water content (volumetric fraction) for tS at a depth of 0-5cm. Unit = percent}
#'   \item{AWCtS_M_sl1_250m.Quantiles}{quantiles of Saturated water content (volumetric fraction) for tS at a depth of 0-5cm. Unit = percent}
#'   \item{AWCtS_M_sl2_250m.Mean}{mean value of Saturated water content (volumetric fraction) for tS at a depth of 5-15cm. Unit = percent}
#'   \item{AWCtS_M_sl2_250m.SD}{standard deviation of Saturated water content (volumetric fraction) for tS at a depth of 5-15cm. Unit = percent}
#'   \item{AWCtS_M_sl2_250m.Quantiles}{quantiles of Saturated water content (volumetric fraction) for tS at a depth of 5-15cm. Unit = percent}
#'   \item{AWCtS_M_sl3_250m.Mean}{mean value of Saturated water content (volumetric fraction) for tS at a depth of 15-30cm. Unit = percent}
#'   \item{AWCtS_M_sl3_250m.SD}{standard deviation of Saturated water content (volumetric fraction) for tS at a depth of 15-30cm. Unit = percent}
#'   \item{AWCtS_M_sl3_250m.Quantiles}{quantiles of Saturated water content (volumetric fraction) for tS at a depth of 15-30cm. Unit = percent}
#'   \item{BDRICM_M_250m.Mean}{mean value of Depth to bedrock (R horizon) up to 200 cm. Unit = cm}
#'   \item{BDRICM_M_250m.SD}{standard deviation of Depth to bedrock (R horizon) up to 200 cm. Unit = cm}
#'   \item{BDRICM_M_250m.Quantiles}{quantiles of Depth to bedrock (R horizon) up to 200 cm. Unit = cm}
#'   \item{BDRLOG_M_250m.Mean}{mean value of the Probability of occurrence of R horizon. Unit = percent}
#'   \item{BDRLOG_M_250m.SD}{standard deviation of the  Probability of occurrence of R horizon. Unit = percent}
#'   \item{BDRLOG_M_250m.Quantiles}{quantile of the Probability of occurrence of R horizon. Unit = percent}
#'   \item{BDTICM_M_250m.Mean}{mean value of the Absolute depth to bedrock. Unit = cm}
#'   \item{BDTICM_M_250m.SD}{standard deviation of the Absolute depth to bedrock. Unit = cm}
#'   \item{BDTICM_M_250m.Quantiles}{quantile of the Absolute depth to bedrock. Unit = cm}
#'   \item{BLDFIE_M_sl1_250m.Mean}{mean value of Bulk density (fine earth) in kg per cubic meter at a depth of 0-5cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl1_250m.SD}{standard deviation of Bulk density (fine earth) in kg per cubic meter at a depth of 0-5cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl1_250m.Quantiles}{quantiles of Bulk density (fine earth) in kg per cubic meter at a depth of 0-5cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl2_250m.Mean}{mean value of Bulk density (fine earth) in kg per cubic meter at a depth of 5-15cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl2_250m.SD}{standard deviation of Bulk density (fine earth) in kg per cubic meter at a depth of 5-15cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl2_250m.Quantiles}{quantiles of Bulk density (fine earth) in kg per cubic meter at a depth of 5-15cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl3_250m.Mean}{mean value of Bulk density (fine earth) in kg per cubic meter at a depth of 15-30cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl3_250m.SD}{standard deviation of Bulk density (fine earth) in kg per cubic meter at a depth of 15-30cm. Unit = kg/cubic-m}
#'   \item{BLDFIE_M_sl3_250m.Quantiles}{quantiles of Bulk density (fine earth) in kg per cubic meter at a depth of 15-30cm. Unit = kg/cubic-m}
#'   \item{CECSOL_M_sl1_250m.Mean}{mean of Cation Exchange Capacity of soil at a depth of 0-5cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl1_250m.SD}{standard deviation of Cation Exchange Capacity of soil at a depth of 0-5cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl1_250m.Quantiles}{quantiles of Cation Exchange Capacity of soil at a depth of 0-5cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl2_250m.Mean}{mean of Cation Exchange Capacity of soil at a depth of 5-15cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl2_250m.SD}{standard deviation of Cation Exchange Capacity of soil at a depth of 5-15cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl2_250m.Quantiles}{Cation Exchange Capacity of soil at a depth of 5-15cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl3_250m.Mean}{mean of Cation Exchange Capacity of soil at a depth of 15-30cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl3_250m.SD}{standard deviation of Cation Exchange Capacity of soil at a depth of 15-30cm. Unit = cmol/kg}
#'   \item{CECSOL_M_sl3_250m.Quantiles}{standard deviation of Cation Exchange Capacity of soil at a depth of 15-30cm. Unit = cmol/kg}
#'   \item{CLYPPT_M_sl1_250m.Mean}{mean of Weight percentage of the clay particles (<0.0002 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{CLYPPT_M_sl1_250m.SD}{standard deviation of Weight percentage of the clay particles (<0.0002 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{CLYPPT_M_sl1_250m.Quantiles}{quantiles of Weight percentage of the clay particles (<0.0002 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{CLYPPT_M_sl2_250m.Mean}{mean of Weight percentage of the clay particles (<0.0002 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{CLYPPT_M_sl2_250m.SD}{standard deviation of Weight percentage of the clay particles (<0.0002 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{CLYPPT_M_sl2_250m.Quantiles}{quantiles of Weight percentage of the clay particles (<0.0002 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{CLYPPT_M_sl3_250m.Mean}{mean of Weight percentage of the clay particles (<0.0002 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{CLYPPT_M_sl3_250m.SD}{standard deviation of Weight percentage of the clay particles (<0.0002 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{CLYPPT_M_sl3_250m.Quantiles}{quantiles of Weight percentage of the clay particles (<0.0002 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{CRFVOL_M_sl1_250m.Mean}{mean value of Volumetric percentage of coarse fragments (>2 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{CRFVOL_M_sl1_250m.SD}{standard deviation of Volumetric percentage of coarse fragments (>2 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{CRFVOL_M_sl1_250m.Quantiles}{quantiles of Volumetric percentage of coarse fragments (>2 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{CRFVOL_M_sl2_250m.Mean}{mean value of Volumetric percentage of coarse fragments (>2 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{CRFVOL_M_sl2_250m.SD}{standard deviation of Volumetric percentage of coarse fragments (>2 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{CRFVOL_M_sl2_250m.Quantiles}{quantiles of Volumetric percentage of coarse fragments (>2 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{CRFVOL_M_sl3_250m.Mean}{mean value of Volumetric percentage of coarse fragments (>2 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{CRFVOL_M_sl3_250m.SD}{standard deviation of Volumetric percentage of coarse fragments (>2 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{CRFVOL_M_sl3_250m.Quantiles}{quantiles of Volumetric percentage of coarse fragments (>2 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{gyga_af_erzd_limfactor__m_1km.Mean}{mean of rootable depth limiting soil factor for maize, mapped at 1km resolution}
#'   \item{gyga_af_erzd_limfactor__m_1km.SD}{standard deviation of rootable depth limiting soil factor for maize, mapped at 1km resolution}
#'   \item{gyga_af_erzd_limfactor__m_1km.Quantiles}{quantiles of rootable depth limiting soil factor for maize, mapped at 1km resolution}
#'   \item{OCSTHA_M_sd1_250m.Mean}{mean value of Soil organic carbon stock in tons per ha at a depth of 0-5cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd1_250m.SD}{standard deviation of Soil organic carbon stock in tons per ha at a depth of 0-5cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd1_250m.Quantiles}{quantiles of Soil organic carbon stock in tons per ha at a depth of 0-5cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd2_250m.Mean}{mean value of Soil organic carbon stock in tons per ha at a depth of 5-15cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd2_250m.SD}{standard deviation of Soil organic carbon stock in tons per ha at a depth of 5-15cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd2_250m.Quantiles}{quantiles of Soil organic carbon stock in tons per ha at a depth of 5-15cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd3_250m.Mean}{mean value of Soil organic carbon stock in tons per ha at a depth of 15-30cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd3_250m.SD}{standard deviation of Soil organic carbon stock in tons per ha at a depth of 15-30cm. Unit = tonnes/ha}
#'   \item{OCSTHA_M_sd3_250m.Quantiles}{quantiles of Soil organic carbon stock in tons per ha at a depth of 15-30cm. Unit = tonnes/ha}
#'   \item{ORCDRC_M_sl1_250m.Mean}{mean value of soil organic carbon content in permille at a depth of 0-5cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl1_250m.SD}{standard deviation of soil organic carbon content in permille at a depth of 0-5cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl1_250m.Quantiles}{quantiles of soil organic carbon content in permille at a depth of 0-5cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl2_250m.Mean}{mean value of soil organic carbon content in permille at a depth of 5-15cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl2_250m.SD}{standard deviation of soil organic carbon content in permille at a depth of 5-15cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl2_250m.Quantiles}{quantiles of soil organic carbon content in permille at a depth of 5-15cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl3_250m.Mean}{mean value of soil organic carbon content in permille at a depth of 15-30cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl3_250m.SD}{standard deviation of soil organic carbon content in permille at a depth of 15-30cm. Unit = g/kg}
#'   \item{ORCDRC_M_sl3_250m.Quantiles}{quantiles of soil organic carbon content in permille at a depth of 15-30cm. Unit = g/kg}
#'   \item{PHIHOX_M_sl1_250m.Mean}{mean value of pH index measured in water solution at a depth of 0-5cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl1_250m.SD}{standard deviation of pH index measured in water solution at a depth of 0-5cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl1_250m.Quantiles}{quantiles of pH index measured in water solution at a depth of 0-5cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl2_250m.Mean}{mean value of pH index measured in water solution at a depth of 5-15cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl2_250m.SD}{pH index measured in water solution at a depth of 5-15cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl2_250m.Quantiles}{pH index measured in water solution at a depth of 5-15cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl3_250m.Mean}{mean value of pH index measured in water solution at a depth of 15-30cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl3_250m.SD}{pH index measured in water solution at a depth of 15-30cm. Unit = pH x10}
#'   \item{PHIHOX_M_sl3_250m.Quantiles}{pH index measured in water solution at a depth of 15-30cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl1_250m.Mean}{mean value of pH index measured in KCl solution at a depth of 0-5cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl1_250m.SD}{standard deviation of pH index measured in KCl solution at a depth of 0-5cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl1_250m.Quantiles}{quantiles of pH index measured in KCl solution at a depth of 0-5cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl2_250m.Mean}{mean value of pH index measured in KCl solution at a depth of 5-15cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl2_250m.SD}{standard deviation of pH index measured in KCl solution at a depth of 5-15cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl2_250m.Quantiles}{quantiles of pH index measured in KCl solution at a depth of 5-15cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl3_250m.Mean}{mean value of pH index measured in KCl solution at a depth of 15-30cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl3_250m.SD}{standard deviation of pH index measured in KCl solution at a depth of 15-30cm. Unit = pH x10}
#'   \item{PHIKCL_M_sl3_250m.Quantiles}{quantiles of pH index measured in KCl solution at a depth of 15-30cm. Unit = pH x10}
#'   \item{SLGWRB_250m.Mean}{mean value of Sodic soil grade based on WRB soil types and soil pH}
#'   \item{SLGWRB_250m.SD}{standard deviation of Sodic soil grade based on WRB soil types and soil pH}
#'   \item{SLGWRB_250m.Quantiles}{quantiles of Sodic soil grade based on WRB soil types and soil pH}
#'   \item{SLTPPT_M_sl1_250m.Mean}{mean value of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{SLTPPT_M_sl1_250m.SD}{standard deviation of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{SLTPPT_M_sl1_250m.Quantiles}{quantiles of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{SLTPPT_M_sl2_250m.Mean}{mean value of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{SLTPPT_M_sl2_250m.SD}{standard deviation of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{SLTPPT_M_sl2_250m.Quantiles}{quantiles of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{SLTPPT_M_sl3_250m.Mean}{mean value of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{SLTPPT_M_sl3_250m.SD}{standard deviation of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{SLTPPT_M_sl3_250m.Quantiles}{quantiles of Weight percentage of the silt particles (0.0002-0.05 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{SNDPPT_M_sl1_250m.Mean}{mean value of Weight percentage of the sand particles (0.05-2 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{SNDPPT_M_sl1_250m.SD}{standard deviation of Weight percentage of the sand particles (0.05-2 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{SNDPPT_M_sl1_250m.Quantiles}{quantiles of Weight percentage of the sand particles (0.05-2 mm) at a depth of 0-5cm. Unit = percent}
#'   \item{SNDPPT_M_sl2_250m.Mean}{mean value of Weight percentage of the sand particles (0.05-2 mm) at a depth of 5-15cm. Unit = percen}
#'   \item{SNDPPT_M_sl2_250m.SD}{standard deviation of Weight percentage of the sand particles (0.05-2 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{SNDPPT_M_sl2_250m.Quantiles}{quantiles of Weight percentage of the sand particles (0.05-2 mm) at a depth of 5-15cm. Unit = percent}
#'   \item{SNDPPT_M_sl3_250m.Mean}{mean value of Weight percentage of the sand particles (0.05-2 mm) at a depth of 15-30cm. Unit = percen}
#'   \item{SNDPPT_M_sl3_250m.SD}{standard deviation of Weight percentage of the sand particles (0.05-2 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{SNDPPT_M_sl3_250m.Quantiles}{quantiles of Weight percentage of the sand particles (0.05-2 mm) at a depth of 15-30cm. Unit = percent}
#'   \item{TAXNWRB_250m.Mode}{mode of Predicted WRB 2006 subgroup classes}
#'   \item{TAXOUSDA_250m.Mode}{predicted WRB 2006 subgroup classes}
#'   \item{TEXMHT_M_sl1_250m.Mean}{mean value of Texture class (USDA system) at a depth of 0-5cm. Unit = factor}
#'   \item{TEXMHT_M_sl1_250m.SD}{standard deviation of Texture class (USDA system) at a depth of 0-5cm. Unit = factor}
#'   \item{TEXMHT_M_sl1_250m.Quantiles}{quantiles of Texture class (USDA system) at a depth of 0-5cm. Unit = factor}
#'   \item{TEXMHT_M_sl2_250m.Mean}{mean value of Texture class (USDA system) at a depth of 5-15cm. Unit = factor}
#'   \item{TEXMHT_M_sl2_250m.SD}{standard deviation of Texture class (USDA system) at a depth of 5-15cm. Unit = factor}
#'   \item{TEXMHT_M_sl2_250m.Quantiles}{quantiles of Texture class (USDA system) at a depth of 5-15cm. Unit = factor}
#'   \item{TEXMHT_M_sl3_250m.Mean}{mean value of Texture class (USDA system) at a depth of 15-30cm. Unit = factor}
#'   \item{TEXMHT_M_sl3_250m.SD}{standard deviation of Texture class (USDA system) at a depth of 15-30cm. Unit = factor}
#'   \item{TEXMHT_M_sl3_250m.Quantiles}{quantiles of Texture class (USDA system) at a depth of 15-30cm. Unit = factor}
#'   \item{WWP_M_sl1_250m.Mean}{mean value of available soil water capacity (volumetric fraction) until wilting point at a depth of 0-5cm. Unit = percent}
#'   \item{WWP_M_sl1_250m.SD}{standard deviation of available soil water capacity (volumetric fraction) until wilting point at a depth of 0-5cm. Unit = percent}
#'   \item{WWP_M_sl1_250m.Quantiles}{quantiles of available soil water capacity (volumetric fraction) until wilting point at a depth of 0-5cm. Unit = percent}
#'   \item{WWP_M_sl2_250m.Mean}{mean value of available soil water capacity (volumetric fraction) until wilting point at a depth of 5-15cm. Unit = percent}
#'   \item{WWP_M_sl2_250m.SD}{standard deviation of available soil water capacity (volumetric fraction) until wilting point at a depth of 5-15cm. Unit = percent}
#'   \item{WWP_M_sl2_250m.Quantiles}{quantiles of available soil water capacity (volumetric fraction) until wilting point at a depth of 5-15cm. Unit = percent}
#'   \item{WWP_M_sl3_250m.Mean}{mean value of available soil water capacity (volumetric fraction) until wilting point at a depth of 15-30cm. Unit = percent}
#'   \item{WWP_M_sl3_250m.SD}{standard deviation of available soil water capacity (volumetric fraction) until wilting point at a depth of 15-30cm. Unit = percent}
#'   \item{WWP_M_sl3_250m.Quantiles}{quantiles of available soil water capacity (volumetric fraction) until wilting point at a depth of 15-30cm. Unit = percent}
#'  ...
#' }
#' @source https://www.isda-africa.com/isdasoil/?location=13.812%2C-21.671%2C43.677%2C-0.051 & https://github.com/ISRICWorldSoil/SoilGrids250m/blob/master/grids/models/TAXNWRB/TAXNWRB_legend.csv & https://github.com/ISRICWorldSoil/SoilGrids250m/blob/master/grids/models/TAXOUSDA/TAXOUSDA_legend.csv
"ERA_SoilGrids18"

#' ERA CSA search bibliography 2013-2018
#'
#' This dataset contains the results of deduplicated WoS and Scopus ERA search
#' for the years 2013-2018. The searches, detailed in `ERA_Search_Terms` from the ERAg package,
#' were conducted in May 2018. The search covers Africa.
#'
#' @format A data frame with rows representing research articles and the following columns:
#' \describe{
#'   \item{\code{CATEGORY}}{Type of publication}
#'   \item{\code{AUTHOR}}{Authors of the publication}
#'   \item{\code{BOOKTITLE}}{Title of the book, NA if the publication is in a journal}
#'   \item{\code{CHAPTER}}{The chapter number in the book}
#'   \item{\code{EDITION}}{Edition of the book}
#'   \item{\code{EDITOR}}{Editors of the publication}
#'   \item{\code{INSTITUTION}}{Institution associated with the publication}
#'   \item{\code{JOURNAL}}{Journal in which the article was published}
#'   \item{\code{MONTH}}{Month of publication}
#'   \item{\code{NUMBER}}{Journal number within the year}
#'   \item{\code{ORGANIZATION}}{Organization associated with the publication}
#'   \item{\code{PAGES}}{Page numbers of the publication}
#'   \item{\code{PUBLISHER}}{Publisher of the publication}
#'   \item{\code{SERIES}}{Series name of the publication}
#'   \item{\code{TITLE}}{Title of the article}
#'   \item{\code{TYPE}}{Type of article}
#'   \item{\code{VOLUME}}{Volume of the journal}
#'   \item{\code{YEAR}}{Year of publication}
#'   \item{\code{DOI}}{Digital Object Identifier of the article}
#'   \item{\code{ISSN}}{International Standard Serial Number of the journal}
#'   \item{\code{URL}}{Web address of the journal article}
#'   \item{\code{ERACODE}}{Unique data entry code}
#'   \item{\code{KEYWORDS}}{Keywords used in the article}
#'   \item{\code{ABSTRACT}}{Brief summary of the publication}
#'   \item{\code{FILE}}{File path or identifier within the dataset}
#'   \item{\code{ISBN}}{International Standard Book Number, applicable only for books}
#'   \item{\code{NoAccess}}{Indicates if the paper could not be accessed due to subscription issues}
#'   \item{\code{Passed.FT}}{Indicates if the article passed full text screening}
#'   \item{\code{Passed.TA}}{Indicates if the article passed title and abstract screening}
#'}
#' @source WoS and Scopus ERA search results
"ERA_13_18_bib_cleaned"

