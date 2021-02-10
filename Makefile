
.PHONY: all
all: books
	$(MAKE) -C .. -j 100 texts
	rm books/*.md || true
	cp ../tmp/*.md books

books:
	mkdir $@

update:
	rm ../tmp/manifest.json || true
	$(MAKE) -C .. books
	$(MAKE) all
