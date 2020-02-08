use cs5200_fall2018_sun;
#1a
select person.firstName,person.lastName from person, developer where person.id = developer.Id_Person;
#1b
select person.Id,person.firstName,person.lastName from person, developer where person.id = developer.Id_Person and person.Id=34;
#1c
select person.Id,person.firstName,person.lastName,website.name,website_role.role from(((person inner join developer on person.id = developer.Id_Person) inner join website_role on developer.Id = website_role.Id_developer) inner join website on website.Id = website_role.Id_website) where website.name='Twitter' and website_role.role<>'owner';
#1d
select person.Id,person.firstName,person.lastName,page.title,page.visits,page_role.role from(((person inner join developer on person.id = developer.Id_Person) inner join page_role on developer.Id = page_role.Id_developer) inner join page on page.Id = page_role.Id_page) where page.visits<300000 and page_role.role=(select role from role where role="reviewer");
#1e
select person.Id,person.firstName,person.lastName,widget.name,page.title,page_role.role,website.name from (((((person inner join developer on person.id = developer.Id_Person) inner join page_role on developer.Id = page_role.Id_developer) inner join page on page.Id = page_role.Id_page) inner join website on page.Id_website = website.Id ) inner join widget on widget.Id_page = page.Id) where widget.type='heading' and website.name='CNET' and page_role.role='writer' and page.title='Home';
#2a
select * from website having website.visits = min(website.visits);
#2b
select * from website where website.Id=678;
#2c
select * from website inner join page on website.Id = page.Id_website inner join widget on widget.Id_page = page.Id where widget.type = 'youtube';
#2d
select person.firstName,person.lastName,person.username,website.name,website_role.role from person join developer on person.id = developer.Id_Person join website_role on website_role.Id_developer = developer.Id join website on website.Id=website_role.Id_website where person.username='alice' and website_role.role='owner';
#2e
select person.firstName,person.lastName,person.username,website.name,website_role.role from person join developer on person.id = developer.Id_Person join website_role on website_role.Id_developer = developer.Id join website on website.Id=website_role.Id_website where person.username='charlie ' and website_role.role='admin' and website.visits>6000000;
#3a
select * from page having page.visits=max(page.visits);
#3.b
select page.title from page where page.Id = 234;
#3c
select page.Id,page.title,person.username,page_role.role,page.description,page.created,page.updated,page.visits from page join page_role on page.Id = page_role.Id_page join developer on developer.Id = page_role.Id_developer join person on person.Id = developer.Id_Person where person.username = 'alice' and page_role.role='editor';
#3d
select sum(page.visits) from website join page on website.Id = page.Id_website where website.name='CNET';
#3e
select avg(page.visits) from website join page on website.Id = page.Id_website where website.name='Wikipedia';
#4a
select widget.* from widget join page on page.Id=widget.Id_page join website on page.Id_website = website.Id where website.name = 'CNET' and page.title = 'Home';
#4b
select website.name, widget.*  from widget join page on page.Id=widget.Id_page join website on page.Id_website = website.Id where website.name = 'CNN' and widget.type = 'youtube';
#4c
select person.username,page_role.role, page.title, widget.* from widget join page on page.Id=widget.Id_page join page_role on page.Id = page_role.Id_page join developer on developer.Id = page_role.Id_developer join person on person.Id = developer.Id_Person where person.username = 'alice' and page_role.role = 'reviewer'; 
#4d
select count(widget.Id)  from widget join page on page.Id=widget.Id_page join website on page.Id_website = website.Id where website.name = 'Wikipedia';
#5a
select website.name from website join website_privilege on website_privilege.Id_website = website.id join developer on website_privilege.Id_developer = developer.id join person on person.Id = developer.Id_person where person.username = 'bob' and website_privilege.privilege = 'delete';
#5b
select page.title from page join page_privilege on page_privilege.Id_page = page.id join developer on page_privilege.Id_developer = developer.id join person on person.Id = developer.Id_person where person.username = 'charlie' and page_privilege.privilege = 'create';


