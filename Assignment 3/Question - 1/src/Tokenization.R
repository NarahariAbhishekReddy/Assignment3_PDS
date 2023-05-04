install.packages('tidytext')
library(tidytext)
library(dplyr)
# Read the CSV file into a dataframe
df <- read.csv('C:/Users/abhis/OneDrive/Desktop/New folder/Corona_NLP_test.csv')


# tokenize the text corpus
tokens <- df %>%
  unnest_tokens(word, OriginalTweet)

# view the tokens
View(tokens)
head(tokens)
