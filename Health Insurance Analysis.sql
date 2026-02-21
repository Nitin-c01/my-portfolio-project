create table claims_data (
Insurers_name	varchar(255),
Year_	varchar(20),
Policy_type	 varchar(100),
NET_EARNED_PREMIUM	decimal (30,2),
CLAIMS_INCURRED_NET	decimal (30,2),
INCURRED_CLAIMS_RATIO decimal (5,2)
)

select count(*) from claims_data


create table claims_temp (
Insurers_name	varchar(255),
Year_	varchar(20),
Policy_type	 varchar(100),
NET_EARNED_PREMIUM	varchar(255),
CLAIMS_INCURRED_NET	varchar(255),
INCURRED_CLAIMS_RATIO varchar(255)
)
 
 
 
 # i have imported all necessary table from csv file now we can do analysis with the available tables;; right now we have Insurance_data table and claim_data table 
 
 
 #all totals // group by Insurer _name
 SELECT insurer_name,
       SUM(no_of_policies) AS total_policies,
       SUM(no_of_persons_covered) AS total_persons_covered,
       SUM(gross_premium) AS total_gross_premium,
       SUM(net_earned_premium) AS total_net_premium,
       SUM(claims_incurred_net) AS total_claims_incurred
FROM insurance_data i
JOIN claims_data c 
  ON i.insurer_name = c.insurers_name
     AND i.Year_ = c.Year_
     AND i.Policy_type = c.Policy_type
     group by insurer_name
     
     
     # below i have tried analysing the average of claim ratio, net premium, avg claim in india on health insurance according to years

select year_, 
avg(INCURRED_CLAIMS_RATIO) as avg_claim_ratio,
avg(CLAIMS_INCURRED_NET) as avg_claim_net,
avg(NET_EARNED_PREMIUM) as avg_prem_net
from claims_data
 group by year_
 order by year_
 
select policy_type, sum(No_of_policies) as total_policies, avg(No_of_policies) as avg_policies from insurance_data group by policy_type


select distinct policy_type from insurance_data

SELECT DISTINCT Policy_type
FROM insurance_data
ORDER BY Policy_type;

UPDATE insurance_data
SET Policy_type = 'INDIVIDUAL'
WHERE Policy_type IN (
    'Individual Insurance excluding Family /Floater Policies',
    'Individual Insurance excluding Family/ Floater Policies',
    'Individual Other than Family Floater'
);

UPDATE insurance_data
SET Policy_type = 'FAMILY FLOATER'
WHERE Policy_type IN (
    'Individual Family Floater',
    'Family/Floater Insurance excluding Individual Policies'
);

UPDATE insurance_data
SET Policy_type = 'GROUP'
WHERE Policy_type IN (
    'Group Insurance Schemes excluding Govt Sponsored Schemes & RSBY',
    'Group Insurance Schemes excluding Govt. Sponsered Schemes',
    'Group Insurance Schemes excluding Govt. Sponsored Schemes'
);

UPDATE insurance_data
SET Policy_type = 'GOVT SPONSORED'
WHERE Policy_type IN (
    'Government Sponsored Schemes including RSBY',
    'Government Sponsored Schemes including RSBY & PMJAY'
);
UPDATE insurance_data
SET Policy_type = 'FAMILY FLOATER'
WHERE TRIM(Policy_type) = 'Individual Family Floater';


SELECT Policy_type, COUNT(*) 
FROM insurance_data
GROUP BY Policy_type;
