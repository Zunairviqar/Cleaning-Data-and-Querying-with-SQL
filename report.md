# Homework #03

## Overview

Format: csv
Size: 266KB
Number of Records: 2830

### Sample of Data

report_year,agency_code,agency_jurisdiction,population,violent_crimes,homicides,rapes,assaults,robberies,months_reported,crimes_percapita,homicides_percapita,rapes_percapita,assaults_percapita,robberies_percapita
1975,NM00101,"Albuquerque, NM",286238,2383,30,181,1353,819,12,832.52,10.48,63.23,472.68,286.13
1975,TX22001,"Arlington, TX",112478,278,5,28,132,113,12,247.16,4.45,24.89,117.36,100.46
1975,GAAPD00,"Atlanta, GA",490584,8033,185,443,3518,3887,12,1637.44,37.71,90.3,717.1,792.32
1975,CO00101,"Aurora, CO",116656,611,7,44,389,171,12,523.76,6,37.72,333.46,146.58
1975,TX22701,"Austin, TX",300400,1215,33,190,463,529,12,404.46,10.99,63.25,154.13,176.1
1975,MD00301,"Baltimore County, MD",642154,1259,25,137,347,750,12,196.06,3.89,21.33,54.04,116.79

### Fields or Column Headers

* Field/Column 1: Name = report_year, Type = integer.
* Field/Column 1: Name = agency_code, Type = string.
* Field/Column 1: Name = agency_jurisdiction, Type = string.
* Field/Column 1: Name = population, Type = integer.
* Field/Column 1: Name = violent_crimes, Type = integer.
* Field/Column 1: Name = homicides, Type = integer.
* Field/Column 1: Name = rapes, Type = integer.
* Field/Column 1: Name = assaults, Type = integer.
* Field/Column 1: Name = robberies, Type = integer.
* Field/Column 1: Name = months_reported, Type = integer.
* Field/Column 1: Name = crimes_percapita, Type = integer.
* Field/Column 1: Name = homicides_percapita, Type = integer.
* Field/Column 1: Name = rapes_percapita, Type = integer.
* Field/Column 1: Name = assaults_percapita, Type = integer.
* Field/Column 1: Name = robberies_percapita, Type = integer.

### About the Data

1. Title: Crime in Context, 1975-2015.

2. Link to Data: https://www.kaggle.com/marshallproject/crime-rates

3. Source / Origin: 
    * Author or Creator: FBI Uniform Crime Reporting program's "Offenses Known and Clearances by Arrest"
    * Publication Date: 18 August 2016
    * Publisher: Gabriel Dance, Tom Meagher, and Emily Hopkins of The Marshall Project
    * Version or Data Accessed: Version 1 (29th September 2020)
    
4. License: Unknown

5. Can You Use this Data Set for Your Intended Use Case? 
Yes, since I am not reproducing the data and only performing an analysis on it, adhering similarly to the data set that we used in workshop 2.


## Table Design
The design of the table is such that it has 10 columns.

The PRIMARY KEY has been chosen as a combination of two columns, namely the year and the code. This is because the combination of each of these should be unique, such that each state should appear only once in each year allowing this to be a unique value and a relevant candidate for the primary key.

The first column is 'year' and has values for the year that the data has been collected on. The sample value is '1975'. This value is stored as an integer since the year cannot have any character other than digits.

The second column is 'code' and has values for the state code for the state that the data is for.  The sample value is 'WASPD00'. This value is stored as text since the code is a combination of digits and string characters so it is most appropriate to store it as a text value.

The third column is 'state' and has values for the state that the data is for. The sample value is 'SanJose'. This value is stored as text since the name of the country only contains string characters.

The fourth column is 'acronym' and has values for the acronym of the state name. The sample value is 'NM'. This value is stored as text since the acronym of the country only contains string characters.

The fifth column is 'population' and has values for the population of the state. The sample value is '529675'. This value is stored as an integer since the population number can only be an integer and could be used for numeric calculations.

The sixth column is 'violent_crimes' and has values for the number of violent crimes committed in the state for the year. The sample value is '2383'. This value is stored as an integer since the violent crimes number can only be an integer and could be used for numeric calculations.

The seventh column is 'homicides' and has values for the number of homicides committed in the state for the year. The sample value is '30'. This value is stored as an integer since the homicides number can only be an integer and could be used for numeric calculations.

The eighth column is 'rapes' and has values for the number of rapes committed in the state for the year. The sample value is '181'. This value is stored as an integer since the number of rapes can only be an integer and could be used for numeric calculations.

The ninth column is 'assaults' and has values for the number of assaults committed in the state for the year. The sample value is '1353'. This value is stored as an integer since the number of assaults can only be an integer and could be used for numeric calculations.

The tenth column is 'robberies' and has values for the number of robberies committed in the state for the year. The sample value is '819'. This value is stored as an integer since the number of robberies can only be an integer and could be used for numeric calculations.

## Import
Importing the data was no doubt the most time consuming part as it was what the entire assignment was dependent upon. I was having difficulties initially but i figured that it was mainly because the file to be imported was probably within a folder of my working directory and it was giving me an error and so I used an absolute path for the 'crimes_committed.csv' file which allowed it to be imported.

## Database Information
sqlite> .tables
Reports

```
### 1. show all of the tables in your database (there should only be 1!)
The Command that I used for this was:

.sqlite> .tables

(RESULT WAS:)

Reports
```

```
### 2. show information about the table's columns (names and types)
The Command that I used for this was:

.sqlite> .schema

(RESULT WAS:)

CREATE TABLE Reports (
    year integer NOT NULL,
    code text NOT NULL,
    state text,
    acronym text,
    population integer,
    violent_crimes integer,
    homicides integer,
    rapes integer,
    assaults integer,
    robberies integer,
    PRIMARY KEY(year, code)
);
```


## Query Results


```
### 1. do some rudimentary data cleaning by modifying values in a column or columns (such as change '' to NULL, cast types, etc.) … instead of adding the results of the query or queries to report.md, write the motivation for modifying / cleaning your data in this way

***PRODUCES NO OUTPUT***
```

```
### 2. the total number of rows in the database
count(*)  
----------
2753
```
```
### 3. show the first 15 rows, but only display 3 columns (your choice)

state        population  rapes     
-----------  ----------  ----------
Albuquerque  286238      181       
Arlington    112478      28        
Atlanta      490584      443       
Aurora       116656      44        
Austin       300400      190       
BaltimoreCo  642154      137       
Baltimore    864100      463       
Boston       616120      453       
Buffalo      422276      192       
Charlotte    262103      71        
Chicago      3150000     1657      
Cincinnati   433367      261       
Cleveland    659931      491       
Columbus     572797      416       
Dallas       864665      547  
```
```
### 4. do the same as above, but choose a column to sort on, and sort in descending order

state        population  rapes     
-----------  ----------  ----------
NewYorkCity  8550861     2244      
NewYorkCity  8473938     2190      
NewYorkCity  8400907     832       
NewYorkCity  8396126     1112      
NewYorkCity  8345075     890       
NewYorkCity  8289415     1162      
NewYorkCity  8220196     875       
NewYorkCity  8211875     1092      
NewYorkCity  8175133     1036      
NewYorkCity  8165001     1071      
NewYorkCity  8115690     1412      
NewYorkCity  8101321     1428      
NewYorkCity  8098066     1609      
NewYorkCity  8084693     1689      
NewYorkCity  8023018     1530   
```
```
### 5. add a new column without a default value

***PRODUCES NO OUTPUT***
```
```
### 6. set the value of that new column

***PRODUCES NO OUTPUT***
```
```
### 7. show only the unique (non duplicates) of a column of your choice
state      
-----------
Albuquerque
Arlington  
Atlanta    
Aurora     
Austin     
BaltimoreCo
Baltimore  
Boston     
Buffalo    
Charlotte  
Chicago    
Cincinnati 
Cleveland  
Columbus   
Dallas     
Denver     
Detroit    
ElPaso     
FairfaxCoun
FortWorth  
Fresno     
Honolulu   
Houston    
Indianapoli
Jacksonvill
KansasCity 
LasVegas   
LongBeach  
LosAngelesC
LosAngeles 
Memphis    
Mesa       
Miami-DadeC
Miami      
Milwaukee  
Minneapolis
MontgomeryC
Nashville  
NassauCount
NewOrleans 
NewYorkCity
Newark     
Oakland    
OklahomaCit
Omaha      
Orlando    
Philadelphi
Phoenix    
Pittsburgh 
Portland   
PrinceGeorg
Raleigh    
Sacramento 
SaltLakeCit
SanAntonio 
SanDiego   
SanFrancisc
SanJose    
Seattle    
St.Louis   
SuffolkCoun
Tampa      
Tucson     
Tulsa      
VirginiaBea
Washington 
Wichita    
Louisville
```
```
### 8. group rows together by a column value (your choice) and use an aggregate function to calculate something about that group (count of all members of the group, the average of a column of the members of the group)
show the column that is used for grouping AND the result of the aggregate function (so, 2 columns minimum on output)

state        Total_Rapes
-----------  -----------
Albuquerque  10737      
Arlington    5024       
Atlanta      17134      
Aurora       6485       
Austin       11388      
Baltimore    17990      
BaltimoreCo  7713.0     
Boston       15843      
Buffalo      9348       
Charlotte    10864      
Chicago      90209      
Cincinnati   12164.0    
Cleveland    24394.0    
Columbus     23057      
Dallas       33708      
Denver       16363      
Detroit      40857      
ElPaso       8830       
FairfaxCoun  3617       
FortWorth    15447      
Fresno       6328       
Honolulu     10093      
Houston      40207      
Indianapoli  18662      
Jacksonvill  18248      
KansasCity   15899      
LasVegas     19199      
LongBeach    7505       
LosAngeles   69748      
LosAngelesC  14827      
Louisville   2587       
Memphis      25860      
Mesa         4689       
Miami        7500       
Miami-DadeC  21028      
Milwaukee    12579      
Minneapolis  17725      
MontgomeryC  6083       
Nashville    15887      
NassauCount  2669       
NewOrleans   12618      
NewYorkCity  101795     
Newark       10457      
Oakland      14574      
OklahomaCit  16057      
Omaha        7671       
Orlando      6134       
Philadelphi  37318      
Phoenix      20236      
Pittsburgh   7555       
Portland     14167.0    
PrinceGeorg  11549      
Raleigh      3398       
Sacramento   7432       
SaltLakeCit  5515       
SanAntonio   23199      
SanDiego     15165      
SanFrancisc  14555      
SanJose      14290      
Seattle      11624      
St.Louis     12142      
SuffolkCoun  4160       
Tampa        8807.0     
Tucson       11029      
Tulsa        11066      
VirginiaBea  4218       
Washington   12195      
Wichita      9011
```
```
### 9. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups (for example, show all genres that have more than 2 movies in it and only show the genre and the number of movies for that genre).
you'll use a HAVING clause to do this (covered in the slides on group by)

state       Total_Rapes
----------  -----------
Atlanta     17134      
Baltimore   17990      
Boston      15843      
Chicago     90209      
Cleveland   24394.0    
Columbus    23057      
Dallas      33708      
Denver      16363      
Detroit     40857      
FortWorth   15447      
Houston     40207      
Indianapol  18662      
Jacksonvil  18248      
KansasCity  15899      
LasVegas    19199      
LosAngeles  69748      
LosAngeles  14827      
Memphis     25860      
Miami-Dade  21028      
Minneapoli  17725      
Nashville   15887      
NewYorkCit  101795     
Oakland     14574      
OklahomaCi  16057      
Philadelph  37318      
Phoenix     20236      
Portland    14167.0    
SanAntonio  23199      
SanDiego    15165      
SanFrancis  14555      
SanJose     14290 
```
```
### 10. Displays 3 columns, with 2 columns. One column with an aggregate of the value of data in that group and another showing the maximum from those added values. of the data It represents the total crimes committed from 1975 to 2015 in each state in the 2nd column, and the maximum total crimes in a year in a state from 1975 to 2015.

state        sum(total_crimes)  max_crimes_per_year
-----------  -----------------  -------------------
Albuquerque  362364             13414              
Arlington    136562             5456               
Atlanta      858140             33704              
Aurora       155214             8914               
Austin       231222             8100               
Baltimore    1201260            43890              
BaltimoreCo  460122             15326              
Boston       748272             28142              
Buffalo      327728             13780              
Charlotte    508422             19450              
Chicago      3921772            181040             
Cincinnati   291638             11588              
Cleveland    602630             24858              
Columbus     446922             14442              
Dallas       1180936            52822              
Denver       340018             11040              
Detroit      1836006            60774              
ElPaso       298570             12218              
FairfaxCoun  68198              2120               
FortWorth    407418             18784              
Fresno       275422             12398              
Honolulu     189544             5764               
Houston      1639078            53302              
Indianapoli  559014             22248              
Jacksonvill  583767             23308              
KansasCity   622470             25188              
LasVegas     609838             28766              
LongBeach    351006             18418              
LosAngeles   3958332            179750             
LosAngelesC  853178             37460              
Louisville   100832             8612               
Memphis      786286             27114              
Mesa         140270             5774               
Miami        726886             31214              
Miami-DadeC  1000122            41522              
Milwaukee    460100             19166              
Minneapolis  394494             14152              
MontgomeryC  146606             4890               
Nashville    540280             20042              
NassauCount  135414             4720               
NewOrleans   540940             22454              
NewYorkCity  8526568            349084             
Newark       547508             24640              
Oakland      560086             20280              
OklahomaCit  374004             12960              
Omaha        228346             9746               
Orlando      250008             8600               
Philadelphi  1526402            46062              
Phoenix      720628             23822              
Pittsburgh   317308             11966              
Portland     462330             17666              
PrinceGeorg  465224             16464              
Raleigh      128238             4512               
Sacramento   308932             11112              
SaltLakeCit  104778             3284               
SanAntonio   524648             19538              
SanDiego     617952             29584              
SanFrancisc  720436             27352              
SanJose      335096             13298              
Seattle      408098             15560              
St.Louis     759850             29996              
SuffolkCoun  190498             6944               
Tampa        451120             20524              
Tucson       304634             10854              
Tulsa        310872             10016              
VirginiaBea  68084              2510               
Washington   867874             33776              
Wichita      186996             7678
```
```
### 11. It represents a query that follows from another query. It displays the maximum from a new column created in another sub query. Displays the state with the maximum total number of crimes committed from 1975 to 2015.

state        max(tot)  
-----------  ----------
NewYorkCity  8526568
```
```
### 12. Rounded value of the average of all the values in the column "violent_crimes". This value indicates the average number of violent crimes committed each year from 1975 to 2015.

round(avg(violent_crimes))
--------------------------
8946.0  
```


