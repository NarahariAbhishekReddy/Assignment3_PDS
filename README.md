# Assignment3_PDS
<b> Question1</b>
<b>a.</b><hr>
<p> We first load the tidytext package before using the<b> read.csv </b> function to read the csv file. After that, the text corpus is tokenized using the<b> unnest_tokens </b> method. The text is divided into individual words, the punctuation is removed, and the text is changed to lowercase using the unnest_tokens function. Finally, we see the first few tokens using the head function.
</p>
<hr>
<b>b.</b>
<hr>
<p> We first load the tidytext package before using the read.csv function to read the csv file. After that, the text corpus is tokenized using the unnest_tokens method. The list of English stop words is then obtained using the stopwords function and stored in the stop_words variable. The stop words are finally removed from the tokens using the<b> anti_join </b>function, and the cleaned tokens are then stored in the tokens_clean variable. The first few cleaned tokens are then visible using the head function.</p>
<hr>
<b>c.</b>
<p> We first load the tidytext package before using the read.csv function to read the csv file. The text corpus is then tokenized using the unnest_tokens function, and stop words are then eliminated using the anti_join function. The frequency of each word in the cleaned tokens is then calculated using the <b> count </b> function, and the tokens are then sorted using the sort argument in descending order. The head function is then used to display the top 20 words.
</p>
<hr>
<b>d.</b>
<p> We first load the wordcloud package before using the read.csv method to read the csv file. After tokenizing the text corpus with the unnest_tokens function, stop words are eliminated with the anti_join function. The frequency of each word in the cleaned tokens is then counted using the count function before being sorted in descending order with the sort parameter. In order to generate the word cloud, we next use the <b> wordcloud </b>function, providing the<b> words and freq parameters</b> to correspond to the<b> word and frequency data, respectively, and adding extra variables like max.words, random.order, and colors</b>.</p>
<hr>
