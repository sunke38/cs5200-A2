CREATE VIEW `new_view` AS
SELECT person.firstName,
	person.lastName,
	person.username,
	person.email,
	website.name,
	website.visits,
	website.updated
	from person,developer,website_role,website,page,page_role
	where person.Id = developer.Id_Person and website_role.Id_developer=developer.id and page_role.Id_developer=developer.id and website.Id = website_role.Id_website;