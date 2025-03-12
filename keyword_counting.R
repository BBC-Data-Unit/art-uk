bbcartfull <- read.csv("artdata.csv", header=FALSE)
#The keywords are in the 16th column, called V16 because there were no column headers
write.csv(bbcartfull$V16, 'keywordsastext.txt')

keywords <- scan('keywordsastext.txt', what="char", sep=",")
# We convert all text to lower case to prevent any case sensitive issues with counting
keywords <- tolower(keywords)

keywords.split <- strsplit(keywords, " ")
keywordsvec <- unlist(keywords.split)
keywordstable <- table(keywordsvec)

write.csv(keywordstable1, 'keywordcount.csv')
