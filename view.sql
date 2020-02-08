CREATE VIEW `developer_roles_and_priviledge` AS
-- SELECT person.firstName,
-- 	developer.id,
-- 	website.name,
-- 	website.visits,
-- 	website.updated,
--     page.title,
--     page_role.role
-- 	from person,developer,website_role,website,page,page_role
-- 	where website_role.Id_developer=developer.id and page_role.Id_developer=developer.id and website.Id = website_role.Id_website;

	SELECT person.username,person.firstName,person.lastName,person.email,website.name as website ,website.visits,website.updated,website_role.role as website_role ,website_privilege.privilege as website_privilege,page.title,page.visits as page_visits,page.updated as page_updated,page_role.role as page_role,page_privilege.privilege as page_privilege from (((((((
    developer inner join person on person.Id=developer.Id_Person)
    inner join website_role on website_role.Id_developer=developer.Id)
    inner join website on website.Id = website_role.Id_website)
    inner join page on page.Id_website = website.Id)
    inner join page_role on page_role.Id_developer = developer.Id and page_role.Id_page = page.Id)
    left join page_privilege on page_privilege.Id_developer = developer.Id and page_privilege.Id_page = page.Id)
    left join website_privilege on website_privilege.Id_developer=developer.Id);

-- SELECT page_role.Id,website.name,website_role.role,page.title,page_role.role as pagerole from page_role inner join page on  page_role.Id_page = page.Id;