use cs5200_fall2018_sun;
#1
set @alice_p_address = (select address.id from address join person on address.Id_Person = person.Id where person.username = 'alice' and primary_address = true);
DELETE FROM address where id = @alice_p_address;

#2
set @top_order = (select max(widget.orders) from widget join page on widget.Id_page =page.Id where page.title = 'Contact');
set @top_oid = (select widget.id from widget join page on widget.Id_page =page.Id where page.title = 'Contact' and widget.orders = @top_order); 
DELETE FROM widget where id = @top_oid;

#3
set @target = (select page.Id from page join website on page.Id_website =website.Id where website.name = 'Wikipedia' order by page.updated limit 1 ) ;
DELETE FROM page where Id = @target;

#4 has set all FOREIGN key related as cascade
DELETE FROM website where name = 'CNET';


