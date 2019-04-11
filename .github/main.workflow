workflow "Call for jira-linker in Pull Requests" {
  on = "pull_request"
  resolves = "jira-linker"
}
action "jira-linker" {
  uses = "afgedemenli/jira-linker@master"
  secrets = ["GITHUB_TOKEN"]
}
