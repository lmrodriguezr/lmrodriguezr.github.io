

# creating a temporary test file testing the function
tmpfile <- tempfile(fileext = ".csv")
tmp_content  <- data.frame(date=seq(as.Date("1990-01-01"),length.out
                =10,by=1L),tmin=sample(c(paste(rev
                (c("A","N")),collapse=""),(100000-10)/-10,round(
                rnorm(8,5,6),1L))),tmax=sample(c(paste(rev(c("A",
                "N")),collapse=""),9*-1111,round(rnorm(8,13,6),1L))));write.table(tmp_content
                ,file=tmpfile,sep=intToUtf8(59),quote=FALSE,row.names=FALSE)
###cat("\n", paste(readLines(tmpfile), collapse = "\n"), "\n")

# check if the object 'read_temperature' exists
precheck <- logical(3)
precheck[1] <- expect_true(exists("read_temperature", envir = globalenv()), info = "Function read_temperature() does not exist")
if (precheck[1]) precheck[2] <- expect_inherits(read_temperature, "function", info = "Object read_temperature is not a function")
if (precheck[2]) precheck[3] <- expect_true("x" %in% names(formals(read_temperature))[1], info = "Checking that the first input argument to read_temperature is 'x'")


# If object exists and the object is a function: Start testing the function
if (!all(precheck)) {
    warning("tinytest warning: Not all tests for 'read_temperature' will be carried out as the function is not set up properly (must be a function with first input argument 'x')")
} else {
    expect_error(read_temperature(),
                 info = "Expected an error due to wrong usage (no argument) but no error occurred")
    expect_error(read_temperature(file = tmpfile),
                 info = "Expected an error due to wrong usage (wrong argument name) but no error occurred")
    expect_error(read_temperature(x = tmpfile, foo = "bar"),
                 info = "Expected an error due to wrong usage (too many arguments) but no error occurred")
    expect_error(read_temperature(1L),
                 info = "Sanity check incorrect: expected error when input is not character")
    expect_error(read_temperature(letters),
                 info = "Sanity check incorrect: expected error when input is not of length 1")
    expect_error(read_temperature(tempfile(fileext = ".csv")),
                 info = "Sanity check incorrect: expected error when file does not exist")

    # correct use
    expect_silent(res <- read_temperature(x = tmpfile),
                 info = "Function read_temperature() throws unexpected errors/warnings when used correctly")

    # return is a data frame
    is_df <- expect_identical(class(res), "data.frame",
                              info = "Function read_temperature() does not return a data.frame")
}

# If the function works and returns a data.frame: Start evaluating the return
if (all(precheck) && is_df) {
    expect_true(all(c("date", "tmin", "tmax", "year", "month") %in% names(res)),
                 info = "data.frame returned does not include all required variables: date, tmin, tmax, year, month")

    # checking classes
    expect_inherits(res$date,  "Date",                         info = "Variable 'date' must be of class 'Date'")
    expect_inherits(res$year,  c("numeric", "integer"),        info = "Variable 'year' must be numeric (double or integer)'")
    expect_inherits(res$tmin,  "numeric",                      info = "Variable 'tmin' must be numeric.")
    expect_inherits(res$tmax,  "numeric",                      info = "Variable 'tmax' must be numeric.")
    expect_inherits(res$month, "factor",                       info = "Variable 'month' must be a factor.")
    expect_true(is.ordered(res$month),                         info = "Variable 'month' is not ordered.")
    expect_equal(levels(res$month), month.name,               info = "Variable 'month' has unexpected levels.")

    # checking values
    expect_equal(min(res$date), min(tmp_content$date),         info = "Start date incorrect; check conversion")
    expect_equal(max(res$date), max(tmp_content$date),         info = "End date incorrect; check conversion")
    expect_true(min(res$tmin, na.rm = TRUE) > -999,            info = "Variable 'tmin' contains invalid numeric values (check).")
    expect_true(max(res$tmax, na.rm = TRUE) > -999,            info = "Variable 'tmax' contains invalid numeric values (check).")
    expect_identical(sum(is.na(res$tmin)), 2L,                 info = "Check variable 'tmin' again; different number of missing values (NA) then expected")
    expect_identical(sum(is.na(res$tmax)), 2L,                 info = "Check variable 'tmax' again; different number of missing values (NA) then expected")

    # check that there is an explicit return
    fn  <- trimws(deparse(read_temperature))
    idx <- grep("^return[\\s+]?\\(", fn[sapply(fn, nchar) > 0])
    expect_true(length(idx) > 0,                               info = "No explicit return() found in function read_temperature()!")
    expect_identical(length(idx), 1L,                          info = "Multiple return() statements found in function read_temperature()!")
}


if (any(grepl("^ans_[a-h]$", objects(envir = globalenv())))) {

    ## Testing ans_a
    if(expect_true(exists("ans_a"), info = "Object ans_a does not exist!"))
        expect_identical(length(ans_a), 1L, info = "Length of ans_a not equal to 1.")

    ## Testing ans_b
    if(expect_true(exists("ans_b"), info = "Object ans_b does not exist!"))
        expect_identical(length(ans_b), 1L, info = "Length of ans_b not equal to 1.")

    ## Testing ans_c
    if(expect_true(exists("ans_c"), info = "Object ans_c does not exist!"))
        expect_identical(length(ans_c), 1L, info = "Length of ans_c not equal to 1.")

    ## Testing ans_d
    if(expect_true(exists("ans_d"), info = "Object ans_d does not exist!"))
        expect_identical(length(ans_d), 1L, info = "Length of ans_d not equal to 1.")

    ## Testing ans_e
    if(expect_true(exists("ans_e"), info = "Object ans_e does not exist!"))
        expect_identical(length(ans_e), 1L, info = "Length of ans_e not equal to 1.")

    ## Testing ans_f
    if(expect_true(exists("ans_f"), info = "Object ans_f does not exist!"))
        expect_identical(length(ans_f), 1L, info = "Length of ans_f not equal to 1.")

    ## Testing ans_g
    if(expect_true(exists("ans_g"), info = "Object ans_g does not exist!"))
        expect_identical(length(ans_g), 1L, info = "Length of ans_g not equal to 1.")

    ## Testing ans_h
    if(expect_true(exists("ans_h"), info = "Object ans_h does not exist!"))
        expect_identical(length(ans_h), 1L, info = "Length of ans_h not equal to 1.")
} else {
   warning("Tinytest warning: Objects ans_a, ans_b, ... not yet tested as they do not exist.")
}
