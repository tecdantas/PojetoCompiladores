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

CHAR : '\'' (ESC|~'\'') '\'';

STRING : '"' (ESC|~'"')* '"';

PR_BOOLEAN : 'boolean';
PR_BREAK : 'break';
PR_CALLOUT : 'callout';
PR_CLASS : 'class';
PR_CONTINUE : 'continue';
PR_IF : 'if';
PR_ELSE : 'else';
PR_FALSE : 'false';
PR_FOR : 'for';
PR_INT : 'int';
PR_FLOAT : 'float';
PR_RETURN : 'return';
PR_TRUE : 'true';
PR_VOID : 'void';

OP_ADD : '+';
OP_SUB : '-';
OP_MUL : '*';
OP_DIV : '/';

NUMERO : [0-9]+;



fragment
ESC :  '\\' ('n'|'"');
