grammar NameDatabase;

start        : person_name ',' age ;

person_name  : first_name ' ' last_name ;

first_name   : NAME ;
last_name    : NAME ;

age          : NON_ZERO_NUMBER | ZERO ;

ZERO              : '0' ;
NON_ZERO_NUMBER   : [1-9][0-9]* ;  // No leading zeros

NAME         : [A-Z][a-z]+ ;          // First letter uppercase, rest lowercase
NEWLINE      : [\r\n]+ ;
WS           : [ \t]+ -> skip ;