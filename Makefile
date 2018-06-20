all: clean prepare build 


clean:
	rm -f *.bcf *.log *.out *.run.xml

cleanall: clean
	rm -f *.pdf *.aux

prepare:
	docker pull dj4ngo/resume:latest

build: prepare
	docker run --rm -v $(PWD):/cv dj4ngo/resume 

