proceed_list(X, Y) :- X == Y.
proceed_list([Head | Tail], Y) :- proceed_list(Tail, Y).

precede_list([], _).
precede_list([HeadX | TailX], [HeadY | TailY]) :- HeadX == HeadY, precede_list(TailX, TailY).