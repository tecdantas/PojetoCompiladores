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

OPEN_PAREN 	: '(' ;
CLOSE_PAREN 	: ')' ;
LCURLY 		: '{' ;
RCURLY 		: '}' ;
LCOLCH 		: '[' ;
RCOLCH 		: ']' ;
PVIRGULA	: ';' ;
VIRGULA		: ',' ;
EXCLAM		: '!' ;
HIFEN		: '-' ; //Pequeno traço, identico ao sinal (-) menos dos Operadores.
IGUAL		: '=' ;

PROGRAMA	: 'Program';
SE		: 'if';
SENAO		: 'else';
BOOL		: 'boolean';
QUEBRAR		: 'break';
CHAMARFORA	: 'callout';
CLASSE		: 'class';
CONT		: 'continue';
PARA		: 'for';
INTEIRO		: 'int';
RETORNE		: 'return';
VERDADE		: 'true';
FALSO		: 'false';
VOID		: 'void';

BOOLEAN 	: ('false' | 'true') ;

CHAR_LITERAL 	: '\''(ESC|CHAR|CARACTERE|DIGIT|ESPECIAL|'\t');

STRING 		: '"'(ESC|CARACTERE|DIGIT|ESPECIAL|ARITMETICOS|COMPARACAO|LOGICO|OPERADORES|'\\'|~('"'))*'"';

P_RESERV 	: ('boolean' | 'break' | 'callout' | 'class' | 'continue' | 'if' | 'else' | 'for' | 'int' | 'float' | 'return' |  'void' | BOOLEAN);

OPERADORES 	: (ARITMETICOS|COMPARACAO|LOGICO|ESPECIAL);

NUMEROS 	: DIGIT | HEX;

COMPARACAO	: ('>'|'<'|'>='|'<='|'=='|'==='|'!=');

ASSING_OP	: ('+=' | '-=');

LOGICO 		: ('&&'|'||');

ARITMETICOS	: ('+'|'-'|'*'|'/');

ID: ( '_' | CARACTERE) (DIGIT|CARACTERE|'_' )*;

WS_ : (' ' | '\n' | '\r' | '\t' )+ -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

fragment CHAR : (']'..'~' | '#'..'&' | '('..'[' | ' ' | '!' | '\\t' | '\\\\' | DIGIT);

fragment DIGIT : [0-9]+;

fragment HEX: '0x'(DIGIT|'a'..'f'|'A'..'F')+;

fragment CARACTERE : [a-zA-Z];

fragment ESC : '\\' ('n'|'"' | '\'');

fragment ESPECIAL: ('!' | '#'|'$' | '%' | '&' |':'|'>'|'='|'<'|'?'|'@'| '[' |']'|'^'|'_'|'{'|'}'|'~');




//conforme consta no proj do professor(foto)
//INC		: '++' ;
//DEC		: '--' ;
//ADD		: '+'  ;
//SUB		: '-'  ;
//MUL		: '*'  ;
//DIV		: '/'  ;
//BIT_AND	: '&'  ;
//BIT_OR	: '|'  ;
//MOD		: '%'  ;
//EXCL		: '!'  ;

//Separadores
//LPAREN	: '('  ;
//RPAREN	: ')'  ;
//LBRACE	: '{'  ;
//RBRACE	: '}'  ;
//SEMI		: '['  ;
//COMMA		: ']'  ;

