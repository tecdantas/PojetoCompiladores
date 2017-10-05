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

BOOLEAN :  ('false' | 'true');

//CHAR_LITERAL : '\''(ESC|CARACTERE|DIGIT|ESPECIAL|'\t')'\'';

//STRING : '"'(ESC|CARACTERE|DIGIT|ESPECIAL|ARITMETICOS|COMPARACAO|LOGICO|OPERADORES|'\\'|~('"'))*'"';

P_RESERV :  ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'for' | 'int' | 'float' | 'return' |  'void' | BOOLEAN);

OPERADORES : (ARITMETICOS|COMPARACAO|LOGICO|ESPECIAL);

NUMEROS : DIGIT | HEX;

HEX:           '0x'(DIGIT|'a'..'f'|'A'..'F')+;

ID: [_a-zA-Z][0-9_a-zA-Z]*;

WS_ : (' ' | '\n' | '\r' | '\t' )+ -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;
fragment CARACTERE : [a-zA-Z];
fragment DIGIT : [0-9]+;
fragment ESC : '\\' ('n'|'"' | '\'');
fragment ARITMETICOS: ('+'|'-'|'*'|'/');
fragment ESPECIAL: ('!' | '#'|'$' | '%' | '&' | '(' | ')' | '*' | '+' | ',' | '-'| '.'| ';'|':'|'>'|'='|'<'|'?'|'@'| '[' |']'|'^'|'_'|'{'|'}'|'~');
fragment COMPARACAO: ('>'|'<'|'>='|'<='|'=='|'==='|'!=');
fragment LOGICO : ('&&'|'||');

