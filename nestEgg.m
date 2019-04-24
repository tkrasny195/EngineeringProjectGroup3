% nestEgg.m
% Create a program that takes an initial Balance that accrues
% interest yearly and find the balance of the account after 30
% years.
clear
clc
%% Set Parameters
totalYears = 30;
rate = 0.08; % Annual interest rate
initialBalance = 1000; %($USD)
%% Initialize Arrays
Balance = zeros(1, totalYears);
Balance(1) = initialBalance;
years = [1:totalYears];
%% Calculate Balance (using FOR loop)
for iyears = 1:totalYears-1
 Balance(iyears+1) = Balance(iyears) + rate*Balance(iyears);
end
%% Display Results
disp(['The total balance at the end of year ', num2str(totalYears),...
 ' is ',num2str(Balance(totalYears)), ' dollars.']);