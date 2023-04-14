return {
  -- TODO: Add configuration
  build = {
    executable = "tectonic",
    args = {"%f", "--synctex", "--keep-logs", "--keep-intermediates"}
  }
}
