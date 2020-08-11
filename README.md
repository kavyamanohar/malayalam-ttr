This is a project to analyse the text corpus parameters of Malayalam

- Type-Token Ratio (TTR)
- Type_token Growth Rate (TTGR)
- Moving Average Type Token Ratio (MATTR)


### Text Corpus

The word.txt contains words from the Malayalam Wikipedia Corpus from https://gitlab.com/smc/corpus, retrieved on January 1, 2019. It is cleaned up to remove punctuations and foreign language scripts and is unicode normalized.

### Computing Type Count

- To compute the number of types for any set of tokens, check the script ml_ttr.sh
- Set the indices for the range of tokens over which you need to determine the type count.

### Type and Token Counts

- `typetoken.tsv` contains the type count for different token counts, starting from the beginning of `words.txt`
- `ttr.tsv` contains the token count for a window length of 500, moved smoothly along `words.txt`

### Ipython notebook  `ttrplots.ipynb`

- Generates various plots used in TSD-2020 paper Quantitative Analysis of the Morphological Complexity of Malayalam Language
- The values from secondary sources (Kettunen, 2014 https://www.tandfonline.com/doi/abs/10.1080/09296174.2014.911506 and Bharadwaja Kumar et al., 2007 http://library.isical.ac.in:8080/jspui/bitstream/10263/2306/1/statiscal%20analysis%20of%20telugu%20text%20corpora.pdf) are hard-coded in the script.