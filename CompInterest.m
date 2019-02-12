%%CompInterest.m
%
% Program purpose: To calculate the value of an investment placed intp
% compound interest for a specificied number of years, interest rate,
% and number of times compounded per year.
%
% 18 January 2019
% Tyler Krasny
% Consulted Thomas Kasl on round() function.
%% Set Parameters
rawValue = 0; %Value of the interest-bearing investment
value = 0; %Rounded value of the investment
p = 1; %principle amount ($)
r = 1; %interest rate
k = 1e9; %number of times compounded per year
Ny = 1; %number of years invested

%% Calculation of Value
% calculate using V = p(1 + r/k)^(k*Ny)
rawValue = p*(1+ r/k)^(k*Ny);
value = round(rawValue,2);


%% Display Results
disp(['The value of the investment is $', num2str(value)]);


