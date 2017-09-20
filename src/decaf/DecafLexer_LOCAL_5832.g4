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



ID  : ('a'..'z' | 'A'..'Z')+;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : ']'..'~' | '#'..'&' | '('..'[' | ' ' | '!' | '\\t' | '\\\\';

STRING : '"' (ESC|~'"')* '"';

P_RESERV :  ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'false' | 'for' | 'int' | 'float' | 'return' | 'true' | 'void');

OP_ARITMETICOS : ('+' | '-' | '*' | '/');

OP_RELACIONAIS : ('<' | '>' | '<=' | '>=' | '==' | '!=');

OP_ATRIBUICAO : ('=');

DELIMITADORES : ';' | ',';

NUMINT : [0-9]+ | NUMHEX;

NUMHEX : '0'[xX][0-9a-fA-F]+;

fragment
ESC : '\\' ('n'|'"');
