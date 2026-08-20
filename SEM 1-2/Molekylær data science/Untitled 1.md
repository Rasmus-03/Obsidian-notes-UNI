
```r
# the file is tab-delimited, therefore "\t" instead of commas
# get it from the web to avoid issues with reading from folders
gene_expressions <-
  read.csv("http://computproteomics.bmb.sdu.dk/BMB547Data/GSE129505_norm_counts_fpkm_ncbi.tsv",
           sep="\t"
           , row.names=1)
# Set all zero values to NA to avoid problems with when taking the logarithm
gene_expressions[gene_expressions == 0] <- NA
# Transformation onto log2-scale
log_gene_expressions <- log2(gene_expressions)

View(log_gene_expressions)
```


Question I : Which gene do you get when you look for the ID “3630”?

<- Insulin

Question II : Why are there versions a, b, c and d for each differentation stage?

replicatres 

Question III : Why are there negative values? How can one have a gene negatively expressed? Hint:

We were taking the logarithm!

<- this could be because we took the logurithm of the whole datasæt,

# **Exercise 2**
```r 
num_transcripts. <- colSums(is.na(log_gene_expressions))

barplot(num_transcripts., main = "A BarPlot",las=2, ylab = "Genes")

```
