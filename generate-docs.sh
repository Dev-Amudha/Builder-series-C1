#!/bin/bash

# A script to non-interactively generate a README.md using Amazon Q Developer CLI

echo "🤖 Starting documentation generation with Amazon Q..."

# Define the prompt that will be sent to Amazon Q.
# You can customize this prompt to get better results!
PROMPT="""
Analyze the current state of the code in this project repository.
Generate a complete README.md file for it.
The README should include the following sections:
- A brief project description.
- Installation instructions for any dependencies found (e.g., from package.json or requirements.txt).
- Usage examples based on the primary functions or entry points of the code.
- A summary of the project structure.
Do not add any conversational text before or after the markdown content.
"""

# Use a 'here document' (<<EOF) to send the multi-line prompt
# to the 'q chat' command non-interactively.
# The --quiet flag minimizes extra output from the q cli itself.

# q chat -- --quiet -- <<EOF > README.md
qchat chat --prompt "$prompt" --output-file "README_temp.md"
$PROMPT
/doc
EOF

echo "✅ README.md has been successfully generated or updated."
echo "   Please review it, then 'git add README.md' and amend your commit."

