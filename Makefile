# Makefile inspired by kbroman
# https://github.com/kbroman/blog/blob/source/Makefile

DATA_DIR=content/data/
GITHUB_GIANT_DIR=https://github.com/brianzhang01/giant_demo/raw/master/static/

all: build

# Build in two steps so we get the caching (from local=TRUE)
# and the `baseurl`s (from local=FALSE)
build: data
	Rscript print_packages.R > packages.txt
	R -e "blogdown::build_site(local=TRUE, run_hugo=FALSE)"
	R -e "blogdown::hugo_build(local=FALSE)"

# Builds without caching.
# Alternatively, run `make clean` and then `make build`.
build_nocache: data
	Rscript print_packages.R > packages.txt
	R -e "blogdown::build_site()"

serve: data
	Rscript print_packages.R > packages.txt
	R -e "blogdown::serve_site(port=8000)"

data: $(DATA_DIR)points_hw4.txt $(DATA_DIR)giant_summary_n50.png

$(DATA_DIR)points_hw4.txt:
	cd $(DATA_DIR); wget https://www.cs.princeton.edu/~bee/courses/hw/points_hw4.txt

$(DATA_DIR)giant_summary_n50.png:
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n50.png
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n500.png
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n10000.png
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n10000_small.png
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n10000_big.png
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n1000000.png
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n1000000_small.png
	cd $(DATA_DIR); wget $(GITHUB_GIANT_DIR)giant_summary_n1000000_big.png

clean:
	rm content/data/*
	rm content/post/*.html
	rm -rf public/data
	rm -rf static/post/*
	rm -rf blogdown/post/*
