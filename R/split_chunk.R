
#' @title Split code chunk.
#' @description Addin for RStudio for splitting code chunks in R Markdown.
#'
#' See \code{details} for setting up key command.
#' @author Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}
#' @export
#' @return Inserts ``` \\n\\n ```\{r\}
#' @details How to set up key command:
splitChunk <- function() {
  rstudioapi::insertText("```\n\n```{r}")
}



