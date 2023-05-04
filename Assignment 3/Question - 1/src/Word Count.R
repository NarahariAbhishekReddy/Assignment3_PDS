install.packages('stopwords')
install.packages('tidytext')
library(tidytext)
library(dplyr)
library(stopwords)
# Read the CSV file into a dataframe
df <- read.csv('C:/Users/abhis/OneDrive/Desktop/New folder/Corona_NLP_test.csv')

# tokenize the text data
tokens <- df %>%
  unnest_tokens(word, OriginalTweet)
# remove stop words
stop_words <- stopwords(language = "en")
tokens_clean <- tokens %>%
  filter(!(word %in% stop_words))
# count word frequencies
word_counts <- tokens_clean %>%
  count(word, sort = TRUE)

# view the top 20 most frequent words
head(word_counts, 20)
View(word_counts)
