# Synology Wiki

Welcome to the Synology Wiki! This repository serves as a centralized reference for my Synology setup and configuration, focusing on running Plex Media Server and various utilities for Plex maintenance.

## Overview

The documentation is built using [MkDocs](https://www.mkdocs.org) and the [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) theme. The wiki also includes information on other development projects available in my GitHub repository at [github.com/scottgigawatt](https://github.com/scottgigawatt).

## Docker Setup

This repository includes a [`Dockerfile`](Dockerfile) at the root. This Dockerfile builds a custom Docker image based on the MkDocs Material image, with additional plugins installed to extend MkDocs functionality. For more details, refer to the official documentation [here](https://squidfunk.github.io/mkdocs-material/getting-started/?h=docker#with-docker).

### Building and Running the Docker Image Manually

To manually build and run the Docker image:

1. **Build the Docker Image:**

   ```bash
   docker build -t mkdocs-material-custom:latest -f Dockerfile .
   ```

2. **Run the Docker Container:**

   ```bash
   docker run -d \
     --name mkdocs-material \
     --restart unless-stopped \
     --network bridge \
     --hostname mkdocs \
     --mem-limit 8g \
     --cpu-shares 2048 \
     -p 8000:8000 \
     -v $(pwd)/config/wiki:/docs:rw \
     -t mkdocs-material-custom:latest
   ```

### Docker Compose Deployment

This wiki is deployed using Docker Compose, which is part of the [Duplex GitHub project](https://github.com/yourusername/duplex). An example Docker Compose configuration can be found in the [`docker-compose.yml`](https://github.com/yourusername/duplex/blob/main/docker-compose.yml) file in that repository.

## Authoring Documents

If you're new to Markdown, refer to this [cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) for basics. Documents are stored in the `docs` directory of this repository. You can edit them via the GitHub web UI or locally.

## Editing Content Using the GitHub Web UI

To edit documents using the GitHub web UI, click the pencil icon (:material-pencil:) at the top right of the page. Make your changes in Markdown, add a commit message, and click "Commit changes." This triggers a build process in [Travis CI](#) and publishes the updated page.

## Editing Content Using Visual Studio Code

For the best authoring experience, use Visual Studio Code. This ensures consistent formatting across authors. Recommended plugins:

- **[markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)**: Checks for formatting issues.
- **[Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)**: Offers shortcuts, table of contents generation, and enhanced preview features.

## Managing Navigation

The left-hand navigation is defined in the `mkdocs.yml` file. To add a new menu item, edit the `nav` element in `mkdocs.yml`, ensuring proper indentation:

```yaml
- Title of Menu Item: some-sub-directory/location-of-markdown-doc.md
```

Paths are relative to the `docs/` directory.

## Developing Locally

To develop documents locally, ensure you have Python 3.12 installed.

### Verifying Your Python 3 Installation

Python 3.12 is the recommended version. Use Homebrew to install and verify Python 3.12:

```bash
# Install Python 3.12 using Homebrew
brew install python@3.12

# Verify the installation
python3 --version
# Expected output: Python 3.12.3
```

### Starting the Local Wiki Server

Follow these steps to start the local wiki server:

```bash
# Clone the repository
git clone git@github.com:scottgigawatt/wiki.git
cd wiki

# Create and activate a virtual environment
python3 -m venv venv
source ./venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run the development server
mkdocs serve
```

> **Info**: The local server will be running at <http://127.0.0.1:8000/scottgigawatt/wiki/>. You can access your locally running wiki by visiting this URL in a browser. The server will live reload your changes as you edit files.

## License

This project is licensed under the Apache 2 License - see the [LICENSE](LICENSE) file for details.

---
Contributions to improve the Synology Wiki are welcome. Please feel free to submit pull requests or provide feedback. Happy documenting!
