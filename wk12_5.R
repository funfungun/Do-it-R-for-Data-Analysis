Sys.setenv(JAVA_HOME='C:/Program Files/Java/jre1.8.0-351')

##
install.packages("multilinguer")

library(multilinguer)

install_jdk()

install.packages(c("stringr", "hash", "tau", "Sejong", "RSQLite", "devtools"), type ="binary")

install.packages("remotes") 
remotes::install_github("haven-jeon/KoNLP", upgrade="never", INSTALL_opts=c("--no-multiarch"))

library(KoNLP)

devtools::install_github("haven-jeon/NIADic/NIADic", build_vignettes=TRUE)

Sys.setenv(JAVA_HOME="C:/Program Files/Java/jre1.8.0_351")

buildDictionary(ext_dic = "woorimalsam")

useNIADic()

install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)

getwd()

text <- readLines("C:/Users/PC/Documents/12-5/mikrokosmos.txt＂, encoding =＂UTF8＂ ) 
##
