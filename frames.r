R version 4.3.3 (2024-02-29) -- "Angel Food Cake"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> install.packages("tidyverse")
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/tidyverse_2.0.0.tar.gz'
Content type 'application/x-gzip' length 425237 bytes (415 KB)
==================================================
downloaded 415 KB

* installing *binary* package ‘tidyverse’ ...
* DONE (tidyverse)

The downloaded source packages are in
	‘/tmp/RtmpvhqeVC/downloaded_packages’
> library(tidyverse)
> head(diamonds)
> str(diamonds)
tibble [53,940 × 10] (S3: tbl_df/tbl/data.frame)
 $ carat  : num [1:53940] 0.23 0.21 0.23 0.29 0.31 0.24 0.24 0.26 0.22 0.23 ...
 $ cut    : Ord.factor w/ 5 levels "Fair"<"Good"<..: 5 4 2 4 2 3 3 3 1 3 ...
 $ color  : Ord.factor w/ 7 levels "D"<"E"<"F"<"G"<..: 2 2 2 6 7 7 6 5 2 5 ...
 $ clarity: Ord.factor w/ 8 levels "I1"<"SI2"<"SI1"<..: 2 3 5 4 2 6 7 3 4 5 ...
 $ depth  : num [1:53940] 61.5 59.8 56.9 62.4 63.3 62.8 62.3 61.9 65.1 59.4 ...
 $ table  : num [1:53940] 55 61 65 58 58 57 57 55 61 61 ...
 $ price  : int [1:53940] 326 326 327 334 335 336 336 337 337 338 ...
 $ x      : num [1:53940] 3.95 3.89 4.05 4.2 4.34 3.94 3.95 4.07 3.87 4 ...
 $ y      : num [1:53940] 3.98 3.84 4.07 4.23 4.35 3.96 3.98 4.11 3.78 4.05 ...
 $ z      : num [1:53940] 2.43 2.31 2.31 2.63 2.75 2.48 2.47 2.53 2.49 2.39 ...
> glimpse(diamonds)
Rows: 53,940
Columns: 10
$ carat   <dbl> 0.23, 0.21, 0.23, 0.29, 0.31, 0.24, 0.24, 0.26…
$ cut     <ord> Ideal, Premium, Good, Premium, Good, Very Good…
$ color   <ord> E, E, E, I, J, J, I, H, E, H, J, J, F, J, E, E…
$ clarity <ord> SI2, SI1, VS1, VS2, SI2, VVS2, VVS1, SI1, VS2,…
$ depth   <dbl> 61.5, 59.8, 56.9, 62.4, 63.3, 62.8, 62.3, 61.9…
$ table   <dbl> 55, 61, 65, 58, 58, 57, 57, 55, 61, 61, 55, 56…
$ price   <int> 326, 326, 327, 334, 335, 336, 336, 337, 337, 3…
$ x       <dbl> 3.95, 3.89, 4.05, 4.20, 4.34, 3.94, 3.95, 4.07…
$ y       <dbl> 3.98, 3.84, 4.07, 4.23, 4.35, 3.96, 3.98, 4.11…
$ z       <dbl> 2.43, 2.31, 2.31, 2.63, 2.75, 2.48, 2.47, 2.53…
> rename(diamonds, carat_new = carat)
> rename(diamonds, carat_new = carat, cut_new = cut)
> rename(diamonds, carat_new = carat, cut_new = cut)
> summarize(diamonds, mean_carat = mean(carat))
> ggplot(data = diamonds, aes(x = carat, y = price)) +
+   geom_point()
> ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
+   geom_point()
> ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
+   geom_point() +
+   facet_wrap(~cut)
> library(readr)
> hotel_bookings <- read_csv("Course 7/Week 3/hotel_bookings.csv")
Rows: 119390 Columns: 32                                                                                    
── Column specification ─────────────────────────────────────────────────
Delimiter: ","
chr  (13): hotel, arrival_date_month, meal, country, market_segment, ...
dbl  (18): is_canceled, lead_time, arrival_date_year, arrival_date_we...
date  (1): reservation_status_date

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> View(hotel_bookings)
> install.packages("tidyverse")
Error in install.packages : Updating loaded packages
> install.packages("skimr")
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/repr_1.1.7.tar.gz'
Content type 'application/x-gzip' length 124050 bytes (121 KB)
==================================================
downloaded 121 KB

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/skimr_2.1.5.tar.gz'
Content type 'application/x-gzip' length 1227073 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

* installing *binary* package ‘repr’ ...
* DONE (repr)
* installing *binary* package ‘skimr’ ...
* DONE (skimr)

The downloaded source packages are in
	‘/tmp/RtmpvhqeVC/downloaded_packages’
> install.packages("janitor")
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/snakecase_0.11.1.tar.gz'
Content type 'application/x-gzip' length 159782 bytes (156 KB)
==================================================
downloaded 156 KB

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/janitor_2.2.0.tar.gz'
Content type 'application/x-gzip' length 283235 bytes (276 KB)
==================================================
downloaded 276 KB

* installing *binary* package ‘snakecase’ ...
* DONE (snakecase)
* installing *binary* package ‘janitor’ ...
* DONE (janitor)

The downloaded source packages are in
	‘/tmp/RtmpvhqeVC/downloaded_packages’
> install.packages("tidyverse")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/tidyverse_2.0.0.tar.gz'
Content type 'application/x-gzip' length 425237 bytes (415 KB)
==================================================
downloaded 415 KB

* installing *binary* package ‘tidyverse’ ...
* DONE (tidyverse)

The downloaded source packages are in
	‘/tmp/RtmpvhqeVC/downloaded_packages’
> library(tidyverse)
> library(skimr)
> library(janitor)
> hotel_bookings <- read_csv("")
Error: '' does not exist in current working directory ('/cloud/project/Course 7/Week 3').
> head()
Error in head.default() : argument "x" is missing, with no default
> arrange(hotel_bookings, )
> arrange(hotel_bookings, desc(lead_time))
> head(hotel_summary)
Error: object 'hotel_summary' not found
> head(hotel_summary)
Error: object 'hotel_summary' not found
> hotel_summary <- 
+   hotel_bookings %>%
+   group_by(hotel) %>%
+   summarise(average_lead_time=mean(lead_time),
+             min_lead_time=min(lead_time),
+             max_lead_time=max(lead_time))
> head(hotel_summary)
> example_df <- bookings_df %>%
+   mutate(guests = )
Error: object 'bookings_df' not found
> example_df <- bookings_df %>%
+   mutate(guests = )
Error: object 'bookings_df' not found
> install.packages("tidyverse")
Error in install.packages : Updating loaded packages
> install.packages("skimr")
Error in install.packages : Updating loaded packages
> install.packages("janitor")
Error in install.packages : Updating loaded packages
> library(tidyverse)
> library(skimr)
> library(janitor)
> bookings_df <- read_csv("hotel_bookings.csv")
> head(bookings_df)
> str(bookings_df)
spc_tbl_ [119,390 × 32] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
 $ hotel                         : chr [1:119390] "Resort Hotel" "Resort Hotel" "Resort Hotel" "Resort Hotel" ...
 $ is_canceled                   : num [1:119390] 0 0 0 0 0 0 0 0 1 1 ...
 $ lead_time                     : num [1:119390] 342 737 7 13 14 14 0 9 85 75 ...
 $ arrival_date_year             : num [1:119390] 2015 2015 2015 2015 2015 ...
 $ arrival_date_month            : chr [1:119390] "July" "July" "July" "July" ...
 $ arrival_date_week_number      : num [1:119390] 27 27 27 27 27 27 27 27 27 27 ...
 $ arrival_date_day_of_month     : num [1:119390] 1 1 1 1 1 1 1 1 1 1 ...
 $ stays_in_weekend_nights       : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ stays_in_week_nights          : num [1:119390] 0 0 1 1 2 2 2 2 3 3 ...
 $ adults                        : num [1:119390] 2 2 1 1 2 2 2 2 2 2 ...
 $ children                      : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ babies                        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ meal                          : chr [1:119390] "BB" "BB" "BB" "BB" ...
 $ country                       : chr [1:119390] "PRT" "PRT" "GBR" "GBR" ...
 $ market_segment                : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
 $ distribution_channel          : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
 $ is_repeated_guest             : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ previous_cancellations        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ previous_bookings_not_canceled: num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ reserved_room_type            : chr [1:119390] "C" "C" "A" "A" ...
 $ assigned_room_type            : chr [1:119390] "C" "C" "C" "A" ...
 $ booking_changes               : num [1:119390] 3 4 0 0 0 0 0 0 0 0 ...
 $ deposit_type                  : chr [1:119390] "No Deposit" "No Deposit" "No Deposit" "No Deposit" ...
 $ agent                         : chr [1:119390] "NULL" "NULL" "NULL" "304" ...
 $ company                       : chr [1:119390] "NULL" "NULL" "NULL" "NULL" ...
 $ days_in_waiting_list          : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ customer_type                 : chr [1:119390] "Transient" "Transient" "Transient" "Transient" ...
 $ adr                           : num [1:119390] 0 0 75 75 98 ...
 $ required_car_parking_spaces   : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ total_of_special_requests     : num [1:119390] 0 0 0 0 1 1 0 1 1 0 ...
 $ reservation_status            : chr [1:119390] "Check-Out" "Check-Out" "Check-Out" "Check-Out" ...
 $ reservation_status_date       : Date[1:119390], format: "2015-07-01" ...
 - attr(*, "spec")=
  .. cols(
  ..   hotel = col_character(),
  ..   is_canceled = col_double(),
  ..   lead_time = col_double(),
  ..   arrival_date_year = col_double(),
  ..   arrival_date_month = col_character(),
  ..   arrival_date_week_number = col_double(),
  ..   arrival_date_day_of_month = col_double(),
  ..   stays_in_weekend_nights = col_double()[39m,
  ..   stays_in_week_nights = col_double(),
  ..   adults = col_double(),
  ..   children = col_double(),
  ..   babies = col_double(),
  ..   meal = col_character(),
  ..   country = col_character(),
  ..   market_segment = col_character(),
  ..   distribution_channel = col_character(),
  ..   is_repeated_guest = col_double(),
  ..   previous_cancellations = col_double(),
  ..   previous_bookings_not_canceled = col_double(),
  ..   reserved_room_type = col_character(),
  ..   assigned_room_type = col_character(),
  ..   booking_changes = col_double(),
  ..   deposit_type = col_character(),
  ..   agent = col_character(),
  ..   company = col_character(),
  ..   days_in_waiting_list = col_double(),
  ..   customer_type = col_character(),
  ..   adr = col_double(),
  ..   required_car_parking_spaces = col_double(),
  ..   total_of_special_requests = col_double(),
  ..   reservation_status = col_character(),
  ..   reservation_status_date = col_date(format = "")
  .. )
 - attr(*, "problems")=<externalptr> 
> glimpse(bookings_df)
Rows: 119,390
Columns: 32
$ hotel                          <chr> "Resort Hotel", "Resort…
$ is_canceled                    <dbl> 0, 0, 0, 0, 0, 0, 0, 0,…
$ lead_time                      <dbl> 342, 737, 7, 13, 14, 14…
$ arrival_date_year              <dbl> 2015, 2015, 2015, 2015,…
$ arrival_date_month             <chr> "July", "July", "July",…
$ arrival_date_week_number       <dbl> 27, 27, 27, 27, 27, 27,…
$ arrival_date_day_of_month      <dbl> 1, 1, 1, 1, 1, 1, 1, 1,…
$ stays_in_weekend_nights        <dbl> 0, 0, 0, 0, 0, 0, 0, 0,…
$ stays_in_week_nights           <dbl> 0, 0, 1, 1, 2, 2, 2, 2,…
$ adults                         <dbl> 2, 2, 1, 1, 2, 2, 2, 2,…
$ children                       <dbl> 0, 0, 0, 0, 0, 0, 0, 0,���
$ babies                         <dbl> 0, 0, 0, 0, 0, 0, 0, 0,…
$ meal                           <chr> "BB", "BB", "BB", "BB",…
$ country                        <chr> "PRT", "PRT", "GBR", "G…
$ market_segment                 <chr> "Direct", "Direct", "Di…
$ distribution_channel           <chr> "Direct", "Direct", "Di…
$ is_repeated_guest              <dbl>[39m 0, 0, 0, 0, 0, 0, 0, 0,…
$ previous_cancellations         <dbl> 0, 0, 0, 0, 0, 0, 0, 0,…
$ previous_bookings_not_canceled <dbl> 0, 0, 0, 0, 0, 0, 0, 0,…
$ reserved_room_type             <chr> "C", "C", "A", "A", "A"…
$ assigned_room_type             <chr> "C", "C", "C", "A", "A"…
$ booking_changes                <dbl> 3, 4, 0, 0, 0, 0, 0, 0,…
$ deposit_type                   <chr> "No Deposit", "No Depos…
$ agent                          <chr> "NULL", "NULL", "NULL",…
$ company                        <chr> "NULL", "NULL", "NULL",…
$ days_in_waiting_list           <dbl> 0, 0, 0, 0, 0, 0, 0, 0,…
$ customer_type                  <chr> "Transient", "Transient…
$ adr                            <dbl> 0.00, 0.00, 75.00, 75.0…
$ required_car_parking_spaces    <dbl> 0, 0, 0, 0, 0, 0, 0, 0,…
$ total_of_special_requests      <dbl> 0, 0, 0, 0, 1, 1, 0, 1,…
$ reservation_status             <chr> "Check-Out", "Check-Out…
$ reservation_status_date        <date> 2015-07-01, 2015-07-01…
> colnames(bookings_df)
 [1] "hotel"                         
 [2] "is_canceled"                   
 [3] "lead_time"                     
 [4] "arrival_date_year"             
 [5] "arrival_date_month"            
 [6] "arrival_date_week_number"      
 [7] "arrival_date_day_of_month"     
 [8] "stays_in_weekend_nights"       
 [9] "stays_in_week_nights"          
[10] "adults"                        
[11] "children"                      
[12] "babies"                        
[13] "meal"                          
[14] "country"                       
[15] "market_segment"                
[16] "distribution_channel"          
[17] "is_repeated_guest"             
[18] "previous_cancellations"        
[19] "previous_bookings_not_canceled"
[20] "reserved_room_type"            
[21] "assigned_room_type"            
[22] "booking_changes"               
[23] "deposit_type"                  
[24] "agent"                         
[25] "company"                       
[26] "days_in_waiting_list"          
[27] "customer_type"                 
[28] "adr"                           
[29] "required_car_parking_spaces"   
[30] "total_of_special_requests"     
[31] "reservation_status"            
[32] "reservation_status_date"       
> skim_without_charts(bookings_df)
── Data Summary ────────────────────────
                           Values     
Name                       bookings_df
Number of rows             119390     
Number of columns          32         
_______________________               
Column type frequency:                
  character                13         
  Date                     1          
  numeric                  18         
________________________              
Group variables            None       
> trimmed_df <- bookings_df %>% 
+   select( , , )
> trimmed_df %>% 
+   select(hotel, is_canceled, lead_time) %>% 
+   rename( = hotel)
Error: unexpected '=' in:
"  select(hotel, is_canceled, lead_time) %>% 
  rename( ="
> install.packages("janitor")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/janitor_2.2.0.tar.gz'
Content type 'application/x-gzip' length 283235 bytes (276 KB)
==================================================
downloaded 276 KB

* installing *binary* package ‘janitor’ ...
* DONE (janitor)

The downloaded source packages are in
	‘/tmp/RtmpvhqeVC/downloaded_packages’
> install.packages("skimr")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/skimr_2.1.5.tar.gz'
Content type 'application/x-gzip' length 1227073 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

* installing *binary* package ‘skimr’ ...
* DONE (skimr)

The downloaded source packages are in
	‘/tmp/RtmpvhqeVC/downloaded_packages’
> install.packages("tidyverse")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/tidyverse_2.0.0.tar.gz'
Content type 'application/x-gzip' length 425237 bytes (415 KB)
==================================================
downloaded 415 KB

* installing *binary* package ‘tidyverse’ ...
* DONE (tidyverse)

The downloaded source packages are in
	‘/tmp/RtmpvhqeVC/downloaded_packages’
> > example_df <- bookings_df %>%
+ + + head(example_df)
Error: object 'example_df' not found
> > example_df <- bookings_df %>%
+ + + head(example_df)
Error: object 'example_df' not found
> example_df <- bookings_df %>%
+   mutate(guests = )
Error in quo_as_label(quo) : argument "expr" is missing, with no default
> example_df <- bookings_df %>%
+   select(arrival_date_year, arrival_date_month) %>% 
+   unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
> example_df <- bookings_df %>%
+   mutate(guests = )
Error in quo_as_label(quo) : argument "expr" is missing, with no default
> 
