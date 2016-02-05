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