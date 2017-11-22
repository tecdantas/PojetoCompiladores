parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: CLASSE PROGRAMA LCURLY field_decl* method_decl* RCURLY;

field_decl: type ID (VIRGULA type ID)* PVIRGULA
	| type ID LCOLCH int_literal RCOLCH (VIRGULA type ID LCOLCH int_literal RCOLCH)* PVIRGULA;

method_decl: (type | VOID) ID OPEN_PAREN (type ID (VIRGULA type ID)*)? CLOSE_PAREN block;

block: LCURLY var_decl* statement* RCURLY;

var_decl: type ID(VIRGULA ID)* PVIRGULA;

type: INTEIRO | BOOL;

statement: location assing_op expr PVIRGULA 
	| method_call PVIRGULA 
	| SE (expr) block (SENAO block)?
	| PARA ID assing_op expr VIRGULA expr block
	| RETORNE (expr)? PVIRGULA
	| QUEBRAR PVIRGULA
	| CONT PVIRGULA
	| QUEBRAR;

assing_op: (ASSING_OP|IGUAL);

method_call: method_name OPEN_PAREN (expr (VIRGULA expr)*)? CLOSE_PAREN
	| CHAMARFORA OPEN_PAREN (string_literal (VIRGULA callout_arg (VIRGULA callout_arg)*)?) CLOSE_PAREN;

method_name: ID;

location: ID 
	| ID LCOLCH expr RCOLCH;

expr: location
	|method_call
	|literal
	|expr ARITMETICOS expr
	|HIFEN expr
	|EXCLAM expr
	|OPEN_PAREN expr CLOSE_PAREN;

callout_arg: expr
	|string_literal;

operadores: OPERADORES;

aritmeticos: ARITMETICOS;

comparar: COMPARACAO;

logico: LOGICO;

literal: int_literal | char_literal | bool_literal;

//ID: ID;

//decimal_literal: DIGIT;

//hex_literal: HEX;

int_literal: NUMEROS;

bool_literal: FALSO|VERDADE;

char_literal: CHAR_LITERAL;

string_literal: STRING;
