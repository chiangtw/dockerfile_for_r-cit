# Dockerfile for r-cit

https://hub.docker.com/r/treeslab/r-cit


### Included packages

 - r-cit (https://cran.r-project.org/web/packages/cit/index.html)
 - r-tidyverse (https://cran.r-project.org/web/packages/tidyverse/index.html)
 - r-r.utils (https://cran.r-project.org/web/packages/R.utils/index.html)


## Usage

```
docker pull treeslab:r-cit
```

```
docker run \
    -i -t --rm \
    --mount type=bind,source="$(pwd)",target=/data \
    treeslab:r-cit \
    Rscript test.R
```

