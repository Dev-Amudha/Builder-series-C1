# Changelog

All notable changes to the DocGen project will be documented in this file.

## [Unreleased]

## [0.1.0] - 2025-07-23

### Added
- New `generate-docs.sh` script for automated README generation using Amazon Q
  - Uses Amazon Q Developer CLI to analyze the project and generate documentation
  - Non-interactive mode for easy integration into workflows
  - Customizable prompt for tailored documentation generation

### Changed
- Removed duplicate "Documentation generation complete" message in main.py
- Improved code formatting and whitespace consistency throughout the codebase
- Enhanced error handling in main.py

### Fixed
- Fixed issue with duplicate output messages in the CLI
- Corrected whitespace and formatting issues in main.py

## [0.0.1] - 2025-07-21

### Added
- Initial project structure setup
- Support for HTML and Confluence output formats
- Amazon Q Business integration for AI-powered documentation
- Command-line interface with Click
- Basic documentation templates
