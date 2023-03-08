SELECT
    Name
FROM Genre;

SELECT
    ArtistName,
    YearEstablished
From Artist;
Select * from Artist
order by ArtistName;

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

select * from artist ar;
select * from Album al;
select * from Artist ar
    left join Album al on ar.id = al.ArtistId
    Where al.GenreId = 1;

select * from Artist ar
    left join Album al on ar.id = al.ArtistId
    Where al.GenreId = 2 or al.GenreId = 4;
       


select * From Album a;
select * from song s;

select * from album a
    left join song s on a.id = s.AlbumId
    where s.Title is null;

    

   insert into Artist (ArtistName, YearEstablished) 
   values ('elvis or something', 1901);

   insert into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) 
   values ('Big Stanky Donkeh', '04/20/1969', 80085, 'Warner Brother', 23, 4);
   delete from Album where id = 25;
   
   insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
   values ('Stahhhhppp', 400, '09/06/1334', 4, 29, 24);
   

   select song.Title, Album.Title, Artist.ArtistName
   from song
   left join album on song.AlbumId = Album.Id
   left join Artist on song.ArtistId = Artist.Id
   Where Song.Id = 26;

   select Count(song.title) as numOfSongs, Album.title
   from song left join album on song.albumId = album.Id
   group by Album.Title;

   select Count(song.title) as numOfSongs, Artist.ArtistName
   from song left join Artist on song.ArtistId = Artist.Id
   group by Artist.ArtistName;

   select Count(song.title) as numOfSongs, genre.Name
   from song left join Genre on song.GenreId = genre.Id
   group by Genre.Name;

 select ArtistName, Count(label) from (
    select Distinct ar.ArtistName, al.Label FROM artist ar
    Left Join album al on ar.ID = al.ArtistId
    ) ArtistLabels
    Group by ArtistName
    having count(label) > 1;





   
