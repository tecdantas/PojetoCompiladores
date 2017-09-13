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

//CARACT_ESP : ('(' | ')' | '[' | ']' | '{' | '}');

ID  : ('a'..'z' | 'A'..'Z')+;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC|~'\'') '\'';

STRING : '"' (ESC|~'"')* '"';
P_RESERV :  ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'false' | 'for' | 'int' | 'float' | 'return' | 'true' | 'void');

OP_ARITMETICOS : ('+' | '-' | '*' | '/'):
OP_RELACIONAIS : ('<' | '>' | '<=' | '>=' | '==' | '!=');
OP_ATRIBUICAO : ('=');

//DELIMITADORES : ';' | ',';

//OP_ADD : '+';
//OP_SUB : '-';
//OP_MUL : '*';
//OP_DIV : '/';

NUMERO : [0-9]+;



fragment
ESC :  '\\' ('n'|'"');
