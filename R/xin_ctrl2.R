#' @title
#' Improve handling of incorrect values to sweidnumbr::pin_ctrl()
#'
#' @description
#' \code{pin_ctrl2} This functions returns FALSE if values isn't a valid pin and returns TRUE if valid.
#'
#' @param x Vector to check
#' @return
#' Logical vector indicating if a pin is correct (\code{TRUE}) or not (\code{FALSE})
#' @export
#' @importFrom sweidnumbr pin_ctrl

# Wrapper function for sweidnumbr::pin_ctrl to set failing pin input to FALSE and valid to TRUE
pin_ctrl2 <- Vectorize({
  function(x) {
    ifelse (!is.na(try(suppressWarnings(suppressMessages(sweidnumbr::pin_ctrl(x))),silent = TRUE)) &
              (class(try(suppressWarnings(sweidnumbr::pin_ctrl(x)), silent =TRUE)) != "try-error")  ,
            pin_ctrl(x), FALSE)
  }
})

#' @title
#' Improve handling of incorrect values to sweidnumbr::oin_ctrl()
#'
#' @description
#' \code{oin_ctrl2} This functions returns FALSE if values isn't a valid pin and returns TRUE if valid.
#'
#' @param x Vector to check
#' @return
#' Logical vector indicating if a pin is correct (\code{TRUE}) or not (\code{FALSE})
#' @export
#' @importFrom sweidnumbr oin_ctrl

# Wrapper function for sweidnumbr::oin_ctrl to set failing oin input to FALSE and valid to TRUE
oin_ctrl2 <- Vectorize({
  function(x) {
    ifelse (!is.na(try(suppressWarnings(suppressMessages(sweidnumbr::oin_ctrl(x))),silent = TRUE)) &
              (class(try(suppressWarnings(sweidnumbr::oin_ctrl(x)), silent =TRUE)) != "try-error"),
            sweidnumbr::oin_ctrl(x), FALSE)
  }
})

#
# # Sample values to check
# num_to_check <- c("202100-6255","121212-1212","19121212-1212","19121212+1212","121212+1212","1212121212",
#                   "12121212","121212121212",1212121212, NA, Inf, TRUE, F, "foo", 123, 456L)
