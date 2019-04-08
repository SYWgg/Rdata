library(dplyr)
exam <- read.csv("csv_exam.csv")  #CSV 파일 -> 데이터 프레임 
exam

exam %>% filter(class == 4)   #class 변수의 값이 4인 데이터 추출 
exam %>% filter(science == 75)  #science 변수의 값이 75인 데이터

exam %>% filter(class != 2)   #class 변수의 값이 2가 아닌 데이터

exam %>% filter(english >= 90)  #english 변수의 값이 90이상인 데이터
exam %>% filter(id < 11)  #id 변수의 값이 11보다 작은 데이터 

exam %>% filter(english <= 70 & math > 40)  #영어 점수가 70점 이하이고 수학 점수가 40점 이상인 데이터 

exam %>% filter(class == 3 & science > 55)  #과학 점수가 55을 넘는 3반 학생

exam %>% filter(science > 70 | math <= 45)  #과학 점수가 70점을 넘거나 수학 점수가 45점 이하

exam %>% filter(class == 1 | class == 2 | class == 5) #class 변수 값이 1, 2, 5에 해당하는 경우 출력

exam %>% filter(class %in% c(1, 2, 5))  

class1 <- exam %>% filter(class == 1)   #class가 1인 데이터 추출, class1에 할당 
class3 <- exam %>% filter(class == 3)   #class가 3인 데이터 추출, class3에 할당 
class1
class3

summary(class1$science)    #1반 과학점수 요약 통계량 
