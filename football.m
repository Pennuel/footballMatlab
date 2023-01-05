% this may be the main file where we create the animation flow...



footballplayground();

p1 = person(6,0,"b");

for i=6 : 50
 pause(1/100);
 %delete(p1);
 p1 = person(i+15,i+40,"b");
 clear;
end


