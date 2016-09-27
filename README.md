### US Presidential Debates word frequencies.

This generates a markdown file with the frequency of the top 20 words used by each of the candidates used during the debate


### Usage:

`ruby debate.rb debate_transcript_file`

This will generate a file named `word_frequencies_debate_transcript_file.md` with the frequencies of the words in it

e.g `ruby debate.rb first_debate.txt` will generate a file named `word_frequencies_first_debate.md` with the frequencies of the words in it

Requirement:

Ruby >= 2.0
Transcript file structured such as:

CANDIDATE_NAME: candidate's transcript

e.g:

```
CLINTON: ...

TRUMP: ...

```


Credits of the first transcripts:

https://www.washingtonpost.com/news/the-fix/wp/2016/09/26/the-first-trump-clinton-presidential-debate-transcript-annotated/
