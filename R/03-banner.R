# data for banner plot
df <- data.frame(lineage = factor(lineage, levels = lineage), 
                 y = 1, 
                 functionality = functionality)

# banner plot, acts as global key
p <- df %>% 
  ggplot(aes(lineage, y, fill = lineage)) +
  geom_col(width = 1) +
  geom_label(aes(x = lineage, y = y*2/3, label = lineage),
             fill = "white",
             size = 2,
             label.size = 0,
             label.padding = unit(0.2, "lines")) +
  geom_label(aes(x = lineage, y = y*1/3, label = functionality),
             fill = "white",
             size = 2,
             label.size = 0,
             label.padding = unit(0.2, "lines")) +
  scale_fill_manual(values = line_colours) +
  theme_void() +
  theme(legend.position = "none")
print(p)
