#!/bin/bash
# Exit immediately if any command fails.
set -e

echo "🤖 Starting documentation generation with Amazon Q..."
touch temp_readme_update.md
# THE FIX IS HERE: No spaces are allowed around the '=' sign in variable assignments.
#PROMPT_TEXT="Based on the latest git changes, please generate a summary of the README.md file. Include any new features or breaking changes. @git"

# Execute the qchat command, ensuring all flags are correct.
q chat  "Based on the latest git changes, please generate a summary of the README.md file. Include any new features or breaking changes." >> "temp_readme_update.md"

# Append the new content to the main README.md file.
cat temp_readme_update.md >> README.md
rm temp_readme_update.md

echo "✅ README.md has been successfully updated."
echo "   Please review it, then 'git add README.md' and amend your commit."
echo "   To amend, run: git commit --amend --no-edit"