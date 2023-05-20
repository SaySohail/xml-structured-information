



<h3 align="center"></h3> XML and Structured Information </h3>

<div align="center">

  [![code coverage](coverage.svg "Code coverage")]()
</div>

---


## 🧐 About <a name = "about"></a>
This report provides a comprehensive analysis of the implementation of four separate XQuery files: extract.xquery, freqs.xquery, probs.xquery, and top20.xquery. The objective of the coursework was to leverage the XQuery language to extract pertinent data from a collection of XML files obtained from the British National Corpus.


### Part A: extract.xquery
The extract.xquery file included a FLWOR (For, Let, Where, Order by, Return) expression designed to return all instances of the word 'has' found in the corpus, alongside the word that immediately followed in each instance.

This task involved careful navigation of the XML files, where "< s ></ s >" represents a sentence and "< w >" represents a word. The XPath functions normalize-space() and lower-case() proved to be essential for handling variations in case and whitespace within the "< w >" element text values.

### Part B: freqs.xquery
Building upon the functionality of the first file, freqs.xquery aimed to return only unique instances of the word 'has' and its successor word, accompanied by the frequency of their co-occurrence.

To accomplish this, the distinct-values() function was utilized to retrieve only unique word pairings. Furthermore, additional let and for clauses were intertwined to enable the counting of each unique combination's frequency.

### Part C: probs.xquery
The third XQuery file, probs.xquery, calculated and returned the probability that a given word appears after 'has'. This probability was calculated as the number of times a successor word appears after 'has', divided by the total number of times the successor word appears in the corpus.

This aspect of the coursework introduced another layer of complexity, necessitating the use of the div operator to accurately perform the necessary division operation within XPath.

### Part D: top20.xquery
The final XQuery file, top20.xquery, was developed to limit the output of the previous file to only the top 20 results. This filter was put in place to focus on the most frequent collocations, thereby reducing the noise from common words with low probabilities of co-occurrence.

### Conclusion
In conclusion, this coursework exercise offered an in-depth exploration of the XQuery language and its applications in parsing and manipulating XML data. The strategies employed in each XQuery file, including the use of FLWOR expressions, XPath functions, and probability calculations, showcased the flexibility and power of XQuery as a tool for structured information retrieval and analysis. The resulting XQuery files provide a valuable resource for computational linguists and other professionals interested in understanding the dynamics of word use in the English language.










