create database skyllx_mocks;

show databases;

use  skyllx_mocks;

create table bmtc(
		bus_number varchar(10) primary key, 
        starting_point varchar(50),
        destination_point varchar(50),
        bus_name varchar(50),
        bus_capacity int,
        no_of_stations int,
        is_shakthi_yojana_applicable boolean,
        distance_per_trip int,
        bus_engine_type varchar(50));
        
select * from bmtc;
desc bmtc;

alter table bmtc rename column bus_number to bus_route_number;
      
insert into bmtc values("600F","Majestic","E-City","Vajra",30, 45,false,35, "EV");
insert into bmtc_city_buses values("401K","Whitefield","E-city","Samparka",45, 40,true,35,"Electric");
insert into bmtc_city_buses values("501A","jayanagar","yalaka","Samparka",45, 40,true,35,"Electric");
insert into bmtc_city_buses values("301A","Bannerghatta","yalaka","Samparka",45, 40,true,35,"Diesel");
insert into bmtc_city_buses values("307K","Indiranagar","Koramangala","min bus",40, 30,true,35,"Diesel");
insert into bmtc_city_buses values("101K","Whitefield","yalaka","vajra",40, 30,false,20,"Electric");
insert into bmtc_city_buses values("207K","Majestic ","Fuel cell","min bus",30, 30,false,20,"diesel");
insert into bmtc_city_buses values("701A","Bannerghatta","Fuel cell","samparka",40, 30,false,20,"Electric");
insert into bmtc_city_buses values("501K","Majestic","E-City ","min bus",40, 30,false,30,"Electric");
insert into bmtc_city_buses values("401A","yalaka","Fuel cell","vajra",40, 30,false,30,"diesel");




alter table bmtc rename to bmtc_city_buses;
select * from bmtc_city_buses;


create table passengerss(
			passenger_id int primary key,
            passenger_name varchar(50),
            passenger_starting_point varchar(50),
            passenger_ending_point varchar(50),
            gender varchar(10),
            price int,
            bus_route_number varchar(10), 
            foreign key (bus_route_number) references bmtc_city_buses(bus_route_number)
            );

insert into passengerss values(00001, "Manoj", "Majestic", "Silk Board", "male",60, '600F');
insert into passengerss values (00002,"Niki","yalaka","Jayanagar","female",45,'401K');
insert into passengerss values (00003,"shivu","Doddamashangara","Jayanagar","male",50,'401K');
insert into passengerss values (00004,"kavitha","yalaka","Jayanagar","female",30,'501K');
insert into passengerss values (00005,"sakshi","yalaka","whitefield","female",40,'701A');
insert into passengerss values (00006,"sama","Indiranagar","Jayanagar","female",30,'701A');
insert into passengerss values (00007,"hani","Whitefield","","female",45,'101k');
insert into passengerss values (00008,"Niki","Bannerghatta","Jayanagar","female",35,'207K');
insert into passengerss values (00009,"manoj","Majestic","Bannerghatta","male",40,'101k');
insert into passengerss values (00010,"megana","Koramangala","Jayanagar","female",50,'401A');
select * from passengerss;
drop  table passengers;