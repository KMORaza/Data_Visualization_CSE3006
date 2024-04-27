character_histogram <- function(string) {
  string <- tolower(string)
  char_counts <- table(strsplit(string, NULL)[[1]])
  barplot(char_counts, main = "Character Distribution",
          xlab = "Character", ylab = "Frequency")
}
character_histogram("FirstName")
character_histogram("SecondName")
character_histogram("LastName")