#for문
for(i in 1:5){
  print(i)
}

#while문
i <- 0
while(i <= 5){
  print(i)
  i = i + 1
}

#break
i <- 0
while(i<=10){
  i = 1 + i**2
  print(i)
  
  if(i>=5){
    print("코드를 강제로 종료합니다.")
    break
  }
}

#샘플 데이터 준비
populationDF <- read.csv("populationDF.csv", header = TRUE)

#apply 함수 행 방향 적용
apply(populationDF, 1, sum)

#apply 함수 열 방향 적용
apply(populationDF, 2, sum)


#사용자 정의 함수 만들기
mymax <- function(value1, value2){
  if(value1 > value2){
    print("첫 번째 입력 값이 더 큽니다!")
    return(value1)
  }
  else if(value2 > value1){
    print("두 번째 입력 값이 더 큽니다!")
    return(value2)
  }
  else{
    print("두 값의 크기가 동일한 것 같습니다!")
  }
}

mymax(201, 304)  

#변수 기본값이 설정된 함수 만들기
presetFunc <- function(value1 = 1, value2 = 2){
  print(value1)
  print(value2)
}

presetFunc()
