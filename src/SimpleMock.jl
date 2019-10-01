"""
A basic mocking module, inspired by Python's [`unittest.mock`](https://docs.python.org/3/library/unittest.mock.html) and implemented with [Cassette](https://github.com/jrevels/Cassette.jl).
"""
module SimpleMock

using Base: Callable, invokelatest, unwrap_unionall
using Base.Iterators: Pairs
using Core: Builtin, IntrinsicFunction

using Cassette: Cassette, overdub, posthook, prehook, recurse, @context

export
    Call,
    Mock,
    mock,
    calls,
    ncalls,
    called,
    called_once,
    called_with,
    called_once_with,
    has_call,
    has_calls,
    reset!,
    max_depth,
    min_depth,
    excluding,
    including

include("metadata.jl")
include("filters.jl")
include("mock_type.jl")
include("mock_fun.jl")

end
