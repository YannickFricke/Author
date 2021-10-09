mix_executable=mix
base_nodemon_opts=-e ex,exs -w lib -w ./mix.exs -w ./Makefile

clearscreen:
	@clear || @cls

run:
	$(mix_executable) run --no-halt

debug:
	iex -S mix

test:
	$(mix_executable) test

format:
	$(mix_executable) format

inspect:
	$(mix_executable) credo

install:
	$(mix_executable) do deps.get, deps.compile
	npm install

clean-build:
	npx rimraf ./_build/

clean-deps:
	npx rimraf ./deps/
	npx rimraf ./node_modules/

clean: clean-build clean-deps

watch:
	npx nodemon $(base_nodemon_opts) --exec "make clearscreen run"

watch-debug:
	npx nodemon $(base_nodemon_opts) --exec "make clearscreen debug"

watch-test:
	npx nodemon $(base_nodemon_opts) -w ./test/ --exec "make clearscreen test"

watch-format:
	npx nodemon $(base_nodemon_opts) -w ./.formatter.exs --exec "make clearscreen format"

watch-inspect:
	npx nodemon $(base_nodemon_opts) -w ./test/ --exec "make clearscreen inspect"

.PHONY: clearscreen run debug test format inspect install watch watch-debug watch-test watch-format clean clean-build clean-deps