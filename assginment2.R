> # Author: Victoria Hudson, Date: 09/23/2022, Purpose: Performing a correlation analysis
> 
> my_data <- mtcars 
> head(my_data, 6)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
> 
> res <- cor.test(my_data$disp, my_data$mpg, method = "pearson") 
> res

        Pearson's product-moment correlation

data:  my_data$disp and my_data$mpg
t = -8.7472, df = 30, p-value = 9.38e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9233594 -0.7081376
sample estimates:
       cor 
-0.8475514 

> 
> res2 <-cor.test(my_data$disp, my_data$mpg, method = "spearman")
Warning message:
In cor.test.default(my_data$disp, my_data$mpg, method = "spearman") :
  Cannot compute exact p-value with ties
> res2

        Spearman's rank correlation rho

data:  my_data$disp and my_data$mpg
S = 10415, p-value = 6.37e-13
alternative hypothesis: true rho is not equal to 0
sample estimates:
       rho 
-0.9088824 

> 
