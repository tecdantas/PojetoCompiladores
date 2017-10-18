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

field_decl: type id (VIRGULA type id)* PVIRGULA
	| type id LCOLCH int_literal RCOLCH (VIRGULA type id LCOLCH int_literal RCOLCH)* PVIRGULA;

method_decl: (type | LIMBO) id OPEN_PAREN (type id (VIRGULA type id)*)? CLOSE_PAREN block;

block: LCURLY var_decl* statement* RCURLY;

var_decl: type id(VIRGULA id)* PVIRGULA;

type: INTEIRO | BOOL;

statement: location assing_op expr PVIRGULA 
	| method_call PVIRGULA 
	| SE (expr) block (SENAO block)?
	| PARA ( id IGUAL expr (VIRGULA expr)? (PVIRGULA expr PVIRGULA)? block)
	| RETORNE (expr)? PVIRGULA
	| QUEBRAR PVIRGULA
	| CONT PVIRGULA
	| QUEBRAR;

assing_op: (ASSING_OP|IGUAL);

method_call: method_name OPEN_PAREN (expr (VIRGULA expr)*)? CLOSE_PAREN
	| CHAMARFORA OPEN_PAREN (string_literal (VIRGULA callout_arg (VIRGULA callout_arg)*)?) CLOSE_PAREN;

method_name: id;

location: id 
	| id LCOLCH expr RCOLCH;

expr: location
	|method_call
	|literal
	|expr (OPERADORES|HIFEN) expr
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

id: ID;

decimal_literal: DIGIT;

//hex_digit: HEX;

hex_literal: HEX;

int_literal: decimal_literal | hex_literal;

bool_literal: FALSO|VERDADE;

char_literal: CHAR_LITERAL;

string_literal: STRING;
