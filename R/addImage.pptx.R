#' @title Insert an external image into a pptx object
#'
#' @description Add an external image into a \code{"pptx"} object.
#' 
#' @param doc Object of class \code{"pptx"} where external image has to be added
#' @param filename \code{"character"} value, complete filename of the external image
#' @param ... further arguments, not used. 
#' @details 
#' image is added to the next free 'content' shape of the current slide. 
#' See \code{\link{slide.layouts.pptx}} to view the slide layout.
#' @return an object of class \code{"pptx"}.
#' @examples
#' #START_TAG_TEST
#' # Create a new document 
#' doc = pptx( title = "title" )
#' 
#' # add a slide with layout "Title and Content" then add an image
#' doc = addSlide( doc, slide.layout = "Title and Content" )
#' 
#' # the file 'logo.jpg' only exists in R for Windows
#' img.file = file.path( Sys.getenv("R_HOME"), "doc", "html", "logo.jpg" )
#' doc <- addImage(doc, img.file )
#' 
#' writeDoc( doc, "addImage_example.pptx" )
#' #STOP_TAG_TEST
#' @seealso \code{\link{pptx}}, \code{\link{addPlot.pptx}}
#' , \code{\link{addImage}}
#' @method addImage pptx
#' @S3method addImage pptx

addImage.pptx = function(doc, filename, ... ) {
	
	slide = doc$current_slide 
	out = .jcall( slide, "I", "addPicture", filename )
	if( isSlideError( out ) ){
		stop( getSlideErrorString( out , "image") )
	}	
	doc
}
