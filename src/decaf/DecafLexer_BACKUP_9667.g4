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

<<<<<<< HEAD

=======
//CARACT_ESP : ('(' | ')' | '[' | ']' | '{' | '}');
>>>>>>> 79ca64d1944003c93c0e9f12483e29255583fbfa

ID  : ('a'..'z' | 'A'..'Z')+;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : ']'..'~' | '#'..'&' | '('..'[' | ' ' | '!' | '\\t' | '\\\\';

STRING : '"' (ESC|~'"')* '"';
P_RESERV :  ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'false' | 'for' | 'int' | 'float' | 'return' | 'true' | 'void');

OP_ARITMETICOS : ('+' | '-' | '*' | '/'):
OP_RELACIONAIS : ('<' | '>' | '<=' | '>=' | '==' | '!=');
OP_ATRIBUICAO : ('=');

//DELIMITADORES : ';' | ',';

<<<<<<< HEAD
P_RESERV :  ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'false' | 'for' | 'int' | 'float' | 'return' | 'true' | 'void');

OP_ARITMETICOS : ('+' | '-' | '*' | '/');

OP_RELACIONAIS : ('<' | '>' | '<=' | '>=' | '==' | '!=');

OP_ATRIBUICAO : ('=');
=======
//OP_ADD : '+';
//OP_SUB : '-';
//OP_MUL : '*';
//OP_DIV : '/';
>>>>>>> 79ca64d1944003c93c0e9f12483e29255583fbfa

DELIMITADORES : ';' | ',';

NUMINT : [0-9]+ | NUMHEX;

NUMHEX : '0'[xX][0-9a-fA-F]+;

fragment
ESC : '\\' ('n'|'"');
