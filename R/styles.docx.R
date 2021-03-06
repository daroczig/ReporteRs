#' @title Get styles names of a docx document 
#'
#' @description Get styles names that exist into the template (base document).
#' 
#' @param doc Object of class \code{docx} to extract style names from.
#' @param ... further arguments, not used. 
#' @details Available styles will be paragraph styles of the base document (e.g. Normal, Title1, etc.).
#' @examples
#' #START_TAG_TEST
#' # Create a new document 
#' doc = docx( title = "title" )
#' styles(doc) #returns available paragraph styles in a character vector
#' #STOP_TAG_TEST
#' @seealso \code{\link{docx}}, \code{\link{styles}}
#' @method styles docx
#' @S3method styles docx

styles.docx = function( doc, ... ) {
	.jcall( doc$obj, "[S", "getStyleNames" )
	}


