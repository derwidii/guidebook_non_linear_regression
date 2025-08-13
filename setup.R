library(ggplot2)
library(grid)  
x_scale <- scale_x_continuous(
  breaks = c(0, 25, 50, 75, 100),
  limits = c(0, 100),
  expand = expansion(mult = c(0.01, 0.03))
)

thesis_palette <- c(
  "blue"   = "#4477AA", 
  "red"    = "#CC6677", 
  "green"  = "#117733", 
  "orange" = "#DDCC77", 
  "purple" = "#332288", 
  "pink"   = "#AA4499", 
  "teal"   = "#44AA99", 
  "sky"    = "#88CCEE", 
  "olive"  = "#999933", 
  "gray"   = "#666666"  
)

scale_color_thesis <- function(order = c("blue","red","green","orange","purple","teal","pink","olive","sky","gray"), ...) {
  ggplot2::scale_color_manual(values = thesis_palette[order], ...)
}
scale_fill_thesis <- function(order = c("blue","red","green","orange","purple","teal","pink","olive","sky","gray"), ...) {
  ggplot2::scale_fill_manual(values = thesis_palette[order], ...)
}

scale_linetype_thesis <- function(...) ggplot2::scale_linetype_manual(values = c("solid","dashed","dotdash","dotted","twodash","longdash"), ...)
scale_shape_thesis    <- function(...) ggplot2::scale_shape_manual(values = c(16,17,15,18,1,2), ...)

theme_thesis <- function(base_size = 12, base_family = "serif", grid = "y") {
  t <- theme_classic(base_size = base_size, base_family = base_family) +
    theme(
      plot.title.position    = "plot",
      plot.caption.position  = "plot",
      plot.title             = element_text(face = "bold", colour = "#222222"),
      plot.subtitle          = element_text(colour = "#333333"),
      plot.caption           = element_text(colour = "#555555"),
      
      axis.title             = element_text(colour = "#222222"),
      axis.text              = element_text(colour = "#222222"),
      axis.line              = element_line(colour = "#333333", linewidth = 0.6),
      axis.ticks             = element_line(colour = "#333333", linewidth = 0.4),
      axis.ticks.length      = unit(3, "pt"),
      
      panel.border           = element_rect(colour = "#DDDDDD", fill = NA, linewidth = 0.6),
      panel.spacing          = unit(8, "pt"),
      
      legend.position        = "bottom",
      legend.title           = element_text(colour = "#222222"),
      legend.text            = element_text(colour = "#222222"),
      legend.background      = element_blank(),
      legend.key             = element_blank(),
      legend.key.width       = unit(14, "pt"),
      legend.spacing.x       = unit(6, "pt"),
      
      strip.background       = element_rect(fill = "white", colour = "#333333", linewidth = 0.6),
      strip.text             = element_text(face = "bold", colour = "#222222"),
      
      panel.grid.major       = element_blank(),
      panel.grid.minor       = element_blank()
    )
  
  if (grid %in% c("x","xy")) {
    t <- t + theme(panel.grid.major.x = element_line(colour = "#E6E6E6", linewidth = 0.5))
  }
  if (grid %in% c("y","xy")) {
    t <- t + theme(panel.grid.major.y = element_line(colour = "#E6E6E6", linewidth = 0.5))
  }
  t
