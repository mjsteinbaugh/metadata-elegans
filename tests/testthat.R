library(testthat)
library(WormBase)
## WormBase server must be online to run unit tests.
check <- tryCatch(
    expr = suppressMessages(currentRelease()),
    error = function(e) e
)
if (!is(check, "error")) {
    test_check("WormBase")
}
