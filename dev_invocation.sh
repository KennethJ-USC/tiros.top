#!/bin/sh

# rm -rf testdata/2del/*

# create the output directory (and parents):
mkdir -p output/dev


# get help on the following parameters: «python ./lazyblorg.py --help»

# when setting up your own system, you might want to:
# 1. have separate directories for generating your blog and staging/publishing your blog
# 2. rename everything with «2del» to an appropriate name
# 3. copy generated blog data to staging/publishing directory
# 4. point --previous-metadata to the corresponding pk-file in your staging/publishing directory
# 5. modify --orgfiles so that your org-mode files are parsed
#    don't forget to include your version of «about-placeholder.org» and «blog-format.org»

PYTHONPATH="~/src/lazyblorg:" ./lazyblorg.py \
    --targetdir ./output/dev \
    --previous-metadata ./tiros-metadata.pk \
    --new-metadata ./tiros-metadata.pk \
    --logfile ./tiros-logfile.org \
    --orgfiles ~/org/tiros.org \
               ./testdata/end_to_end_test/orgfiles/about-placeholder.org \
               ./templates/blog-format.org $@
cp ./styles/*.css ./output/dev
#END
