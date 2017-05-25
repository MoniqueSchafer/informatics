##Function for Assignment 4

fish_function <- function(catch) {
  fish_freq = apply(catch, 1, max)
  rev = catch*price
  rev_loc = colSums(rev)
  fish_rev = rowSums(rev)
  plot_rev = barplot(rev_loc, xlab = "Location", ylab = "Total Revenue ($)")
  return(list(fish_frequency=fish_freq, revenue=rev, revenue_location = rev_loc, revenue_fishery = fish_rev, plot = plot_rev))
}



