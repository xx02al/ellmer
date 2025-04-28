local_cassette_test <- function(name, ..., .frame = parent.frame()) {
  dir.create(test_path("_vcr"), showWarnings = FALSE)
  vcr::local_cassette(
    name,
    ...,
    frame = .frame,
    dir = test_path("_vcr"),
    match_requests_on = c("method", "uri", "body_json")
  )
}
