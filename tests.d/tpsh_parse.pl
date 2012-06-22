# tests for the tpsh_parse() function

assert_array(
    ['ls', '-l', '/foo'],
    [tpsh_parse('ls -l /foo')],
    "Simple commands should be a simple stack"
);

assert_array(
    ['if', 'ls', '/foo', ';', 'then', 'echo', 'yes', ';', 'elif', 'ls', '/bar', ';', 'then', 'else', 'echo', 'no', ';', 'fi'],
    [tpsh_parse('if ls /foo; then echo yes; elif ls /bar; then echo maybe; else echo no; fi')],
    "if/elif/else broken"
);

assert_array(
    # TODO: convert FOO => $FOO when delayed expansions are supported
    ['for', 'FOO', 'in', 'a', 'b', 'c', ';', 'do', 'echo', 'FOO', ';', 'done'],
    [tpsh_parse('for FOO in a b c; do echo FOO; done')],
    "for loop broken"
);
