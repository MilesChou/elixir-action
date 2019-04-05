workflow "Test the Elixir Action" {
  on = "push"
  resolves = [
    "Send Discord message"
  ]
}

action "Test the Elixir command" {
  uses = "./"
  args = "elixir --version"
}

action "Test the IEx command" {
  uses = "./"
  args = "iex --version"
}

action "Test the Mix command" {
  uses = "./"
  args = "mix --version"
}

action "Send Discord message" {
  uses = "appleboy/discord-action@master"
  needs = [
    "Test the Elixir command",
    "Test the IEx command",
    "Test the Mix command",
  ]
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been push to `MilesChou/elixir-action`."
}
