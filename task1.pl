family(
    person("tom", "fox", date(7, "may", 1950), works("bbc", 15200)),
    person("ann", "fox", date(9, "may", 1951), works("", 0)), 
    [person("pat", "fox", date(5, "may", 1973), works("", 0)),
     person("jim", "fox", date(5, "may", 1973), works("", 0))]
).

family(
    person("david", "king", date(10, "june", 1948), works("google", 23800)),
    person("kate", "king", date(15, "july", 1951), works("musician", 13600)),
    [person("bob", "king", date(25, "may", 1968), works("", 0)),
     person("danny", "king", date(29, "april", 1973), works("ote", 10800))]
).

family(
    person("spencer", "thomas", date(8, "august", 1953), works("singer", 19500)),
    person("masie", "thomas", date(12, "january", 1952), works("comedian", 12400)),
    [person("charlie", "thomas", date(19, "march", 1968), works("", 0)),
     person("ben", "thomas", date(29, "october", 1973), works("mechanic", 13200)),
     person("taylor", "thomas", date(2, "december", 1978), works("nova", 11000)),
     person("meg", "thomas", date(3, "november", 1980), works("", 0))]
).

child(X) :- family(_, _, Children), member(X, Children).

bornInYear(person(_, _, date(_, _, Year), _), Year).

dateofbirth(Year, ChildrenWithYearOfBirth) :- findall(X, (child(X), bornInYear(X, Year)), ChildrenWithYearOfBirth).

%Kailog, 20/11/2023