RUBY_FILES := $(shell git ls-files '*.rb')
ERB_FILES  := $(shell git ls-files '*.erb')
JS_FILES   := $(shell git ls-files '*.js')
YML_FILES  := $(shell git ls-files '*.yml')

.PHONY: all lint lint-ruby lint-erb lint-js lint-yaml

all: lint

lint: lint-ruby lint-erb lint-js lint-yaml

lint-ruby:
	@for f in $(RUBY_FILES); do ruby -wc $$f >/dev/null || exit 1; done
	@echo "ruby: OK"

lint-erb:
	@for f in $(ERB_FILES); do erb -x -T - $$f | ruby -c >/dev/null || { echo "NG: $$f"; exit 1; }; done
	@echo "erb: OK"

lint-js:
	@for f in $(JS_FILES); do node --check $$f || exit 1; done
	@echo "js: OK"

lint-yaml:
	@for f in $(YML_FILES); do ruby -ryaml -e 'YAML.load_file(ARGV[0])' $$f || exit 1; done
	@echo "yaml: OK"
