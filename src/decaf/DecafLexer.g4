lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}


OPEN_PAREN : '(';
CLOSE_PAREN : ')';

LCURLY : '{';
RCURLY : '}';

CHAR_LITERAL : '\'' (ESC|CHAR) '\'';

fragment CHAR : (']'..'~' | '#'..'&' | '('..'[' | ' ' | '!' | '\\t' | '\\\\' | DIGIT);

STRING : '"' (ESC|CHAR)+ '"';

P_RESERV :  ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'false' | 'for' | 'int' | 'float' | 'return' | 'true' | 'void');

OPERADORES : ('+' | '-' | '*' | '/' | '<' | '>' | '<=' | '>=' | '==' | '!=' | '&&');

//OP_ATRIBUICAO : ('=');

//DELIMITADORES : ';' | ',';

NUMEROS : DIGIT | HEX;

fragment HEX : '0'[xX][0-9a-fA-F]+;

ID  : ('a'..'z' | 'A'..'Z' | NUMEROS)+;

//NEWLINE : '\r' ? '\n';      //novo*****


WS_ : (' ' | '\n' | '\r' | '\t' )+ -> skip;
SL_COMMENT : '//' (~'\n')* '\n' -> skip;

fragment DIGIT : [0-9]+;

fragment ESC : '\\' ('n'|'"' | '\'');

