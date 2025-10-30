<start>     ::= <float>

<float>     ::= <int> "." <digits>
<int>       ::= <digit> | <lead_digit> <digits>
<digits>    ::= <digit>+
<lead_digit> ::= "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"

