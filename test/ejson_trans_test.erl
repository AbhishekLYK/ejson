-module(ejson_trans_test).

-compile({parse_transform, ejson_trans}).

-include_lib("eunit/include/eunit.hrl").

-json({square, "side"}).

all_test_() ->
    Record = {square, 50},
    {ok, Json} = to_json(Record),
    {ok, Square} = from_json(Json),
    ?_assert(Record =:= Square).