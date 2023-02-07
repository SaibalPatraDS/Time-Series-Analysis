## ----------- Time Plots in R ----------------##

ansett

# plotting the weekly economy passenger load on Ansett airlines

melsyd_economy <- ansett %>%
  filter(Airports == "MEL-SYD", Class == "Economy") %>%
  mutate(Passengers = Passengers/100)

autoplot(melsyd_economy, Passengers) + 
  labs(title = "Ansett airlines economy class",
       subtitle = "Melbourne-Sydney",
       y = "Passengers('000)",
       x = "Week")
#`autoplot()` automatically produces an appropriate plot of whatever you pass to it in the first argument. 
#In this case, it recognizes 'melsyd_economy' as a time series and produces a time plot.

a10

autoplot(a10, Cost) + 
  labs(y = "$ (millions)",
       title = "Australian antidibetic drug sales")
#insights -> There is an increase after every year. As well as a sudden drop at the begining of every year. 


