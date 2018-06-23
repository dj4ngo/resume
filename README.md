# resume

My resume in LaTeX format. It is build using my own docker latex image ([dj4ngo/resume](https://hub.docker.com/r/dj4ngo/resume/)).

It is based on friggeri resume.


The docker image used for build is based on [dj4ngo/wolfie](https://hub.docker.com/r/dj4ngo/wolfie/) which is automatically built in dockerhub ([here](https://hub.docker.com/r/dj4ngo/resume/)).
All code is available [here](https://github.com/dj4ngo/resume).

## Download PDF format

My CV is available [here](https://github.com/dj4ngo/resume/raw/master/cv.pdf)


## Customize CV

All CV content is in cv.tex file. 

## Build it

All build is automated via a Makefile. 

Simply clone the project, then run :

```bash
make
```

This will build the resume in pdf format.

