clear
close all

% Create a script in Matlab to do the following. Submit your code and plots.
% i. Use makedist to create an exponential distribution object. Set the mean to 100.
dist = makedist('Exponential', 'mu', 100);

% ii. What is the formula for the probability density function of this distribution?

%See Lecture Slides 7

% iii. Use Matlab to find its mean, median, interquartile range, variance, and standard deviation.

%Mean
calculated_mean = mean(dist);

%Median
calculated_median = median(dist);

%Interquartile Range
calculated_iqr = iqr(dist);

%Variance
calculated_variance = var(dist);

%Standard Deviation 
calculated_standard_deviation = std(dist);

disp('Mean');
disp(calculated_mean);
disp('Median');
disp(calculated_median);
disp('IQR');
disp(calculated_iqr);
disp('Variance');
disp(calculated_variance);
disp('Standard Deviation');
disp(calculated_standard_deviation);

% iv. Use Matlab?s random to generate data sets sampled from this distribution. Create three data sets with 2, 10, and 1000 samples each.
data_2 = random(dist, 2, 1);
data_10 = random(dist, 10, 1);
data_1000 = random(dist, 1000, 1);

% v. Use histogram to plot a histogram for the data set with 1000 samples. Overlay this histogram with the pdf (Use linspace and pdf). Hint: histogram(data,?Normailization?,?pdf?)
histogram(data_1000, 'Normalization', 'pdf');

% vi. Now use random to generate three matrices of samples; one 2×1000, another 10×1000, and another 1000×1000.
data_2_1000 = random(dist, [2,1000]);
data_10_1000 = random(dist, [10,1000]);
data_1000_1000 = random(dist, [1000,1000]);

% vii. Compute the sample means. You will get three arrays of size 1×1000 corresponding to averages of samples of size 2, 10, and 1000.
sample_mean_2 = mean(data_2_1000);
sample_mean_10 = mean(data_10_1000);
sample_mean_1000 = mean(data_10_1000);

% viii. Plot histograms of each of these arrays of sample means. Overlay the histograms with a Gaussian fit. Hint: histfit.
histfit(sample_mean_2, 10, 'inversegaussian');
histfit(sample_mean_10, 10, 'inversegaussian');
histfit(sample_mean_1000, 10, 'inversegaussian');

% ix. How does this result relate to the Central Limit Theorem?

% Need to refer to Lecture Slides 6