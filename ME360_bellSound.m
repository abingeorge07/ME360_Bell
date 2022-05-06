frequencies =[13.364 13.436 52.94 148.41 280.36 280.37 318.82 318.83 489.46 459.53];
frequencies = frequencies*2*pi;
scalar=[0.9 0.3 0.4 0.4 0.8 0.7 1.8 0.8 1.8 1.5];

fs= 100000;
t_max= 4;
t= 1:(1/fs): t_max;

temp= frequencies'.*t;
temp= sin(temp);
temp= scalar*temp;

temp2= -2*t;
temp2 = exp(temp2);

s= temp.*temp2;

plot(t,s);

sound(s,fs);
audiowrite("BellSound.wav", s, fs);