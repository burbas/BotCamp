-module(botcamp_rest_controller, [Req, SessionID]).
-compile(export_all).


register('POST', []) ->
    Username = Req:post_param("username"),
    Password = Req:post_param("password"),
    {json, [{status, "ok"}]}.

login('POST', []) ->
    Username = Req:post_param("username"),
    Password = Req:post_param("password"),
    {json, [{token, "dhjsa"}]}.


action('GET', [Action]) ->
    Actions = botcamp_decoder:decode_actions(base64:decode(Action)),
    io:format("Actions: ~p~n", [Actions]),
    {json, [{status, "ok"}]}.
