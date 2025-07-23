# src/main.py
import os
import sys
from pathlib import Path
import click
import boto3
from pathlib import Path

# Add the src directory to Python path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Import with absolute path from project root
from src.publishers.html import generate_html
from src.publishers.confluence import publish_to_confluence

@click.command()
@click.option('--path', help='Path to code repository', required=True)
@click.option('--format', type=click.Choice(['html', 'confluence']), default='html')
def cli(path, format):
    """Generate documentation"""
    
# docs_content = "# Sample Documentation\n\nSuccessfully generated!"
q_client = boto3.client('qbusiness')
docs_content = q_client.generate_text(
    applicationId="YOUR_APP_ID",
    prompt=f"Generate documentation for Python code in {path}"
)['outputText']

print(f"Generated documentation content:\n{docs_content[:100]}...")
path = Path(path)
if not path.exists():
    print(f"Error: Path '{path}' does not exist.")
    sys.exit(1)

if format == 'html':
    output_file = Path('outputs/docs.html')
    output_file.parent.mkdir(exist_ok=True)
    generate_html(docs_content, str(output_file))
    print(f"✅ HTML docs saved to: {output_file}")
else:
    publish_to_confluence(docs_content, "Generated Docs")
    print("✅ Published to Confluence")

if __name__ == '__main__':
    docs_content = get_code_content(path)
    cli()
    print("✅ Documentation generation complete.")
    
    
    