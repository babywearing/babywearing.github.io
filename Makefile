site:
	stack build

build:
	stack exec babywearing build

deploy:
	make build
	cd _site && git commit -a -m "Built on `date` from `cd .. && git rev-parse HEAD`" && git push
	git commit -a -m "Added build" && git push
