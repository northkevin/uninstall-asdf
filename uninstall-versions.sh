#!/bin/zsh

# 1. Run 'asdf list' to see installed versions

# Example Output:
# elixir
#   1.15.2-otp-26
#   *1.16.2-otp-26
# erlang
#   26.1.1
#   *26.2.3
# nodejs
#   *16.13.0

# 2. Replace this list of versions with the output from 'asdf list'
uninstall_commands=(
  "asdf uninstall elixir 1.16.2-otp-26"
  "asdf uninstall erlang 26.1.1"
  "asdf uninstall erlang 26.2.3"
  "asdf uninstall nodejs 16.13.0"
  "asdf uninstall nodejs 20.12.2"
  "asdf uninstall pre-commit 2.16.0"
  "asdf uninstall terraform-docs v0.16.0"
  "asdf uninstall terraform 1.1.3"
  "asdf uninstall terraform 1.5.7"
  "asdf uninstall tflint 0.34.1"
  "asdf uninstall tflint 0.48.0"
  "asdf uninstall tfsec 0.63.1"
  "asdf uninstall tfsec 1.28.2"
)

# Loop through each uninstall command and execute it
for cmd in "${uninstall_commands[@]}"; do
  echo "Running: $cmd"
  eval $cmd
done

echo "versions uninstalled."
