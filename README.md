# EDA 프로젝트 5조 : 로봇 취업시장의 미래 (Team Vector)

# 1. Introduction
-

# 2. Responsibility
* **윤민섭** (팀장)
    * KOSIS 통계자료 수집 및 시각화
    * 스펙 입력시 기업 추천 및 시각화
    * 데이터 분석
    * 발표자료 준비
* **최희재**
    * DB 구축, 관리, 및 Query 작성
    * 사람인 공고 웹크롤링
    * 기술 키워드 사전 제작 및 키워드-공고간 비교 작업  
* **김완섭**
    *  KOSIS 통계자료 수집 및 시각화
    * 발표자료 서포트  
* **조성현**
    * 잡코리아 공고 웹크롤링
    * 데이터 분석


# 3. Project Schedule

# 4. Data collection
## 4.1 채용 공고 사이트에서 데이터 크롤링
### 수집 사이트
* 사람인
* 잡코리아
### 사용기술
* BeautifulSoup
* Selenium
### 수집 데이터
* 기업 정보
   * 기업명
   * 기업 형태
   * 사원수
   * 설립일
   * 2021, 2022, 2023년 매출
* 취업 공고 정보
   * 공고명
   * 공고 내용
   * 게시일
## 4.2 크롤링한 데이터 AWS 데이터베이스에 저장
![image](https://github.com/user-attachments/assets/3a212ef9-87ab-4e8d-911b-130b404ab6bc)
* 기업-기술 및 공고문-기술 간의 연관성을 효율적으로 조회할 수 있도록 조인 테이블을 활용해 데이터베이스 설계
* 크롤링한 데이터를 실시간으로 데이터베이스에 저장하도록 구현

## 4.3 기술 키워드 수집
### 사람인에서 제공하는 직무 키워드 목록을 기반으로 기술 테이블의 기본 구조를 구성
![image](https://github.com/user-attachments/assets/de850e7b-7e87-45e6-a004-c2e8558fa3cf)
### 동의어 정리
![image](https://github.com/user-attachments/assets/fe7282ce-0947-41f6-9bf3-678792b998e0)

# 5. Exploratory Data Analysis (EDA)

# 6. Review
