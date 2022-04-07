clc;
clear all;
close;

[a,Fs1]=wavread("E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\Harmonium.wav");//Here the first tone
[b,Fs2]=wavread("E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\Tabla.wav");//Here the second tone
p1=input('Enter the required playback speed of the first tone = ')
p2=input('Enter the required playback speed of the second tone = ')

Fs=(Fs1+Fs2)/2;

//Processing of First Tone
n1=length(a(1,:));
t_m11=n1/Fs1;
t_ogm1=linspace(0,t_m11,n1);//linspace(x1, x2) generates a row vector of n equally spaced values ranging exactly from x1 to x2
t_m12=n1/Fs1*1/p1;
t_prom1=linspace(0,t_m12,n1);
r1=a(:,$:-1:1);//Reversing the file
n2=length(r1(1,:));
t_rm1=n2/Fs1;
t_rm1=linspace(0,t_rm1,n2);

//Processing of Second Tone
n2=length(b(1,:));
t_m21=n2/Fs2;
t_ogm2=linspace(0,t_m21,n2);//linspace(x1, x2) generates a row vector of n equally spaced values ranging exactly from x1 to x2
t_m22=n2/Fs2*1/p2;
t_prom2=linspace(0,t_m22,n2);
r2=b(:,$:-1:1);//Reversing the file
n3=length(r2(1,:));
t_rm2=n3/Fs2;
t_rm2=linspace(0,t_rm2,n3);

c=[a,b];//Concatenating two tones (c1+c2)
n4=length(c(1,:));
t_con=n4/Fs;
t_con=linspace(0,t_con,n4);

s=[a;b];//Concatenating two tones into a Stereo tone (Both the tones will be played together & both the tones should be of the same length)

wavwrite(a,p1*Fs1,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\B Processed Tone_1.wav')
wavwrite(b,p2*Fs2,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\B Processed Tone_2.wav')
wavwrite(r1,Fs1,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\C Reversed Tone_1.wav')
wavwrite(r2,Fs2,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\C Reversed Tone_2.wav')
wavwrite(c,Fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\D Concatenated Tone.wav')
wavwrite(s,Fs,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\E Stereo Concatenated Tone.wav')

[sm,Fsa]=wavread("E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\E Stereo Concatenated Tone.wav")// Reading a stereo file
left=sm(1,:);// Uncomment to get left side component
right=sm(2,:);// Uncomment to get right side component
wavwrite(left,Fsa,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\F Stereo to Mono Tone_Left.wav')
wavwrite(right,Fsa,'E:\Chris\Collage\Degree\4th Semester\Signals & Systems\IEEE\Audio Processing\Read & Process\F Stereo to Mono Tone_Right.wav')

n5=length(s(1,:));
t_sa=n5/Fs;
t_s=linspace(0,t_sa,n5);
n6=length(left(1,:));
t_lefta=n6/Fsa;
t_left=linspace(0,t_lefta,n6);
n7=length(right(1,:));
t_righta=n7/Fsa;
t_right=linspace(0,t_righta,n7);

figure(0)
f = gcf();
f.background = 8;
subplot(311)
plot(t_ogm1,a)
title("Original Harmonium Tone ")

subplot(312)
plot(t_prom1,a)
title("Processed Harmonium Tone")

subplot(313)
plot(t_rm1,r1)
title("Reversed Harmonium Tone")

halt("Press Enter")

figure(1)
f = gcf();
f.background = 8;
subplot(311)
plot(t_ogm2,b)
title("Original Tabla Tone")

subplot(312)
plot(t_prom2,b)
title("Processed Tabla Tone")

subplot(313)
plot(t_rm2,r2)
title("Reversed Tabla Tone")

halt("Press Enter")

figure(2)
f = gcf();
f.background = 8;
plot(t_con,c)
title("Concatenation of Harmonium & Tabla Tone")

halt("Press Enter")

figure(3)
f = gcf();
f.background = 8;
subplot(311)
plot(t_s,s)
title("Stereo Concatenated Harmonium & Tabla Tone")

subplot(312)
plot(t_left,left)
title("Left component of Stereo Concatenated Harmonium & Tabla Tone")

subplot(313)
plot(t_right,right)
title("Right component of Stereo Concatenated Harmonium & Tabla Tone")

