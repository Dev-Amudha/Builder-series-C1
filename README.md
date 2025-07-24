# DocGen - Documentation Generator

## Project Overview
DocGen is a Python-based documentation generation tool designed for the AWS Builder Series 2025. It automatically generates documentation from code repositories and can publish the output in various formats including HTML and Confluence.

## Features
- Automatic documentation generation from code repositories
- Support for multiple output formats (HTML, Confluence)
- Integration with Amazon Q Business for AI-powered documentation generation
- Command-line interface for easy integration into workflows

## Installation

### Prerequisites
- Python 3.6+
- AWS CLI configured with appropriate permissions
- Amazon Q Business application ID

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/YourUsername/BuilderSeries2025.git
   cd BuilderSeries2025/docgen
   ```

2. Install dependencies:
   ```bash
   pip install -e .
   ```
   
   Or using requirements.txt:
   ```bash
   pip install -r requirements.txt
   ```

3. Configure environment variables:
   Create a `.env` file with your AWS credentials and configuration:
   ```
   AWS_REGION=us-east-1
   CONFLUENCE_URL=https://your-confluence-instance.atlassian.net
   CONFLUENCE_USERNAME=your_username
   CONFLUENCE_API_TOKEN=your_api_token
   ```

## Usage

### Command Line Interface
Generate HTML documentation:
```bash
docgen --path /path/to/your/code --format html
```

Publish to Confluence:
```bash
docgen --path /path/to/your/code --format confluence
```

### Using the generate-docs.sh Script
The project includes a convenient script to generate a README.md file using Amazon Q:

```bash
./generate-docs.sh
```

This script will analyze your project and create a comprehensive README.md file.

## Project Structure
```
docgen/
├── src/                    # Source code
│   ├── __init__.py
│   ├── main.py             # Main entry point
│   ├── publishers/         # Output format publishers
│   │   ├── html.py         # HTML output generator
│   │   └── confluence.py   # Confluence publisher
│   ├── templates/          # Document templates
│   └── utils/              # Utility functions
├── tests/                  # Test suite
├── outputs/                # Generated documentation output
├── requirements.txt        # Python dependencies
├── setup.py                # Package configuration
├── pyproject.toml          # Project metadata
├── generate-docs.sh        # Script to generate README with Amazon Q
└── README.md               # This file
```

## Recent Changes

### Latest Update (July 23, 2025)
- Removed duplicate "Documentation generation complete" message in main.py
- Added generate-docs.sh script for automated README generation using Amazon Q
- Fixed code formatting and whitespace issues

### Previous Update (July 21, 2025)
- Initial project structure setup
- Added support for HTML and Confluence output formats
- Implemented Amazon Q Business integration for AI-powered documentation

## Dependencies
- boto3 (≥1.28.0): AWS SDK for Python
- markdown (≥3.4.3): Markdown processing
- atlassian-python-api (≥3.0.0): Confluence integration
- slack-sdk (≥3.21.0): Slack notifications
- python-dotenv (≥0.19.0): Environment variable management
- click (≥8.0.0): Command-line interface

## License
This project is licensed under the MIT License - see the LICENSE file for details.
