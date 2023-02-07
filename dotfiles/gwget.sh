HTTPGET=${HTTPGET:-"wget"}

convert_url() {
  echo $1 | \
    sed 's#https://github.com#https://raw.githubusercontent.com#' | \
    sed 's#blob/##'
}

# $HTTPGET $(convert_url $1)

gwget() {
  $HTTPGET $(convert_url $1)
}