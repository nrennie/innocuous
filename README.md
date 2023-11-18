# innocuous

An R package that (quietly) overrides `lm()` from base R, and implements it incorrectly. Used as an example of why R package validation is required, and namespacing is useful.

### Example

Set up some data with a known relationship:

```r
set.seed(123)
x <- rnorm(20)
y <- 3*x + 1 + rnorm(20, sd = 0.01)
```

Fit using `lm()` from {innocuous}:

```r
stats::lm(y ~ x)
```

```
Call:
stats::lm(formula = y ~ x)

Coefficients:
(Intercept)            x  
     0.9996       2.9992  
```

Fit using `lm()` from {innocuous}:

```r
innocuous::lm(y ~ x)
```

```
Call:
new_lm(formula = y ~ x)

Coefficients:
(Intercept)            x  
      4.000        2.999  
```

(look at the intercept coefficient!)
