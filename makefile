build:
	cd apps/git && docker build -t mcp/git .
	cd apps/sqlite && docker build -t mcp/sqlite .
	cd apps/time && docker build -t mcp/time .
