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

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR_LITERAL : '\'' (ESC|CHAR) '\'';

CHAR : (']'..'~' | '#'..'&' | '('..'[' | ' ' | '!' | '\\t' | '\\\\');

STRING : '"' (ESC|~'"')* '"';

P_RESERV :  ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'false' | 'for' | 'int' | 'float' | 'return' | 'true' | 'void');

OPERADORES : ('+' | '-' | '*' | '/' | '<' | '>' | '<=' | '>=' | '==' | '!=' | '&&');

OP_ATRIBUICAO : ('=');

DELIMITADORES : ';' | ',';

NUMEROS : [0-9]+ | HEX;

HEX : '0'[xX][0-9a-fA-F]+;

ID  : ('a'..'z' | 'A'..'Z' | NUMEROS)+;

fragment
ESC : '\\' ('n'|'"');
