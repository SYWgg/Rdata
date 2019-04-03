library(ggplot2)
midwest <- as.data.frame(ggplot2::midwest)    #midwest 데이터를 데이터 프레임 형태로 불러옴 
midwest

head(midwest, 5)    #앞에서 5행까지 출력

tail(midwest, 5)    #뒤에서 5행 출력

View(midwest)    #원자료를 뷰어 창에 띄우기 

dim(midwest)    #몇 행과 열로 구성되어 있는지 출력 

str(midwest)    #데이터와 변수의 속성

summary(midwest)    #요약 통계량 출력 

midwest_new <- midwest    #데이터 복사본 midwest_new
midwest_new

library(dplyr)    #dplyr 패키지 로드 

midwest_new <- rename(midwest_new, total = poptotal)  #변수명 바꾸기 
midwest_new <- rename(midwest_new, asian = popasian)
head(midwest_new, 1)

midwest_new$perctotasian <- ((midwest_new$asian / midwest_new$total) * 100)   #파생변수 perctotasian 생성 
head(midwest_new, 5)

hist(midwest_new$perctotasian)    #히스토그램 생성 

mean(midwest_new$perctotasian)    #perctotasian변수 값 평균 

midwest_new$perctotasian_if <- ifelse(midwest_new$perctotasian > 0.4872462, "large", "small")    #조건문을 사용해 평균을 초과하면 "large", 그 외에는 "small" 출력 
head(midwest_new, 10)

table(midwest_new$perctotasian_if)    #빈도 테이블 출력 

qplot(midwest_new$perctotasian_if)    #빈도 막대 그래프 출력 
