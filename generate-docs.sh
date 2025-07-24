#!/bin/bash
# Exit immediately if any command fails.
set -e

echo "🤖 Starting documentation generation with Amazon Q..."

# The prompt for Amazon Q. The @git modifier tells Q to look at the repo's changes.
prompt="Based on the latest git changes, please generate a summary for the README.md file. Include any new features, breaking changes, and updated usage instructions. @git"

# Send the prompt to Amazon Q.
qchat chat -- --prompt "$prompt" --output-file "temp_readme_update.md"

# Append the new content to the main README.md file.
# You can customize this logic if you want to replace a specific section.
cat temp_readme_update.md >> README.md
rm temp_readme_update.md

echo "✅ README.md has been successfully updated."
echo "   Please review it, then 'git add README.md' and amend your commit."
echo "   To amend, run: git commit --amend --no-edit"