# library("vcr") # *Required* as vcr is set up on loading
vcr::vcr_configure(
  dir = vcr::vcr_test_path("fixtures")
)
vcr::check_cassette_names()
