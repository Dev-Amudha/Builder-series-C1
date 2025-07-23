# src/publishers/html.py
from markdown import markdown

def generate_html(content, output_path):
    """Convert markdown to HTML and save to file"""
    html_content = f"""<!DOCTYPE html>
<html>
<head><title>Generated Documentation</title></head>
<body>
{markdown(content)}
</body>
</html>"""
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(html_content)
    return True