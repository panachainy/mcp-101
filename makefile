# build:
# 	cd apps/git && docker build -t mcp/git .
# 	cd apps/sqlite && docker build -t mcp/sqlite .
# 	cd apps/time && docker build -t mcp/time .
# 	# cd apps/puppeteer && docker build -t mcp/puppeteer .

## recursively build all docker images in the apps directory
build:
	for dir in apps/*/; do \
		if [ -f "$$dir/Dockerfile" ]; then \
			cd "$$dir" && docker build -t mcp/$$(basename "$$dir") . && cd ../..; \
		fi \
	done
