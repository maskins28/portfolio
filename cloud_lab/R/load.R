library(readr)
library(dplyr)

read_image <- function(path, n) {
  full_path <- paste(path,'/image',n,'.txt',sep = '')
  df <- read_table(full_path, col_names = F)
  colnames(df) <- c('y','x','label','NDAI','SD','CORR',
                    'DF','CF','BF','AF','AN')
  df <- mutate(df, label = factor(label))
  return(df)
}