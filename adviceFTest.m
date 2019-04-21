function betString = adviceFTest(cellTest)

threshold = .4;
probability = .5;

if probability < threshold
    betString = 'You should call BS';
else
    dice1 = cellTest(1,1);
    betString = num2str(dice1);
end


