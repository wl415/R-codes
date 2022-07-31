# R-codes
rsqaured test for normality

When choosing test for normality, people often use Q-Qplot instead of any objective tests, because "t-test is robust".
However, it is shown that statistic students' judgement with Q-Q plot is similar to the result of the test using r^2 of Q-Q plot(1)
and the r^2 test have similar but slightly lower power in some non-normal distribution, and marginally higher power on other distribution
when compared to the shapiro-wilk test, which is usually regarded as the most powerful test for normality(2). Their claim therefore does not stand
as long as they are professional, and if they are not, judging by feel is even worse. Anyway, to make Q-Q plot lover slightly more happy, 
without me needing to deal with those subjectivity, I have compiled a table and a test based on correlation coefficient of Q-Q plot.
The test is quite primitive and canot provide exact probability. However, I believe this is still an improvement from judging by feel when looking at Q-Q plot.
The table is created by Monte-carlo simulation with 1e5 repeats on each sample size. While the values are slightly different from the previous table(2), for 
n>10 I have used more samples than the previous table(repeats = 1e5/n), therefore should be more reliable. The method to compute the x-value 
on the Q-Q plot is also different from the method used in (2). The table contains 3<=n<=200, for larger number of samples, the default is to use n=200
as an approximation, while it is possible to generate significant values with the code provided. If you really want more accurate p-value, instead of what was provided, it is also possible to generate a simulation that you can compare your r^2 against to approximate for p-value. 

Do I believe people should use this test? absolutely not, at least for testing for normality. The test is prettymuch equivalent to shapiro-francia test
which uses the test statistic r^4, and there are packages out there that will provide the exact probability. If people wants to be more relaxed, 
than they should try tests like lilliefors test which is based on kolmogrov-smirnov but with estimated parameters. However, it is definitely interesting
to extend the test to other distribution(2)

Please read the actual paper before using any of this. 

(1): Jernigan, R. W. (2012). "Developing a Test of Normality in the Classroom". 
Section on Statistical Education – JSM 2012: 2784-2795

(2): Filliben, J. J. (1975). “The Probability Plot Correlation Coefficient Test for
Normality”. Technometrics 17 (1): 111–117
