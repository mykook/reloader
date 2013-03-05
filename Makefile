REBAR ?= rebar

all: reloader

reloader:
	$(REBAR) compile

clean:
	$(REBAR) clean
