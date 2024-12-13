-module(lesson3_task1).
-export([first_word/1]).

first_word(BinText) when is_binary(BinText) ->
    case binary:split(BinText, <<" ">>, [global]) of
        [FirstWord | _] -> FirstWord;
        [] -> <<>>  
    end.
