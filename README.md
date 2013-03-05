#Erlang Reloader

This is a mirror of [the MochiWeb reloader](https://github.com/mochi/mochiweb/blob/master/src/reloader.erl).
It will monitor every loaded Erlang module's BEAM file for
modifications, checking once a second and reloading the BEAM if it has
changed (that is, it has been recompiled). The loaded module list is
updated every second, so newly loaded modules are detected.

Use this project it for applications that need a code reloader in
development that don't require anything else that MochiWeb provides.

##Installation

Add the following to your `rebar.config`:

    {reloader, ".*", {git, "git://github.com/oinksoft/reloader.git", "master"}}

And run `rebar get-deps` followed by `rebar compile`.

##Usage

Start the reloader with your application (here is an example for a
`nuclear_ant` app):

    >> erl -pa ebin -boot start_sasl \
           -name nuclear_ant_dev@example.com \
           -s nuclear_ant \
           -s reloader

SASL output omitted ...

    Eshell V5.9.3  (abort with ^G)
    (nuclear_ant_dev@example.com)1>

After recompiling `nuclear_ant_server.erl`:

    Reloading nuclear_ant_server ... ok.

And now the latest build of `nuclear_ant_server` is loaded.
