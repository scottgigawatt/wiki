#
# Dockerfile: Custom MkDocs Material Image with Additional Plugins
#
# This Dockerfile builds a custom Docker image based on the mkdocs-material image from Squidfunk.
# It adds additional MkDocs plugins that are not included in the base image provided by Squidfunk.
# For more details, refer to the official documentation: https://squidfunk.github.io/mkdocs-material/getting-started/?h=docker#with-docker
#

#
# Set a default image tag that can be overridden using build args
#
ARG MKDOCS_TAG=latest

#
# Use the specified version of the mkdocs-material image
#
FROM squidfunk/mkdocs-material:${MKDOCS_TAG}

#
# Install additional MkDocs plugins
#
RUN pip install \
    # Plugin for adding macros to MkDocs
    mkdocs-macros-plugin \
    # Plugin to show the last git revision date
    mkdocs-git-revision-date-plugin \
    # Localized version of the git revision date plugin
    mkdocs-git-revision-date-localized-plugin \
    # Plugin to show git committers for each page
    mkdocs-git-committers-plugin-2
