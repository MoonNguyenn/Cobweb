install.packages("lavaan", dependencies=TRUE)
library(lavaan)
install.packages("semPlot")
library(semPlot)
df <- read.csv("/Users/nguyenquangminhnguyet/Documents/Data-simplification-29Nov.csv", header = T)
df
model <- 'presentation =~ Followings + Tweetvolume + Repliessent + Retweetssent + Mentionssent + Hashtagssent'
fit <- cfa(model, data=df)
summary(fit, standardized=TRUE, fit.measures=T)
parameterEstimates(fit, standardized = T)
varTable(fit)
semPaths(fit, what ="paths", whatlabels="par")
model2 <- 'visibility =~ Followers + Retweetsreceived + Repliesreceived + Mentionsreceived + Centrality + Closeness + Betweenness'
fit <- cfa(model20, data=df)
summary(fit, standardized=TRUE, fit.measures=T)
parameterEstimates(fit, standardized = T)
varTable(fit)
semPaths(fit, what ="paths", whatlabels="par")
