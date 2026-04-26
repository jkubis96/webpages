
## Subclasses markers - top 25

\

```{r echo=FALSE, message=FALSE, warning=FALSE, align="center", results='asis'}
markers <- read.csv(file = file.path(results_dir, "markers/markers_subclasses.csv"), header = T, sep = ",", row.names = 1)


markers <- markers %>%
  filter(p_val < 0.05) %>%
  group_by(subclass) %>%
  top_n(25, esm) %>%
  arrange(subclass, desc(esm))



markers %>%
  kable("html", caption = "Top 25 merkers", escape = FALSE) %>%
  kable_styling(
    bootstrap_options = c("striped", "hover", "condensed", "responsive"),
    full_width = FALSE,
    position = "center"
  ) %>%
  scroll_box(width = "100%", height = "550px")
```
