# Synology Wiki

Welcome to the Synology Wiki! This repository serves as a centralized reference for my Synology setup and configuration, with a focus on Plex Media Server and various Plex maintenance utilities.

## Overview

The documentation is built using [MkDocs](https://www.mkdocs.org) and the [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) theme. It covers Synology setup, Plex configuration, and additional development projects available in my GitHub repository at [github.com/scottgigawatt](https://github.com/scottgigawatt).

## Authoring and Editing

### Editing Content

Documents are stored in the `docs` directory of this repository. You can edit them via the GitHub web UI or locally.

- To edit documents using the GitHub web UI, click the pencil icon at the top right of the page, make your changes in Markdown, add a commit message, and click "Commit changes".
- For a better authoring experience, use Visual Studio Code with recommended plugins:
    - **[markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)**: Checks for formatting issues.
    - **[Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)**: Offers shortcuts, table of contents generation, and enhanced preview features.

### Managing Navigation

The left-hand navigation is defined in the `mkdocs.yml` file. To add a new menu item, edit the `nav` element in `mkdocs.yml`, ensuring proper indentation. Paths are relative to the `docs/` directory.

## Local Development

### Using the Makefile

To build and start the webserver locally, follow these steps:

```bash
# Clone the repository
git clone git@github.com:scottgigawatt/wiki.git
cd wiki

# Start the local webserver
make start
```

The local server will be running at <http://localhost:8800/scottgigawatt/wiki/>. You can access it in your browser. The server will live reload your changes as you edit files. If you're on macOS, you can use `make open` to open the site in your default browser automatically.

## License

This project is licensed under the Apache 2 License - see the [LICENSE](LICENSE) file for details.

---
Contributions to improve the Synology Wiki are welcome. Please feel free to submit pull requests or provide feedback. Happy documenting!
