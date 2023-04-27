# Determine Badminton Career Supporting Factor

Badminton is one of the most popular sports in the world. Badminton World Federation (BWF) is the official organization who handled and organized all badminton activities included athletes' personal administration data. These recorded data then triggers a question, does any variables of those personal administrations data have affect to athlete's career achievement? Therefore, this project aim to find whether there is any data have affect to the career achievement and determine the best statistical model to determine career supporting factors for badminton athletes using **Linear Regression** method.

# Tools
Programming Language: R

Package: ggplot

# Dataset Description
BWFPlayers19.csv have 313 record of active international badminton athlete's in 2019 with 12 attributes.

| Attribute/Column  | Description |
| ------------- | ------------- |
| Name  | Athlete's Full Name |
| Age  | Athlete's Age  |
| Height  | Athlete's Height  |
| Gender  | Athlete's Gender (F = Female \| M = Male) |
| Category  | Athlete's Category (MS = Men’s Singles (Tunggal Putra) \| WS = Women’s Singles (Tunggal Putri) \| MD = Men’s Doubles (Ganda Putra) \| WD = Women’s Doubles (Ganda Putri) \| XD = Mixed Doubles (Ganda Campuran)) |
| Country  | Athlete's Country (29 Country) |
| Continent  | Athlete's Continent (Asia, Europe, Pan Am, Oceania) |
| Hand  | Dominant Athlete's Hand (Right, Left) |
| Medals  | Athlete's count of medals from major event  |
| HRank  | Athlete's World Ranking |
| Multiple  | Athlete's Doubles Status (1 = Yes \| 0 = No)  |
| Career  | Athlete's count of Winning  |

# Work Flow
1. Data Preparation
2. Exploratory Data Analysis (EDA)
3. Develop Statistical Model
4. Statistical Model Election
5. Statistical Model Diagnose
6. Statistical Model Transformation

# Data Preparation
- Library import

- Handle missing values

  ![Screenshot 2023-04-27 101643](https://user-images.githubusercontent.com/65814424/234750718-986a1152-e429-4e55-9c47-200e62617dac.png)
  
  Missing values handling:
  - Search the right values in https://bwfbadminton.com/
  - Replacing with the mean

- Handle incorrect values
  ![image](https://user-images.githubusercontent.com/65814424/234751061-b4128b7a-1b77-4658-9b0a-ea4960e748b5.png)
  ![image](https://user-images.githubusercontent.com/65814424/234751105-95512138-9f33-4dc8-8963-36c72f778c4a.png)
  ![image](https://user-images.githubusercontent.com/65814424/234751158-d316b529-3253-464c-b963-5dd438650758.png)
  
  Incorrect values handling:
  - Search the right values in https://bwfbadminton.com/

# Exploratory Data Analysis (EDA)
## Univariate Analysis
![Barplot athlete hand use](https://user-images.githubusercontent.com/65814424/234759025-9256ee53-80bd-4d52-92a1-72a22225aece.png)




## Bivariate Analysis


