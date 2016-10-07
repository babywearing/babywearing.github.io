site:
	stack build

build:
	rm -r _cache/
	stack exec babywearing build

deploy:
	make build
	cd _site && git add . && git commit -m "Built on `date` from `cd .. && git rev-parse HEAD`" && git push
	git commit -a -m "Added build" && git push
