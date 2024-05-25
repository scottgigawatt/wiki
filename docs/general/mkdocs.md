# MkDocs Guidance

[MkDocs](https://www.mkdocs.org/) is a static site generator that converts Markdown documents into HTML, hosted using [GitHub Pages](https://pages.github.com/). We use the [MkDocs Material Theme](https://squidfunk.github.io/mkdocs-material/) for additional styling and usability features.

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

!!! info
    The local server will be running at <http://127.0.0.1:8000/scottgigawatt/wiki/>. You can access your locally running wiki by visiting this URL in a browser. The server will live reload your changes as you edit files.

## Tips and Tricks

### Managing Images

To include images, paste them into a GitHub issue to get a URL, then use that URL in your Markdown document.

### MkDocs Macros

We use the [mkdocs-macros](https://mkdocs-macros-plugin.readthedocs.io/en/latest/) plugin. If you encounter issues with fenced code and curly braces, disable macros for that page by adding:

```yaml
---
ignore_macros: true
---
```

For more information, see [How to prevent accidental interpretation of "Jinja-like" statements](https://mkdocs-macros-plugin.readthedocs.io/en/latest/advanced/#how-to-prevent-accidental-interpretation-of-jinja-like-statements).
