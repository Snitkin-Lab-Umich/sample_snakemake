# plot histogram of all data sampled from distributions

# load library
library(ggplot2)

dat = read.delim(snakemake@input[[2]],header=F)
colnames(dat) = c('distn','val')

hist = ggplot(dat, aes(x=val,fill=distn)) + 
              geom_histogram(alpha=0.5,position='identity') + 
              theme_bw()

ggsave(filename=snakemake@output[[1]],plot=hist)


