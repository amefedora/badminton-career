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
| Medals  | Athlete's count of gold medals from major event  |
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
  - ggplot2
  - dplyr

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

- Set nominal or categorical variable as a factor variable
  - Gender
  - Hand
  - Category
  - Continent
  - Multiple
  - Country
  - Age
  - Medals
  - Height
  - Career


# Exploratory Data Analysis (EDA)
## Univariate Analysis

| ![Bar Chart of Athletes Hand Use](https://user-images.githubusercontent.com/65814424/234801218-552abf00-4556-4de2-94d2-6e2a4b664503.png) | ![Gender Pie Chart](https://user-images.githubusercontent.com/65814424/234800629-d94b2c45-7648-4a93-8f91-0199e692d9b8.png) |
| ---------------------- | ---------------------- |
| The athletes with right hand use is more than the left hand use | There are slightly more male players than female players |
| ---------------------- | ---------------------- |
|    ![Bar Chart of Player Category](https://user-images.githubusercontent.com/65814424/234821205-07355b28-893a-4b74-a85d-e228a9a0979c.png) |![Histogram of Athlete's Rank](https://github.com/amefedora/badminton-career/assets/65814424/418101fe-2c67-4016-8caf-c1cb20fb1ce5) |

  Attribute Summary
  | Attribute | Min | 1st Quartile | Median | Mean | 3rd Quartile | Max |
  | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
  | Age  | 19.00 | 23.00 | 26.00 | 26.43 | 29.00 | 42.00 |
  | Height | 154.0 | 167.0 | 172.0 | 173.6 | 180.0 | 197.0 |
  | Medals | 0.000 | 0.000 | 2.000 | 3.725 | 5.000 | 22.000 |
  | HRank | 1.00 | 4.00 | 10.00 | 14.98 | 22.00 | 70.00 |
  | Career | 30.0 | 151.0 | 227.0 | 257.7 | 331.0 | 810.0 |


## Bivariate Analysis
| ![Scatter Plot Height and Age](https://github.com/amefedora/badminton-career/assets/65814424/629af0be-4057-4ab6-b526-0e65c6088881) | ![Boxplot Age by Category](https://github.com/amefedora/badminton-career/assets/65814424/939b0c8e-0fd8-4a83-81ab-d0ba60fe2f60) |
| ---------------------- | ---------------------- |
| ![Boxplot Height by Category](https://github.com/amefedora/badminton-career/assets/65814424/694a4bfd-7664-45c5-a343-cdb9a79f8ea2) |  |

| ![Interaction Plot Career by Category x Continent](https://github.com/amefedora/badminton-career/assets/65814424/ee860eb5-7f89-4021-8222-bff133ac5f99) | ![Interaction Plot Career by Hand x Continent](https://github.com/amefedora/badminton-career/assets/65814424/b5d86d11-3dc5-4a16-912d-10f832211f80) |
| ---------------------- | ---------------------- |
|  ![Interaction Plot Career by Hand x Category](https://github.com/amefedora/badminton-career/assets/65814424/2ba09199-7bd8-4e7a-a041-6534c6f03d55) | ![Interaction Plot Career by Category x Multiple](https://github.com/amefedora/badminton-career/assets/65814424/e8596cdf-039d-4a59-877a-4d2742cf900c) |


## Develop Statistical Model
