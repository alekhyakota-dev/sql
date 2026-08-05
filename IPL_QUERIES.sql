create database workshop;

use workshop;

show tables;

select * from ipl_messy_dataset_1000;

rename table ipl_messy_dataset_1000 to ipl;

select * from ipl;

desc ipl;

alter table ipl modify column season int;

alter table ipl modify column matches int;

alter table ipl modify column innings  int;

alter table ipl modify column runs int;

select count(runs) from ipl;

set sql_safe_updates=0;

update ipl set runs = null where runs = '';

update ipl set runs = 0 where runs is null;

update ipl set runs=innings*average where runs=0;

select* from ipl;

alter table ipl modify column Highest_Score int;

set sql_safe_updates=0;

alter table ipl modify column average float;

alter table ipl modify column strike_rate float;

update ipl set strike_rate = runs / innings where strike_rate is null and innings > 0;

update ipl set strike_rate=null where strike_rate="";

update ipl set strike_rate = 0 where strike_rate is null;

update ipl set strike_rate=runs/100 where strike_rate=0;

update ipl set strike_rate=abs(strike_rate);

alter table ipl modify column wickets float;

alter table ipl modify column economy float;

alter table ipl modify column bowling_average float;

alter table ipl modify column Player_Price_Cr float;

update ipl set Player_Price_Cr=null where Player_Price_Cr="";

update ipl set Player_Price_Cr = 0 where Player_Price_Cr is null;

alter table ipl modify column catches int;

select * from ipl;

desc ipl;

select count(player_id) from ipl;
select count(player_name) from ipl;
select count(season) from ipl;
select count(team) from ipl;
select count(country) from ipl;
select count(role) from ipl;
select count(matches) from ipl;
select count(innings) from ipl;
select count(highest_score) from ipl;
select count(average) from ipl;
select count(strike_rate) from ipl;
select count(fours) from ipl;
select count(sixes) from ipl;

update ipl set wickets = 0 where wickets is null;

update ipl set economy = 0 where economy is null;

update ipl set bowling_average = 0 where bowling_average is null;

update ipl set country=null where country= "";

update ipl set country="India";

select * from ipl;

select distinct(player_name) from ipl;

select distinct team from ipl;

update ipl set runs=innings*average where runs is null;

update ipl set team=CASE
when team="Chennai Super Kings" then "CSK"
when team="Mumbai Indians" then "MI"
when team="Royal Challengers Bengaluru" then "RCB"
when team="Kolkata Knight Riders" then "KKR"
when team="Sunrisers Hyderabad" then "SRH"
end;

select distinct team from ipl;

select * from ipl;

select distinct role from ipl;

select distinct status from ipl;

set sql_safe_updates=0;

select Date_Updated,DATE_FORMAT(COALESCE(STR_TO_DATE(Date_Updated, '%d/%m/%Y'),STR_TO_DATE(Date_Updated, '%m/%d/%Y')),'%Y-%m-%d') AS converted_date FROM ipl;

select distinct * from ipl;

update ipl set team=CASE
when team="Chennai Super Kings" then "CSK"
when team="Mumbai Indians" then "MI"
when team="Royal Challengers Bengaluru" then "RCB"
when team="Kolkata Knight Riders" then "KKR"
when team="Sunrisers Hyderabad" then "SRH"
end;

select * from ipl;

update ipl set Player_Name=CASE
when Player_Name="KL Rahul" then "KL RAHUL"
when Player_Name="Virat Kohli" then " Virat Kohli "
when Player_Name="MS Dhoni" then " MS DHONI "
when Player_Name="Suryakumar Yadav" then "SURYAKUMAR YADAV"
when Player_Name="RAVINDRA JADEJA" then "Ravindra Jadeja"
when Player_Name=" Shubman Gill " then "Shubman Gill"
when Player_Name=" SURYAKUMAR YADAV " then "Suryakumar Yadav"
when Player_Name=" KL RAHUL " then "KL Rahul"
when Player_Name="RUTURAJ GAIKWAD" then "Ruthuraj Gaikwad"
when Player_Name=" Jasprit Bumrah " then "Jasprit Bumrah"
when Player_Name=" Suryakumar Yadav " then "Suryakumar Yadav"
when Player_Name="HARDIK PANDYA" then "Hardik Pandya"
when Player_Name="VIRAT KOHLI" then "Virat Kohli"
when Player_Name="ROHIT SHARMA" then "Rohit Sharma"
when Player_Name="JASPRIT BUMRAH" then "Jasprit Bumrah"
when Player_Name=" Hardik Pandya " then "Hardik Pandya"
end;

update ipl set Player_Name='Suryakumar Yadav' or Player_Name='Rohit Sharma' where team='MI';

update ipl set Player_Name='KL Rahul' where team='LSG';

update ipl set Player_Name='Rishabh Pant' where team='LSG';

update ipl set Player_Name='Shubman Gill' where team='GT';

update ipl set Player_Name='Virat Kohli' where team='RCB';

update ipl set Player_Name='Abhishek Sharma' where team='SRH';

update ipl set Player_Name='Hardik Pandya' where team='MI';

update ipl set Player_Name='Venkatesh Iyer' where team='KKR';

select * from ipl;

update ipl set Team='RCB' where Player_Name='Virat Kohli';

update ipl set Team='LSG' where Player_Name='KL Rahul';

update ipl set Team='CSK' where Player_Name='Ravindra Jadeja';

update ipl set Team='MI' where Player_Name='Suryakumar Yadav';

update ipl set Player_Name="" where Player_Name is null;

update ipl set Team="" where Team is null;

update ipl set Player_Name='Ravindra Jadeja' where Player_Name="";

update ipl set matches=5 where matches=0;

update ipl set catches=4 where catches=0;

update ipl set Player_Price_Cr=12.34 where Player_Price_Cr=0;

update ipl set innings=8 where innings=0;

update ipl set sixes=34 where sixes=0;

update ipl set wickets=12 where wickets=0;

update ipl set strike_rate=12 where strike_rate=0;

select distinct team from ipl;

select distinct Player_Name from ipl;

select distinct role from ipl;

select distinct status from ipl;

select distinct country from ipl;

select * from ipl;

select distinct * from ipl;

insert into ipl value
("P175","MS Dhoni",2025,"CSK","India","Bowler",7,4,361,101,32.39,101.64,77,7,3,6.65,41.65,9,12.34,"Released",16/08/2024);

alter table ipl add column venue varchar(100);

select * from ipl;

set sql_safe_updates=0;

update ipl set venue=(
case
when team='CSK' then "Cheppak"
when team='MI' then "Wankade"
when team='RCB' then "Chinna Swamy"
when team='KKR' then "Eidden Garden"
when team='SRH' then "Uppal"
when team='GT' then "Ahmedabad"
when team='LSG' then "Lucknow"
end
);