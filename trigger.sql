delimiter //
create trigger website_privileges_insert after insert on website_role 
for each row begin
	if (new.role = 'owner') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"create",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"delete",new.Id_website);
	end if;
    if (new.role = 'admin') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"create",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"delete",new.Id_website);
	end if;
    if (new.role = 'writer') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"create",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
	end if;
    if (new.role = 'editor') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
	end if;
    if (new.role = 'reviewer') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
	end if;
end;
//
delimiter ;
delimiter //
create trigger page_privileges_insert after insert on page_role 
for each row begin
	if (new.role = 'owner') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"create",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"delete",new.Id_page);
	end if;
    if (new.role = 'admin') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"create",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"delete",new.Id_page);
	end if;
    if (new.role = 'writer') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"create",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
	end if;
    if (new.role = 'editor') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
	end if;
    if (new.role = 'reviewer') Then
		insert into website_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
	end if;
end;
//
delimiter ;


delimiter //
create trigger website_privileges_delete before delete on website_role 
for each row begin
	delete from website_privileges where Id_developer=old.Id_developer;
end;
//
delimiter ;
delimiter //
create trigger page_privileges_delete before delete on page_role 
for each row begin
	delete from page_privileges where Id_developer=old.Id_developer;
end;
//
delimiter ;

delimiter //
create trigger website_privileges_update after update on website_role 
for each row begin
	delete from website_privileges where Id_developer=old.Id_developer;
	if (new.role = 'owner') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"create",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"delete",new.Id_website);
	end if;
    if (new.role = 'admin') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"create",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"delete",new.Id_website);
	end if;
    if (new.role = 'writer') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"create",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
	end if;
    if (new.role = 'editor') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"update",new.Id_website);
	end if;
    if (new.role = 'reviewer') Then
		insert into website_privilege(Id_developer,privilege,Id_website) VALUES(new.Id_developer,"read",new.Id_website);
	end if;
end;
//
delimiter ;
delimiter //
create trigger page_privileges_update after update on page_role 
for each row begin
	delete from page_privileges where Id_developer=old.Id_developer;
	if (new.role = 'owner') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"create",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"delete",new.Id_page);
	end if;
    if (new.role = 'admin') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"create",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"delete",new.Id_page);
	end if;
    if (new.role = 'writer') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"create",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
	end if;
    if (new.role = 'editor') Then
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
		insert into page_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"update",new.Id_page);
	end if;
    if (new.role = 'reviewer') Then
		insert into website_privilege(Id_developer,privilege,Id_page) VALUES(new.Id_developer,"read",new.Id_page);
	end if;
end;
//
delimiter ;
