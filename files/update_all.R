#' update_all
#'
#' @description Function to execute three package update commands.
#'
#' @return None.
#'
#' @export
#'
update_all <- function() {

  message(crayon::white("Running 'update.packages(ask = FALSE)'..."))
  suppressWarnings(suppressMessages(update.packages(ask = FALSE)))
  message(crayon::green("Done!\n"))

  message(crayon::white(
    "Running 'devtools::update_packages(quiet = TRUE, upgrade = TRUE)'..."
  ))
  devtools::update_packages(quiet = TRUE, upgrade = TRUE)
  message(crayon::green("Done!\n"))

  message(crayon::white("Running 'BiocManager::install(ask = FALSE)'..."))
  suppressMessages(BiocManager::install(ask = FALSE))
  message(crayon::green("Done!"))
}
