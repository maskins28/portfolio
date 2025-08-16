library(ggplot2)
library(GGally)

plot_cloud_image <- function(image, legend = F) {
  ggplot(image, aes(x = x, y = y, fill = label)) +
    geom_raster() +
    scale_fill_manual(limits = c('-1','0','1'),
                      labels = c('Cloud','Uncertain','No Cloud'),
                      values = c('lightgrey','grey','darkgrey')) +
    theme_void() +
    theme(legend.position = ifelse(legend,'right','none'),
          text = element_text(size = 12, family = 'serif')) +
    coord_fixed() +
    labs(fill = '')
}