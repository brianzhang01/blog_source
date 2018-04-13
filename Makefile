DATA_DIR=content/data/

all: build

# build in two steps so we get the caching (from local=TRUE)
# and the `baseurl`s (from local=FALSE)
build: data
	R -e "blogdown::build_site(local=TRUE, run_hugo=FALSE)"
	R -e "blogdown::hugo_build(local=FALSE)"

build_nocache: data
	R -e "blogdown::build_site()"

data: $(DATA_DIR)points_hw4.txt

$(DATA_DIR)points_hw4.txt:
	cd $(DATA_DIR); wget https://www.cs.princeton.edu/~bee/courses/hw/points_hw4.txt
