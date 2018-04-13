# Makefile inspired by kbroman
# https://github.com/kbroman/blog/blob/source/Makefile

DATA_DIR=content/data/

all: build

# Build in two steps so we get the caching (from local=TRUE)
# and the `baseurl`s (from local=FALSE)
build: data
	R -e "blogdown::build_site(local=TRUE, run_hugo=FALSE)"
	R -e "blogdown::hugo_build(local=FALSE)"

# Builds without caching.
# Alternatively, run `make clean` and then `make build`.
build_nocache: data
	R -e "blogdown::build_site()"

serve: data
	R -e "blogdown::serve_site(port=4004)"

data: $(DATA_DIR)points_hw4.txt

$(DATA_DIR)points_hw4.txt:
	cd $(DATA_DIR); wget https://www.cs.princeton.edu/~bee/courses/hw/points_hw4.txt

clean:
	rm content/data/*
	rm content/post/*.html
	rm -rf static/post/*
	rm -rf blogdown/post/*
