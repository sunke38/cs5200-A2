set @Id = (SELECT id FROM phone where phone.Id_Person = (SELECT id FROM person where person.username = 'charlie') and phone.primary_Phone = true);
UPDATE phone SET phone = '333-444-5555' WHERE  Id = @Id;
