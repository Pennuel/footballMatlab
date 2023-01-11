% this may be the main file where we create the animation flow...

footballplayground();
%initialite the player
p1 = person(i+5,2+1,"b");
%then loop and display the playe
for i=1 : 24
footballplayground();

p1.display_person(i+5,i+2);

pause(1/1000);
movie(i) = getframe;

end

mywriter = VideoWriter('player');
mywriter.FrameRate = 60;
open(mywriter);
writeVideo(mywriter,movie);
close(mywriter);
