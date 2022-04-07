clc;
clear all;
close;

fs=8000;//sampling frequency
t=0:1/fs:0.5;
k=2;//frequency scale

//music tone frequencies
C1=sin(2*%pi*k*33*t);   C2=sin(2*%pi*k*65*t);   C3=sin(2*%pi*k*131*t);  C4=sin(2*%pi*k*262*t);
D1=sin(2*%pi*k*37*t);   D2=sin(2*%pi*k*73*t);   D3=sin(2*%pi*k*147*t);  D4=sin(2*%pi*k*294*t);
E1=sin(2*%pi*k*41*t);   E2=sin(2*%pi*k*82*t);   E3=sin(2*%pi*k*165*t);  E4=sin(2*%pi*k*330*t);
F1=sin(2*%pi*k*44*t);   F2=sin(2*%pi*k*87*t);   F3=sin(2*%pi*k*175*t);  F4=sin(2*%pi*k*349*t);
G1=sin(2*%pi*k*49*t);   G2=sin(2*%pi*k*98*t);   G3=sin(2*%pi*k*196*t);  G4=sin(2*%pi*k*392*t);
A1=sin(2*%pi*k*55*t);   A2=sin(2*%pi*k*110*t);  A3=sin(2*%pi*k*220*t);  A4=sin(2*%pi*k*440*t);
B1=sin(2*%pi*k*62*t);   B2=sin(2*%pi*k*123*t);  B3=sin(2*%pi*k*247*t);  B4=sin(2*%pi*k*494*t);

C5=sin(2*%pi*k*523*t);  C6=sin(2*%pi*k*1047*t); C7=sin(2*%pi*k*2093*t); C0=sin(2*%pi*16*t); 
D5=sin(2*%pi*k*587*t);  D6=sin(2*%pi*k*1175*t); D7=sin(2*%pi*k*2349*t);
E5=sin(2*%pi*k*659*t);  E6=sin(2*%pi*k*1319*t); E7=sin(2*%pi*k*2637*t);
F5=sin(2*%pi*k*698*t);  F6=sin(2*%pi*k*1397*t); F7=sin(2*%pi*k*2794*t);
G5=sin(2*%pi*k*784*t);  G6=sin(2*%pi*k*1568*t); G7=sin(2*%pi*k*3136*t);
A5=sin(2*%pi*k*880*t);  A6=sin(2*%pi*k*1760*t); A7=sin(2*%pi*k*3520*t);
B5=sin(2*%pi*k*988*t);  B6=sin(2*%pi*k*1976*t); B7=sin(2*%pi*k*3951*t);

C1#=sin(2*%pi*k*35*t);  C2#=sin(2*%pi*k*69*t);  C3#=sin(2*%pi*k*139*t);  C4#=sin(2*%pi*k*227*t);
D1#=sin(2*%pi*k*39*t);  D2#=sin(2*%pi*k*78*t);  D3#=sin(2*%pi*k*156*t);  D4#=sin(2*%pi*k*311*t);
F1#=sin(2*%pi*k*46*t);  F2#=sin(2*%pi*k*92*t);  F3#=sin(2*%pi*k*185*t);  F4#=sin(2*%pi*k*370*t);
G1#=sin(2*%pi*k*52*t);  G2#=sin(2*%pi*k*104*t); G3#=sin(2*%pi*k*208*t);  G4#=sin(2*%pi*k*415*t);
A1#=sin(2*%pi*k*58*t);  A2#=sin(2*%pi*k*117*t); A3#=sin(2*%pi*k*233*t);  A4#=sin(2*%pi*k*466*t);

C5#=sin(2*%pi*k*554*t);  C6#=sin(2*%pi*k*1109*t);   C7#=sin(2*%pi*k*2218*t);  
D5#=sin(2*%pi*k*622*t);  D6#=sin(2*%pi*k*1245*t);   D7#=sin(2*%pi*k*2489*t);  
F5#=sin(2*%pi*k*740*t);  F6#=sin(2*%pi*k*1480*t);   F7#=sin(2*%pi*k*2960*t);  
G5#=sin(2*%pi*k*831*t);  G6#=sin(2*%pi*k*1661*t);   G7#=sin(2*%pi*k*3322*t);  
A5#=sin(2*%pi*k*932*t);  A6#=sin(2*%pi*k*1865*t);   A7#=sin(2*%pi*k*3729*t);  

m1=input('Enter the first tone = ');//Here the first tone
m2=input('Enter the second tone = ');//Here the second tone
m3=input('Enter the third tone = ');//Here the third tone

wavwrite(m1,fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\A Tone_1.wav');
wavwrite(m2,fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\A Tone_2.wav');
wavwrite(m3,fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\A Tone_3.wav');

[y,Fs]=wavread("E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\A Tone_3.wav");
[c1,Fs]=wavread("E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\A Tone_1.wav");
[c2,Fs]=wavread("E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\A Tone_2.wav");
p=input('Enter the required playback speed for third tone = ')

Fs_new=Fs*p;//Increases or Decreases the playback speed by changing the Sampling Frequency

n=length(y(1,:));
t_1=n/Fs;
t_og=linspace(0,t_1,n);//linspace(x1, x2) generates a row vector of n equally spaced values ranging exactly from x1 to x2
t_2=n/Fs*1/p;
t_pro=linspace(0,t_2,n);
t_con1=(0:length(c1)-1)*1/Fs;
t_con2=(0:length(c2)-1)*1/Fs;

r=y(:,$:-1:1);//Reversing the file
t_rev=(0:length(r)-1)*1/Fs;

c=[c1,c2];//Concatenating two tones (c1+c2)
t_con=(0:length(c)-1)*1/Fs;

s=[c1;c2];//Concatenating two tones into a Stereo tone (Both the tones will be played together & both the tones should be of the same length)

wavwrite(y,Fs_new,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\B Processed Tone.wav')
wavwrite(r,Fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\C Reversed Tone.wav')
wavwrite(c,Fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\D Concatenated Tone.wav')
wavwrite(s,Fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\E Stereo Concatenated Tone.wav')

[sm,Fs1]=wavread("E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\E Stereo Concatenated Tone.wav")// Reading a stereo file
left=sm(1,:);// Uncomment to get left side component
right=sm(2,:);// Uncomment to get right side component
wavwrite(left,Fs1,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\F Stereo to Mono Tone_Left.wav')
wavwrite(right,Fs1,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Generate & Process\F Stereo to Mono Tone_Right.wav')

n0=length(s(1,:));
t_sa=n0/Fs1;
t_s=linspace(0,t_sa,n0);
n1=length(left(1,:));
t_lefta=n1/Fs1;
t_left=linspace(0,t_lefta,n1);
n2=length(right(1,:));
t_righta=n2/Fs1;
t_right=linspace(0,t_righta,n2);

figure(0)
f = gcf();
f.background = 8;
subplot(311)
plot(t_og,y)
title("Original Third Tone")

subplot(312)
plot(t_pro,y)
title("Processed Third Tone")

subplot(313)
plot(t_rev,r)
title("Reversed Third Tone")

figure(1)
f = gcf();
f.background = 8;
subplot(311)
plot(t_con1,c1)
title("Original First Tone")

subplot(312)
plot(t_con2,c2)
title("Original Second Tone")

subplot(313)
plot(t_con,c)
title("Concatenated First & Second Tone")

figure(2)
f = gcf();
f.background = 8;
subplot(311)
plot(t_s,s)
title("Stereo Concatenated First & Second Tone")

subplot(312)
plot(t_left,left)
title("Left component of Stereo Concatenated First & Second Tone")

subplot(313)
plot(t_right,right)
title("Right component of Stereo Concatenated First & Second Tone")
