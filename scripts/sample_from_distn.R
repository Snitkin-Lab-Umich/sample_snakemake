# sample data from a distribution and save to file

# set seed so results are reproducible
set.seed(0)

# get distribution function
distn = snakemake@wildcards$distn[[1]]

# get output file
outfile = snakemake@output[[1]]

sample_from_distn = function(n = 1000000, FUN = rnorm){
  return(FUN(n))
}

n = 1000000

# sample data from a normal distribution
dat = cbind(rep(distn, 1000000),
            sample_from_distn(FUN = match.fun(distn)))

# save to file
write.table(dat,outfile,quote=F,sep='\t',row.names=F,col.names=F)

