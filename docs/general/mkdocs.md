# :material-human-male-board-poll: MkDocs Guidance

[MkDocs](https://www.mkdocs.org/) is a static site generator that converts Markdown documents into HTML, hosted using [GitHub Pages](https://pages.github.com/). We use the [MkDocs Material Theme](https://squidfunk.github.io/mkdocs-material/) for additional styling and usability features.

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

!!! info
    The local server will be running at <http://localhost:8800/scottgigawatt/wiki/>. You can access it in your browser. The server will live reload your changes as you edit files. If you're on macOS, you can use `make open` to open the site in your default browser automatically.

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
