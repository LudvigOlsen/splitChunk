
#' @title Split code chunk.
#' @description Addin for RStudio for splitting code chunks in R Markdown.
#'
#' See \code{details} for setting up key command.
#' @author Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}
#' @export
#' @return Inserts \code{```\\n\\n```\{r\}}
#' @details How to set up key command in RStudio:
#'
#' After installing package.
#' Go to:
#'
#' \code{Tools} >> \code{Addins} >> \code{Browse Addins} >> \code{Keyboard Shortcuts}.
#'
#' Find \code{"Split Code Chunk"} and press its field under \code{Shortcut}.
#'
#' Press desired key command.
#'
#' Press \code{Apply}.
#'
#' Press \code{Execute}.
splitChunk <- function() {

  # Insert text that splits the code chunk in two
  rstudioapi::insertText("```\n\n```{r}")

  # Get document context
  # to get cursor position
  adc <- rstudioapi::getActiveDocumentContext()

  # Get cursor position
  start <- adc$selection[1][[1]]$range$start

  # Set cursor in-between chunks
  rstudioapi::setCursorPosition(c(start['row'] -1, 1), id = NULL)


}



