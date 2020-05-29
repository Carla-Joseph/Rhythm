Create table "Album" ("Id" Serial Primary Key,
  "Title" Text, "IsExplicit" Text, "ReleaseDate" Timestamp); 

Create table "Band" ("Id" Serial Primary Key, 
 "Name" Text, "CountryOfOrigin" Text, "NumberOfMembers" Int, "Website" 
 text, "Style" text, "IsSigned" text, "ContactName" Text Not Null, "Con
 tactPhoneNumber" Int);  

Alter table "Album" Add Column "BandId" Int Null References "Band" ("Id");  

select * from "Album" 
 Join "Band" on "Album"."BandId" = "Band"."Id";  

Insert into "Band" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Style", "IsSigned", "ContactNam
 e","ContactPhoneNumber") 
 Values ('Daft Punk', 'France', 2, 'example.com', 'Tech', 'Yes', 'Guy Manuel', 2348764567); 

Select * from "Band"; 

Insert into "Album" ("Title", "IsExplicit", "ReleaseDate", "BandId") 
 Values ('All Directions', 'No', '1972-07-27 12:00:00', 2);  

Update "Band" set "IsSigned" = 'No' where "Style" = 'Tech'; 

Update "Band" set "IsSigned" = 'Yes' where "Style" = 'Tech';  

select "Title" FROM "Album" Order by "ReleaseDate";  

Select "Name" FROM "Band" where "IsSigned" = 'Yes'; 

Select "Name" FROM "Band" where "IsSigned" = 'No'; 