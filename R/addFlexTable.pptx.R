#' @title Insert a FlexTable into a docx object
#'
#' @description Insert a FlexTable into a docx object
#' 
#' @param doc docx object
#' @param flextable the \code{FlexTable} object
#' @param ... further arguments - not used
#' @return a docx object
#' @export
#' @seealso \code{\link{FlexTable}}
#' @examples
#' #START_TAG_TEST
#' data( data_ReporteRs )
#' 
#' myFlexTable = FlexTable( data = data_ReporteRs, span.columns = "col1"
#' 	, header.columns = TRUE, row.names=FALSE )
#' 
#' myFlexTable[ 1:2, 2:3] = textProperties( color="red" )
#' myFlexTable[ 3:4, 4:5] = parProperties( text.align="right" )
#' myFlexTable[ 1:2, 5:6] = cellProperties( background.color="#F2969F")
#' 
#' myFlexTable = setFlexCellContent( myFlexTable, 3, 6, pot("Hello"
#' 	, format=textProperties(font.weight="bold") ) + pot("World"
#' 	, format=textProperties(font.weight="bold", vertical.align="superscript") ) )
#' 
#' doc = pptx( title = "title" )
#' doc = addSlide( doc, slide.layout = "Title and Content" )
#' doc = addFlexTable( doc, myFlexTable )
#' writeDoc( doc, "addFlexTable_example.pptx")
#' #STOP_TAG_TEST
#' @method addFlexTable pptx
#' @S3method addFlexTable pptx
addFlexTable.pptx = function(doc, flextable, ... ) {
			
	out = .jcall( doc$current_slide, "I", "add", flextable$jobj )
	if( isSlideError( out ) ){
		stop( getSlideErrorString( out , "table") )
	}
	doc
}

