%% Problem 1: Variables and time

time = clock

% What is the size of time?

size(time)

% Is time a row or column vector?

%       Time is a row vector (1,6)

% What does time consist of?

%       Time consists of a row vector in [ year, month, day, hour, minute,
%       second] format

% What variable class is time?

%B) Create a date string with only the current year

yearString = datestr(now, 'yyyy')

% C) Save time and yearString in a .mat file

save('time')

save('yearString')

%% Problem 2: Plotting Sine and Cosine Waves

tArray = linspace(0, 1, 1001);

% What is the sample interval in seconds of tArray?

nInterval = tArray(4)-tArray(3)% how do I add seconds?

% Create a variable f = 5 Hz

f = 5;

w = f * 2*pi % Convert Hz to angular frequency

% Create a variable for the sine and cosine of (w *  tArray)

tArraySin = sin(w * tArray);

tArrayCos = cos(w * tArray);

%% Plots

figure(1)
plot(tArray, tArraySin, 'b . :') % Plots a sine wave with a blue dot line

hold on

plot(tArray, tArrayCos, 'r-') % plots a Cosine wave with a red solid line

xlabel('Time (seconds)') 

ylabel('Frequency (rad/s)')

legend('Sine', 'Cosine', 'Location', 'NorthEastOutside') 
% Adds a legend to the upper right corner of figure

axis([ 0 1 -1.5 1.5]) % Sets X-axis from 0 - 1 and Y-axis from -1.5 - 1.5

grid on % Turns a major axis grid on

%Answer questions

%% Problem 3: Population growth

clc
clear all

% A)
initialRabbits = 2;

dT = 1; % The time step for computation is 1 gestation period

% B)
dTMax = 11; % Maximum number of gestation periods

growthRate = 1; % Growth rate for the population of rabbits

%C)
n = 1;

rabbitPopulation = zeros(2 , 7); % Creates a 2x7 array to be populated with population data


while n <= dTMax           % Iterate through n until dTMax is obtained
    rabbitPopulation(1, n) = n;
    rabbitPopulation(2, 1) = initialRabbits;
    rabbitPopulation(2, n+1) = rabbitPopulation(2, n) + (growthRate * rabbitPopulation(2, n) * dT);
    n = n + 1;
end

rabbitPopulation(1,7) = 7 % Manual fix for the 7th element.

%% Rabbit Figure
&D)
figure (2);

subplot (1,2,1);

plot (rabbitPopulation(1,:),rabbitPopulation(2,:));
xlabel ('Generation')
ylabel ('Rabbit Population')
title ('Growth Rate of 0.75')
grid on
hold on
subplot (1,2,2);
plot (rabbitPopulation(1,:),log10(rabbitPopulation(2,:)));
xlabel ('Generation')
ylabel ('log10 of Population')
title ('Growth Rate of 0.75')
grid on

%%  Analysis

%E)
%%Rabbit population is correlated exponentially to the population growth rate when
%%using the model above. Growth rates of 0.1 and 1 produced 3.5 and 128
%%total rabbits respectively after only six gestation periods. 

%F)
% The Merck Manual (2011) gives a gestation period of 31 days which is
% equal to 11 gestation periods in one year. With a growth rate of 1, the
% model produces a total Rabbit Population after one year of 4096 rabbits,
% starting from 2 rabbits. 




