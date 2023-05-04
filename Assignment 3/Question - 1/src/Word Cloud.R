install.packages('stopwords')
install.packages('wordcloud')
install.packages('tidytext')
library(tidytext)
library('wordcloud')
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
# Creating a word cloud
wordcloud(words = word_counts$word, freq = word_counts$n, max.words = 300, random.order = FALSE, colors = brewer.pal(5, "Dark2"))


