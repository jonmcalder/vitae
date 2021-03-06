#' Output formats for CVs
#'
#' Each function is a wrapper for \code{\link[vitae]{cv_document}} to
#' produce curriculum vitae
#'
#' @param \dots Arguments passed to \code{\link[vitae]{cv_document}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Mitchell O'Hara-Wild and Rob J Hyndman
#'
#' @name cv_formats
#'
#' @rdname cv_formats
#'
#' @export
hyndman <- function(...) {
  template <- system.file("rmarkdown", "templates", "hyndman",
    "resources", "hyndmantemplate.tex",
    package = "vitae"
  )
  cv_document(..., template = template, citation_package = "biblatex")
}

#' @rdname cv_formats
#' @export
twentyseconds <- function(...) {
  template <- system.file("rmarkdown", "templates", "twentyseconds",
    "resources", "twentysecondstemplate.tex",
    package = "vitae"
  )
  copy_supporting_files("twentyseconds")
  cv_document(..., template = template, citation_package = "biblatex")
}

#' @rdname cv_formats
#' @export
awesomecv <- function(...) {
  template <- system.file("rmarkdown", "templates", "awesomecv",
    "resources", "awesome-cv.tex",
    package = "vitae"
  )
  copy_supporting_files("awesomecv")
  cv_document(..., template = template, citation_package = "biblatex", latex_engine = "xelatex")
}

#' @rdname cv_formats
#' @export
moderncv <- function(...) {
  template <- system.file("rmarkdown", "templates", "moderncv",
    "resources", "moderncv.tex",
    package = "vitae"
  )
  copy_supporting_files("moderncv")
  cv_document(..., template = template, citation_package = "biblatex", latex_engine = "xelatex")
}
