#!/bin/zsh

# List all asdf plugins
plugins=$(asdf plugin list)

echo "Installed asdf plugins:"
echo "$plugins"

# Use xargs to remove each plugin
echo "$plugins" | xargs -I {} sh -c '
  echo "Removing plugin: {}"
  asdf plugin remove {}
'

echo "plugins uninstalled."
