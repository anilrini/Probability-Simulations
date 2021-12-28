set.seed(123)
probs <- sapply(1:50, function(.x) mean(replicate(10000, length(unique(sample(1:365, .x, replace = TRUE))) < .x )))
plot(1:50, probs)

abline(h = 0.5, col = 'darkgreen', lty = 4)
