SOURCES = lib/**/*.js

# ==============================================================================
# Node Tests
# ==============================================================================

VOWS = ./node_modules/.bin/vows
TESTS ?= test/*-test.js test/**/*-test.js

test:
	@NODE_ENV=test NODE_PATH=lib $(VOWS) $(TESTS) --spec

# ==============================================================================
# Static Analysis
# ==============================================================================

JSHINT = jshint

hint: lint
lint:
	$(JSHINT) $(SOURCES)


.PHONY: test hint lint
