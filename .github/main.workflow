workflow "Update gist with WakaTime stats" {
  resolves = ["update-gist"]
  on = "schedule(*/10 * * * *)"
}

action "update-gist" {
  uses = "matchai/waka-box@master"
  env = {
    "GIST_ID" = "529ff05dc95e84c0cf23aba01ef7fc6a"
  }
  secrets = [
    "GH_TOKEN",
    "WAKATIME_API_KEY",
  ]
}
