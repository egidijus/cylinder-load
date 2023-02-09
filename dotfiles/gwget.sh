
# Use gwget like wget on github urls, to download the raw file instead of the github html rendered file.

# Example:
# ```
# gwget https://github.com/egidijus/py-talk/blob/main/requirements.txt
# ```

HTTPGET=${HTTPGET:-"wget"}

convert_url() {
  echo $1 | \
    sed 's#https://github.com#https://raw.githubusercontent.com#' | \
    sed 's#blob/##'
}

gwget() {
  $HTTPGET $(convert_url $1)
}
