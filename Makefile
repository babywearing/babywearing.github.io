site:
	stack build

build:
	rm _site/* -rf
	rm -r _cache/
	stack exec babywearing build

deploy:
	cd _site && git checkout -- . && git clean -df
	cd _site && git checkout -B master origin/master
	make build
	cd _site && git add . && git commit -m "Built on `date` from `cd .. && git rev-parse HEAD`" && git push
	git commit -a -m "Added build" && git push
