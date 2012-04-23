# --- Sample dataset

# --- !Ups

insert into user (id, username, password, fullname, email, createdon) values (1, 'leonard', '$2a$10$S4oWmAIMLvUxOuspF2Fg4eMehfZzyJvvgyYkT8mzYvQyih/FyhKBG', 'Leonard Punt', 'leonard@test.nl', '2012-03-08');
insert into user (id, username, password, fullname, email, createdon) values (2, 'gerrit', '$2a$10$S4oWmAIMLvUxOuspF2Fg4eMehfZzyJvvgyYkT8mzYvQyih/FyhKBG', 'Gerrit Foo', 'foo@test.nl', '2012-03-08');
insert into user (id, username, password, fullname, email, createdon) values (3, 'kees', '$2a$10$S4oWmAIMLvUxOuspF2Fg4eMehfZzyJvvgyYkT8mzYvQyih/FyhKBG', 'Kees Bar', 'bar@test.nl', '2012-03-08');
insert into user (id, username, password, fullname, email, createdon) values (4, 'klaas', '$2a$10$S4oWmAIMLvUxOuspF2Fg4eMehfZzyJvvgyYkT8mzYvQyih/FyhKBG', 'Klaas Bar', 'klaas@test.nl', '2012-03-08');
insert into user (id, username, password, fullname, email, createdon) values (5, 'piet', '$2a$10$S4oWmAIMLvUxOuspF2Fg4eMehfZzyJvvgyYkT8mzYvQyih/FyhKBG', 'Piet Foo', 'piet@test.nl', '2012-03-08');

insert into customer (id, name, code, description) values (1, 'Lunatech', 'LUNA', '');
insert into customer (id, name, code, description) values (2, 'Belastingdienst', 'BEL', 'Leuker kunnen we het niet maken, wel makkelijker..');
insert into customer (id, name, code, description) values (3, 'Albert Heijn', 'AH', '');
insert into customer (id, name, code, description) values (4, 'Rabobank', 'RABO', '');

insert into project (id, name, code, description, type, customer_id, customercontact, projectmanager_id, defaultproject) values (1, 'NoTime', 'TIME', 'Timesheet application for Lunatech', 0, 1, 'Leonard Punt', 1, 0);
insert into project (id, name, code, description, type, customer_id, customercontact, projectmanager_id, defaultproject) values (2, 'My2Cents', 'MY2C', '', 1, 2, '', 5, 0);
insert into project (id, name, code, description, type, customer_id, customercontact, projectmanager_id, defaultproject) values (3, 'Appie', 'APP', '', 0, 3, '', 4, 0);
insert into project (id, name, code, description, type, customer_id, customercontact, projectmanager_id, defaultproject) values (4, 'LOSS Timesheet', 'LOSS', '', 0, 1, '', 2, 0);

insert into projectassignment (id, project_id, user_id, begindate, enddate, hourlyrate, starred) values (1, 1, 1, '2012-02-01', '2012-05-30', '35.50', 0);
insert into projectassignment (id, project_id, user_id, begindate, enddate, hourlyrate, starred) values (2, 1, 3, '2012-02-01', '2012-05-30', '47.50', 0);
insert into projectassignment (id, project_id, user_id, begindate, enddate, hourlyrate, starred) values (3, 1, 4, '2012-02-01', '2012-05-30', '56.45', 0);
insert into projectassignment (id, project_id, user_id, begindate, enddate, hourlyrate, starred) values (4, 3, 1, '2012-02-01', '2012-05-30', '54.50', 0);

insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (1, 1, '2012-04-09', 7, 40, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (2, 1, '2012-04-10', 8, 0, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (3, 1, '2012-04-11', 0, 10, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (4, 1, '2012-04-12', 5, 30, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (5, 1, '2012-04-13', 8, 0, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (6, 1, '2012-04-14', 1, 0, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (7, 1, '2012-04-15', 1, 0, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (8, 4, '2012-04-09', 0, 40, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (9, 2, '2012-04-11', 3, 50, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (10, 3, '2012-04-12', 8, 30, 1, 100);
insert into hourentry (id, assignment_id, date, hours, minutes, billable, rate) values (11, 4, '2012-04-12', 2, 10, 1, 100);

insert into tag (id, tag) values (1, 'TIME-1');
insert into tag (id, tag) values (2, 'Coding');
insert into tag (id, tag) values (3, 'Research');
insert into tag (id, tag) values (4, 'TIME-5');
insert into tag (id, tag) values (5, 'TIME-8');
insert into tag (id, tag) values (6, 'APP-3');
insert into tag (id, tag) values (7, 'APP-7');
insert into tag (id, tag) values (8, 'TIME-21');
insert into tag (id, tag) values (9, 'Testing');

insert into hourentry_tag (hourentry_id, tag_id) values (1, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (1, 1);
insert into hourentry_tag (hourentry_id, tag_id) values (2, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (2, 1);
insert into hourentry_tag (hourentry_id, tag_id) values (3, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (3, 5);
insert into hourentry_tag (hourentry_id, tag_id) values (4, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (4, 8);
insert into hourentry_tag (hourentry_id, tag_id) values (5, 9);
insert into hourentry_tag (hourentry_id, tag_id) values (6, 3);
insert into hourentry_tag (hourentry_id, tag_id) values (7, 3);
insert into hourentry_tag (hourentry_id, tag_id) values (8, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (8, 6);
insert into hourentry_tag (hourentry_id, tag_id) values (9, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (9, 5);
insert into hourentry_tag (hourentry_id, tag_id) values (10, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (10, 5);
insert into hourentry_tag (hourentry_id, tag_id) values (11, 2);
insert into hourentry_tag (hourentry_id, tag_id) values (11, 6);
insert into hourentry_tag (hourentry_id, tag_id) values (11, 7);

# --- !Downs

delete from hourentry;
delete from projectassignment;
delete from project;
delete from customer;
delete from user;
delete from tag;
delete from hourentry_tag;