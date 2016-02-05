%{
/*
 * Original Source: http://ccia.ei.uvigo.es/docencia/PL/doc/bison/pascal/pascal.l
 * Notes: to ways to spell "external" and "->" ok for "^".
 *
 */

#include <stdio.h>
#include "pascal.tab.h"
int line_no = 1;

%}

NQUOTE		[^']
IDENTIFIER	[a-zA-Z]([a-zA-Z0-9\-])*
DIGITSECUENCE	[0-9]+         
REALNUMBER	[0-9]+"."[0-9]+

%%

AND				return(AND);
ARRAY				return(ARRAY);
CASE				return(CASE);
CONST				return(CONST);
DIV				return(DIV);
DO                             	return(DO);
DOWNTO				return(DOWNTO);
ELSE				return(ELSE);
END				return(END);
EXTERN        |
EXTERNAL			return(EXTERNAL);
FOR				return(FOR);
FORWARD				return(FORWARD);
FUNCTION			return(FUNCTION);
GOTO				return(GOTO);
IF				return(IF);
IN				return(IN);
LABEL				return(LABEL);
MOD				return(MOD);
NIL				return(NIL);
NOT				return(NOT);
OF				return(OF);
OR				return(OR);
OTHERWISE			return(OTHERWISE);
PACKED				return(PACKED);
BEGIN				return(PBEGIN);
FILE				return(PFILE);
PROCEDURE			return(PROCEDURE);
PROGRAM				return(PROGRAM);
RECORD				return(RECORD);
REPEAT				return(REPEAT);
SET				return(SET);
THEN				return(THEN);
TO				return(TO);
TYPE				return(TYPE);
UNTIL				return(UNTIL);
VAR				return(VAR);
WHILE				return(WHILE);
WITH				return(WITH);
{IDENTIFIER}			return(IDENTIFIER);
":="				return(ASSIGNMENT);
'({NQUOTE}|'')+'		return(CHARACTER_STRING);
":"				return(COLON);
","				return(COMMA);
{DIGITSECUENCE}			return(DIGSEQ);
"."                             return(DOT);
".."                            return(DOTDOT);
"="                             return(EQUAL);
">="                            return(GE);
">"                             return(GT);
"["                             return(LBRAC);
"<="                            return(LE);
"("                             return(LPAREN);
"<"                             return(LT);
"-"                             return(MINUS);
"<>"                            return(NOTEQUAL);
"+"                             return(PLUS);
"]"                             return(RBRAC);
{REALNUMBER}			return(REALNUMBER);
")"                             return(RPAREN);
";"                             return(SEMICOLON);
"/"                             return(SLASH);
"*"                             return(STAR);
"**"                            return(STARSTAR);
"->"                        |
"^"                             return(UPARROW);

"(*"                        |
"{"                                { register int c;
                                    while ((c = input()))
                                    {
                                      if (c == '}')
                                        break;
                                      else if (c == '*')
                                      {
                                        if ((c = input()) == ')')
                                          break;
                                        else
                                          unput (c);
                                      }          
                                      else if (c == '\n')
                                        line_no++;
                                      else if (c == 0)
                                        commenteof();
                                    }
                                }

[\t\f " "]                            ;

\n                                line_no++;

.                                { fprintf (stderr,
                                    "'%c' (0%o): Illegal character at line %d\n",
                                    yytext[0], yytext[0], line_no);
                                }

%%

commenteof()
{
  fprintf (stderr, "lexical error at line %d\n", line_no);
  exit (1);
}

yywrap ()
{
  return (1);
}

