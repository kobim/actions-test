workflow "Deploy on Now" {
  on = "pull_request"
  resolves = ["enforce"]
}

action "enforce" {
  uses = "kobim/action-review-enforcer@v1"
  secrets = ["GITHUB_TOKEN"]
}
