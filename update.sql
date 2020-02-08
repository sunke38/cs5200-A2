use cs5200_fall2018_sun;
SET SQL_SAFE_UPDATES = 0;
#1
set @Id = (SELECT id FROM phone where phone.Id_Person = (SELECT id FROM person where person.username = 'charlie') and phone.primary_Phone = true);
UPDATE phone SET phone = '333-444-5555' WHERE  Id = @Id;

#2
UPDATE widget SET orders = 1 WHERE orders = 2;
UPDATE widget SET orders = 2 WHERE orders = 3;
UPDATE widget SET orders = 3 WHERE name='head345';

#3
set @website_cnet = (select website.id from website where website.name = 'CNET');
UPDATE page set title =concat('CNET-',page.title) where Id_website = @website_cnet;

#4
set @Id_bob = (select developer.id from developer,person where developer.Id_person=person.Id and person.username = 'bob');
set @Id_charlie = (select developer.id from developer,person where developer.Id_person=person.Id and person.username = 'charlie');
set @bob_role = (select role from page join page_role on page_role.Id_page = page.Id join website on page.Id_website = website.Id where page_role.Id_developer = @Id_bob and  website.name = 'CNET' and page.title='CNET-Home');
set @charlie_role = (select role from page join page_role on page_role.Id_page = page.Id join website on page.Id_website = website.Id where page_role.Id_developer = @Id_charlie and  website.name = 'CNET' and page.title='CNET-Home');
set @bob_role_id = (select page_role.Id from page join page_role on page_role.Id_page = page.Id join website on page.Id_website = website.Id where page_role.Id_developer = @Id_bob and  website.name = 'CNET' and page.title='CNET-Home');
set @charlie_role_id = (select page_role.Id from page join page_role on page_role.Id_page = page.Id join website on page.Id_website = website.Id where page_role.Id_developer = @Id_charlie and  website.name = 'CNET' and page.title='CNET-Home');
update page_role set role=@charlie_role where Id = @bob_role_id;
update page_role set role=@bob_role where Id = @charlie_role_id;