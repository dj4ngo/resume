all: clean prepare build 


clean:
	rm -f *.bcf *.log *.out *.run.xml
	rm -f cv_redhat.tex cv_redhat.aux

cleanall: clean
	rm -f *.pdf *.aux

prepare: prepare_redhat
	docker pull dj4ngo/resume:latest

prepare_redhat:
	cp -f resume.aux rh_resume.aux
	sed -e '/definecolor/s/{[0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F]}/{CC0000}/p' \
	    -e 's/\([1-5]stars\)\(.png\)/\1_rh\2/' resume.tex > rh_resume.tex


build: prepare
	docker run --rm -v $(PWD):/cv dj4ngo/resume 


