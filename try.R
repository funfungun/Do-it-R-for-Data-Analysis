install.packages("multilinguer") # 다중언어 패키지
library(multilinguer)
install_jdk() # 자바개발도구 설치 ## I agree 선택
# Amazon Corretto(오픈JDK 8의 무료 배포판) Setup 창이 뜨면 Next & install
install.packages(c("stringr", "hash", "tau", "Sejong", "RSQLite", "devtools"),
                 type ="binary") # 문자열 추출과 처리 패키지

install.packages("remotes") # 비공식 패키지 설치 패키지 (깃허브(Github)에 업로드 되어있는 패키지 설치 패키지)
remotes::install_github("haven-jeon/KoNLP", upgrade="never",
                        INSTALL_opts=c("--no-multiarch"), force = TRUE) # 깃허브(Github)에 업로드 되어있는 패키지를 쉽게 다운로드하고 설치
library(KoNLP) #최종적으로 "KoNLP" 패키지를 불러옴

###내가 추가한거
download.file(url = "https://repo1.maven.org/maven2/org/scala-lang/scala-library/2.11.8/scala-library-2.11.8.jar",
              destfile = paste0(.libPaths()[1], "/KoNLP/Java/scala-library-2.11.8.jar"))
###------

devtools::install_github("haven-jeon/NIADic/NIADic",
                         build_vignettes=TRUE) # NIADic(형태소 사전) 설치 ## All 선택
Sys.setenv(JAVA_HOME="C:/Program Files/Java/jre1.8.0_351") # 운영체제설정. 설치한 JAVA version에 따라 달라짐
buildDictionary(ext_dic = "woorimalsam") # "woorimalsam" 사전 불러옴
useNIADic() # "NIADic" 형태소 사전 불러옴

install.packages("wordcloud")
library(wordcloud) #워드클라우드 생성
library(RColorBrewer) #색상 선택 (팔레트)

###내가 추가한거
install.packages("stringr")
library(stringr)
###------

getwd()
text <- readLines("C:/Users/PC/Documents/try4/mikrokosmos.txt", encoding = "UTF-8")
###내가 추가한거
text <- str_replace_all(text, "\\W", " ")
####------
print(text)

text <- toString(text)
buildDictionary(ext_dic="woorimalsam")
noun <- extractNoun(text)
print(noun)
wordcount <- table(noun)
print(wordcount)

palete <- brewer.pal(8, "Dark2") #색상 선택
wordcloud(names(wordcount),freq=wordcount,scale=c(7,1),rot.per=0.25,
min.freq=1, random.order=F,random.color=T,colors=palete) #wordcloud형태
