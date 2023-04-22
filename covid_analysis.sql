SELECT * FROM covidproj.coviddeaths1;
SELECT location,date,population,total_cases,new_cases,total_deaths,(total_deaths/total_cases)*100 as death_percent,(total_cases/population)*100 as cases_percent_popln
FROM covidproj.coviddeaths1
-- where location like '%in%'
 order by 1,2;
 
 select location from 
 covidproj.coviddeaths1
 group by location;
 
 select location,population,MAX(total_cases) as highest_inf_count
 FROM covidproj.coviddeaths1 
 group by location,population
 order by 1,2;
 
 select location,population,MAX(total_cases) as highest_inf_count
  FROM covidproj.coviddeaths1 
  group by location,population
  order by highest_inf_count desc;
  
select location,population,MAX(total_deaths) as num_deaths
FROM covidproj.coviddeaths1 
group by location,population 
order by num_deaths desc;

select continent,MAX(total_deaths ) as num_deaths
FROM covidproj.coviddeaths1 
where continent is not null
group by continent;
-- order by num_deaths desc;

select date ,sum(total_cases) as total_cases,sum(total_deaths) as deaths_per_day,sum(total_cases_per_million)
FROM covidproj.coviddeaths1 
where date is not null
group by date
order by date;

select dea.population,dea.location,dea.date,vac.hospital_beds_per_thousand
from covidproj.coviddeaths1 as dea
join covidproj.covidvaccinations as vac
	on dea.location=vac.location
    and dea.date=vac.date;
    
select dea.population,dea.location,dea.date,vac.hospital_beds_per_thousand,vac.gdp_per_capita
from covidproj.coviddeaths1 as dea
join covidproj.covidvaccinations as vac
	on dea.location=vac.location
    and dea.date=vac.date;
    
select dea.location,dea.date,vac.stringency_index
from covidproj.coviddeaths1 as dea
join covidproj.covidvaccinations as vac
	on dea.location=vac.location
    and dea.date=vac.date;
    
select dea.location,dea.date,vac.stringency_index
from covidproj.coviddeaths1 as dea
join covidproj.covidvaccinations as vac
	on dea.location=vac.location
    and dea.date=vac.date
;

select dea.location,AVG(vac.stringency_index)
from covidproj.coviddeaths1 as dea
join covidproj.covidvaccinations as vac
	on dea.location=vac.location
    and dea.date=vac.date
group by dea.location
;

select dea.location,dea.continent,dea.date,vac.human_development_index
from covidproj.coviddeaths1 as dea
join covidproj.covidvaccinations as vac
	on dea.location=vac.location
    and dea.date=vac.date
;




  
 

