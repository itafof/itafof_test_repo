goptions cback=black colors=(white cyan red conflict yellow);
data hat;
 do x=-5 to 5 by .25;
 do y=-5 to 5 by .25;
 z=sin(sqrt(x*x + y*y));
 output;
 end;
end;
run;
title1 c=white f=swiss 'The Cowboy Hat';
title2 h=2 angle=90 ' ';



proc g3d data=hat;
plot y*x=z / ctop=green  ctext=blue;
run; run;run;
