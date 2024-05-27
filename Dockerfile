FROM squidfunk/mkdocs-material:${MKDOCS_TAG}

RUN pip install mkdocs-macros-plugin \
    mkdocs-git-revision-date-plugin \
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-git-committers-plugin-2
