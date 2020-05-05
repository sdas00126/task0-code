clc;
clear all;
close all;
disp('Welcome to BMI Calculator');
s = input('Enter your name');%Please enter your name within " "(double quotation marks)
choice = menu('Welcome to BMI calculator','Imperial System','SI standard system');
if(choice==1)
   w=input('Enter your weight in pounds');
     h=input('Enter your height in inches');
       bmi=703*w/(h*h);
elseif(choice==2)
    w=input('Enter your weight in kg');
      h=input('Enter your height in metre');
       bmi=w/(h*h);
else
    bmi=0;
end
if(bmi>0 && bmi<=18.49)
    c='Underweight';
elseif(bmi>=18.5 && bmi<25)
    c='Healthy';
elseif(bmi>=25 && bmi<30)
    c='Overweight'
elseif(bmi>=30)
    c='Obese'
end
if(bmi>0)
    disp('Name:');
    disp(s);
    disp('Body Mass Index(BMI)=');
    disp(bmi);
    disp('Category of BMI=');
    disp(c);
else
    disp('Unfortunately you closed the menu TRY AGAIN')
 end
