#' ReporteRs is an R package for creating Microsoft (Word docx 
#' and Powerpoint pptx) and html documents.
#' 
#' \tabular{ll}{
#' Package: \tab ReporteRs\cr
#' Type: \tab Package\cr
#' Version: \tab 0.4\cr
#' Date: \tab 2014-03-13\cr
#' License: \tab GPL (>= 3)\cr
#' LazyLoad: \tab yes\cr
#' }
#' 
#' To get an r document object:
#' \itemize{
#'   \item \code{\link{docx}} Create a Microsoft Word document object
#'   \item \code{\link{pptx}} Create a Microsoft PowerPoint document object
#'   \item \code{\link{html}} Create an HTML document object
#' }
#' 
#' The following functions can be used whatever the output format is (docx, pptx, html).
#' 
#' \itemize{
#'   \item \code{\link{addTitle}} Add a title
#'   \item \code{\link{addTable}} Add a table
#'   \item \code{\link{addFlexTable}} Add a table (new)
#'   \item \code{\link{addPlot}} Add plots
#'   \item \code{\link{addImage}} Add external images
#'   \item \code{\link{addParagraph}} Add paragraphs of text
#'   \item \code{\link{writeDoc}} Write the document into a file or a directory
#' }
#' 
#' Note that html is experimental. 
#' 
#' Default values:
#' 
#' With ReporteRs, some options can be used to reduce usage of some parameters:
#' \itemize{
#'   \item \code{ReporteRs-default-font} Default font family to use (default to "Helvetica").
#' This will be used as default values for argument \code{fontname} of \code{\link{addPlot}}
#' and argument \code{font.family} of \code{\link{pot}}.
#' 
#'   \item \code{ReporteRs-fontsize} Default font size to use (default to 11).
#' This will be used as default values for argument \code{pointsize} of \code{\link{addPlot}}
#' and argument \code{font.size} of \code{\link{pot}}.
#' 
#'   \item \code{ReporteRs-locale.language} language encoding (for html objects). Default to "en".
#'   \item \code{ReporteRs-locale.region} region encoding (for html objects). Default to "US".
#' }
#' 
#' example:
#' 
#' options(ReporteRs-fontsize=10, ReporteRs-default-font="Arial")
#' 
#' @name ReporteRs-package
#' @aliases ReporteRs
#' @title ReporteRs: a package to create document from R
#' @author David Gohel \email{david.gohel@@lysis-consultants.fr}
#' @docType package
NULL

#' Dummy dataset used in ReporterRs examples
#' 
#' A dataset containing several data types and few rows
#' 
#' \itemize{
#'   \item col1 a character vector
#'   \item col2 an integer vector
#'   \item col3 a double vector
#'   \item col4 a date vector
#'   \item col5 a double vector (percent values)
#'   \item col6 a boolean vector
#' }
#' 
#' @docType data
#' @keywords datasets
#' @name data_ReporteRs
#' @usage data(data_ReporteRs)
#' @format A data frame with 4 rows and 6 variables
NULL


#' melanoma dataset from boot package
#' 
#' Transformed dataset to reproduce blog :
#' http://gforge.se/2014/01/fast-track-publishing-using-knitr-part-iv/
#' 
#' 
#' @docType data
#' @keywords datasets
#' @name gforge_datacopy
#' @usage data(gforge_datacopy)
#' @format A data frame with 4 rows and 10 variables
NULL