#!/usr/bin/env bash

# # Work in progress.
# exit 1

# Creating directories.
mkdir -p docs/generated/parameters
mkdir -p docs/generated/regions
mkdir -p docs/generated/services
mkdir -p docs/specific
mkdir -p docs/images
mkdir -p .github/workflows

# Copying content.
rsync -avP docs/common/.images/ docs/images/
rsync -avP docs/common/.specific/ docs/specific/

# enabling workflow.
cp docs/common/.actions/master-docs-build.yml .github/workflows/


# creating placeholders.
echo "// placeholder" > docs/generated/parameters/index.adoc
echo "// placeholder" > docs/generated/regions/index.adoc
echo "// placeholder" > docs/generated/services/index.adoc

# Create a symlink for easy preview.
ln -s docs/common/index.adoc docs/index.adoc
