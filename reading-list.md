Reading list
================

``` r
reading_list <- read_delim('reading-list.txt', delim = ",")
reading_list
```

    ## # A tibble: 38 × 7
    ##                                                                          title
    ##                                                                          <chr>
    ## 1                                    Living in the Light: Money, Sex and Power
    ## 2       Sprint: How to Solve Big Problems and Test New Ideas in Just Five Days
    ## 3  The Lean Startup: How Today's Entrepreneurs Use Continuous Innovation to Cr
    ## 4                   Deep Work: Rules for Focused Success in a Distracted World
    ## 5                   Zero to One: Notes on Startups, or How to Build the Future
    ## 6                                                       Advanced R programming
    ## 7                                                           R for Data Science
    ## 8                                                                   R Packages
    ## 9  The Inevitable: Understanding the 12 Technological Forces That Will Shape O
    ## 10                               Buffett: The Making of an American Capitalist
    ## # ... with 28 more rows, and 6 more variables: author <chr>, pages <int>,
    ## #   publication_year <int>, date_read <date>, format <chr>, genre <chr>
