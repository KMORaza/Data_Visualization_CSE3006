library(stats)
create_char_dendrogram <- function(input_string) {
  char_vector <- unlist(strsplit(input_string, ""))
  char_counts <- table(char_vector)
  char_df <- as.data.frame(char_counts)
  names(char_df) <- c("Character", "Frequency")
  dend <- as.dendrogram(hclust(dist(char_df$Frequency)))
  plot(dend, main = "Character Distribution Dendrogram", xlab = "Characters", ylab = "Distance")
}
input_string <- "data visualization"
create_char_dendrogram(input_string)
