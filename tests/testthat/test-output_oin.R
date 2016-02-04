context("Verify correct output oin")

test_that("oin_ctrl2 gives correct output", {
  num_to_check <-
    c("202100-6255","121212-1212","19121212-1212","19121212+1212","121212+1212","1212121212",
      "12121212","121212121212",1212121212, NA, Inf, TRUE, F, "foo", 123, 456L)
  expect_equal(
    unname(oin_ctrl2(num_to_check)), c(
      TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE
    )
  )
  expect_false(oin_ctrl2(""))
  expect_true(oin_ctrl2("202100-5448"))
})
