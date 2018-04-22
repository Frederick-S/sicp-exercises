compile:
	raco make ./src/**/*.rkt
	raco make ./tests/**/*.rkt

test:
	raco test tests