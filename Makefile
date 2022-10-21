.PHONY: release
release:
	cr upload --config config.yaml --package-path .deploy --skip-existing

.PHONY: index
index:
	cr index --config config.yaml --index-path docs/index.yaml --pages-branch main

.PHONY: clean
clean:
	rm -rf .deploy/*
