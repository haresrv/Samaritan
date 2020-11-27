use sys;
CREATE TABLE `Countries` (
  `code` int PRIMARY KEY,
  `name` varchar(255),
  `continent_name` varchar(255)
);

CREATE TABLE `Users` (
  `userid` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(255),
  `password` varchar(255),
  `emailid` varchar(255) UNIQUE NOT NULL,
  `membersince` datetime,
  `role` varchar(255),
  `status` varchar(255)
);

CREATE TABLE `Sponsors` (
  `userid` int PRIMARY KEY,
  `countrycode` int
);

CREATE TABLE `Admin` (
  `userid` int PRIMARY KEY,
  `privilegelevel` int
);

CREATE TABLE `SponsorPayments` (
  `paymentRefNo` int PRIMARY KEY AUTO_INCREMENT,
  `userid` int,
  `amount` numeric(8,2),
  `donated_date` datetime,
  `pan_number` varchar(20)
);

CREATE TABLE `Events` (
  `eventid` int PRIMARY KEY,
  `eventtitle` varchar(255),
  `eventdescribe` varchar(255),
  `eventdate` datetime,
  `eventaddedbyid` int
);

CREATE TABLE `Feedback` (
  `id` int PRIMARY KEY,
  `anonymous` boolean,
  `msg` varchar(255)
);

CREATE TABLE `NewsLetter` (
  `id` int PRIMARY KEY,
  `emailid` varchar(255)
);

ALTER TABLE `SponsorPayments` ADD FOREIGN KEY (`userid`) REFERENCES `Users` (`userid`);

ALTER TABLE `Sponsors` ADD FOREIGN KEY (`countrycode`) REFERENCES `Countries` (`code`);


ALTER TABLE `Sponsors` ADD FOREIGN KEY (`userid`) REFERENCES `Users` (`userid`);

ALTER TABLE `Admin` ADD FOREIGN KEY (`userid`) REFERENCES `Users` (`userid`);

ALTER TABLE `Events` ADD FOREIGN KEY (`eventaddedbyid`) REFERENCES `Admin` (`userid`);

select * from Users;


insert into Users values ('17119','Hare Sankaran RV','CmyM@2020','haresrv2000@gmail.com','2020-09-04','Admin','Active');
insert into Users values ('17102','Abhishek','CmyM@2020','abhimarpu99@gmail.com','2020-09-04','Admin','Active');
insert into Users values ('17105','Akash','CmyM@2020','akashsuper2000@gmail.com','2020-09-04','Admin','Active');
insert into Users values ('17120','Himanshu','CmyM@2020','himanshu6k@gmail.com','2020-09-04','Admin','Active');
insert into Users values ('17138','Akshay','CmyM@2020','akshaypenumudi123@gmail.com','2020-09-04','Admin','Active');

