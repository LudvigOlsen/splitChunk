
#' @title Split code chunk.
#' @description Addin for RStudio for splitting code chunks in R Markdown.
#'
#' See \code{details} for setting up key command.
#' @author Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}
#' @export
#' @return Inserts ``` \\n\\n ```\{r\}
#' @details How to set up key command in RStudio:
#'
#' After installing package.
#' Go to Tools >> Addins >> Browse Addins >> Keyboard Shortcuts.
#' Find "Split Code Chunk" and press its field under Shortcut.
#' Press desired key command.
#' Press Apply.
#' Press Execute.
splitChunk <- function() {
  rstudioapi::insertText("```\n\n```{r}")

  adc <- rstudioapi::getActiveDocumentContext()

  # Get cursor position
  start <- adc$selection[1][[1]]$range$start

  # Find coordinates for position
  # between chunks
  start['row'] <- start['row'] -1
  start['column'] <- 1

  # Set cursor in between chunks
  rstudioapi::setCursorPosition(c(start['row'], start['column']), id = NULL)


}



