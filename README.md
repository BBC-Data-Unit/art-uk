# Illuminating facts about the UK's art collection

![](https://raw.githubusercontent.com/BBC-Data-Unit/art-uk/master/Mostpopulartags.png)

In February 2017 we [reported on some findings from an analysis of Art UK's digital archive, which catalogues more than 200,000 of the nation's oil paintings](http://www.bbc.co.uk/news/uk-england-38340015).

The story was the result of a lot of work using the programming language R to analyse the large number of records involved. Below you'll find a number of files that detail how various questions were asked and answered. 

## Data

The dataset is particularly large, so most of the initial analysis was done using R. See the scripts below in RMarkdown for an explanation.

* [Full data on all works of art (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/artukdatafull.csv)
* [Summary by medium (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/artmedium.csv)
* [Summary by catalogue (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/catsum.csv)
* [Summary by collection (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/collectionsummary.csv)
* [Summary by title (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/titlepivot.csv)
* [Summary by title where those containing a monarch's name is replaced by that monarch's name (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/monarchs.csv): this was an experimental dataset and was not used
* [Summary by title where works mentioning royal terms are marked 'TRUE' (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/royalty.csv): this was an experimental dataset and was not used
* [List of schools (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/schools.csv)


## Visualisation

* Bar chart: Most painted monarchs
* Bar chart: Most popular tags
* Pie chart: Gender breakdown of tags
* Bar chart: Artists with the most pieces in the collection
* Bar chart: Largest collections

## Scripts (R)

* [Cleaning up data to extract years](https://github.com/BBC-Data-Unit/art-uk/blob/master/art%20notes%20and%20tasks.Rmd): as detailed in the report, date entries were inconsistent, with many works of art having no date at all, or a date range. Those could be as specific as 1920-1922 or as general as c18thC. This is how we tried to clean up dates to get as many as possible in a format that could be used to calculate from.
* [Summarising by unknown artist](https://github.com/BBC-Data-Unit/art-uk/blob/master/artists_summaries.Rmd)
* [Keyword counting](https://github.com/BBC-Data-Unit/art-uk/blob/master/keyword_counting.Rmd): tags were in one column, comma separated, which required some coding to extract and count
* [Identifying royals](https://github.com/BBC-Data-Unit/art-uk/blob/master/string_match_royalty.Rmd): we wanted to identify which members of royalty appeared more than once. The process and code is detailed here.

## Cleaning and calculations (Excel)

* [This Excel workbook](https://github.com/BBC-Data-Unit/art-uk/blob/master/artist_calculations.xlsx) outlines some final cleaning processes in Excel following the work in R detailed above. For example, some artist names which contained 'school' were not unknown artists but included some identification. Using the `LEN` function was one way to identify outliers with long names which might not be unknown after all. In the final article we did not need an exact number, but this helped us to more confidently state the numbers that were indeed unknown.
* [Generating regex for identifying royals in R](https://github.com/BBC-Data-Unit/art-uk/blob/master/generating%20R%20regex.xlsx): this spreadsheet shows how we used formulae in Excel to generate the regex that was needed in R to extract the names of royalty.
* [Further cleaning on artworks mentioning royals](https://github.com/BBC-Data-Unit/art-uk/blob/master/monarchsonly.xlsx): some paintings mentioning royalty were not *of* royalty: for example, a train named after a king. This spreadsheet shows some of the processes involved in identifying those.
* * [Summary by title - works mentioning monarchs only (CSV)](https://github.com/BBC-Data-Unit/art-uk/blob/master/monarchsonly.csv): this included extraction of text either side of the monarch's name to show context