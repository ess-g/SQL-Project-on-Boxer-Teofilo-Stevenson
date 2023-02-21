SELECT * FROM Olympic_Athlete_Bio;
SELECT *FROM Olympic_Athlete_Event_Results;
SELECT * FROM Olympics_Country;
SELECT * FROM Olympics_Games;

--‘edition’ = the Olympic Games (year, winter/summer)
--NOC = “national olympic committee” / is an abbreviation for country

--------------------QUESTIONS FOR TABLE 2/SOCCER--------------------------
--When was Soccer introduced to the Olympics? 
--How many countries typically participate? 
--How many players are on an Olympic Soccer team? 
--Who has won the most gold medals in Soccer? 
--Does one Soccer team dominate the sport?  
--Are there rivalries in Soccer?
--What Soccer teams/countries have never won a medal? 


WITH cte AS
( 
SELECT edition, country_noc,medal,
COUNT(medal) OVER(PARTITION BY country_noc) as total_medals_per_country_for_all_athletes
FROM Olympic_Athlete_Event_Results 
WHERE event = 'Football, Men'AND medal IN ('Gold','Bronze','Silver')
GROUP BY edition 
)
SELECT country_noc,MAX(total_medals_per_country_for_all_athletes) 
from cte;


SELECT * 
FROM Olympic_Athlete_Bio
WHERE name = 'Teófilo Stevenson'

SELECT * 
FROM Olympic_Athlete_Bio
WHERE name = 'Teófilo Stevenson'



Did they win the most medals for their country? 


SELECT *
FROM Olympic_Athlete_Event_Results
WHERE country_noc = 'CUB' AND sport = 'Boxing' AND medal  != 'na' AND event = 'Heavyweight, Men'




SELECT *
FROM Olympic_Athlete_Event_Results
WHERE country_noc = 'CUB' AND sport = 'Boxing' AND medal  != 'na' AND event = 'Heavyweight, Men'
GROUP BY athlete_id  


-----------------------------------------------------------------------------------------------------------------------------------------




