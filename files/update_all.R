#' update_all
#'
#' @description Function to execute three package update commands.
#'
#' @return None.
#'
#' @export
#'
update_all <- function() {

  message("Running 'update.packages()'...")
  suppressWarnings(suppressMessages(update.packages()))
  message(crayon::green("Done!\n"))

  message("Running 'devtools::update_packages()'...")
  devtools::update_packages()
  message(crayon::green("Done!\n"))

  message("Running 'BiocManager::install()'...")
  suppressMessages(BiocManager::install())
  message(crayon::green("Done!"))
}
