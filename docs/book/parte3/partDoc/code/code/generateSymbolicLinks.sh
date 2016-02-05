#! /bin/bash

#rm -Rv code/gp1990

cp -Rv ../../../gp1990c.dev.code/pascal.l code/gp1990la.l

sed '1,13d' code/gp1990la.l | sed '6,117d ' > code/regp1990la.l

sed '1,20d' code/gp1990la.l | sed '67,109d '  > code/tokgp1990la.l

cp -Rv ../../../gp1990c.dev.code/pascal.y code/gp1990sa.y

sed '1,20d' code/gp1990sa.y > code/clsgp1990la.y