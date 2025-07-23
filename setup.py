from setuptools import setup, find_packages

setup(
    name="docgen",
    version="0.1",
    packages=find_packages(),
    install_requires=[
        "boto3>=1.28.0",
        "markdown>=3.4.3",
        "atlassian-python-api>=3.0.0",
        "slack-sdk>=3.21.0",
        "python-dotenv>=0.19.0",
        "click>=8.0.0"
    ],
    entry_points={
        'console_scripts': [
            'docgen=src.main:cli',
        ],
    },
)