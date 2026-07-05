# Example queries

# Testing inputted data.

SELECT * FROM Galleries;

SELECT * FROM Projects;


# This query counts the total amount of exhibitions shown at each venue. 

SELECT Gallery,
COUNT(Exhibitions.Id) AS TotalExhibitions
FROM Galleries
LEFT JOIN Exhibitions ON Galleries.Gallery = Exhibitions.MainVenue
GROUP BY Gallery
ORDER BY TotalExhibitions DESC;


# This query shows us what projects are linked to what gallery.
# By joining the tables in this way, we can see where we have a relationship with a gallery but have not done a project with them yet. 
# Ordering by Postcode adds a rough geographical element to the sorting, but has obvious limitations. 

SELECT  DISTINCT Title AS ProjectTitle, Gallery, Postcode
FROM Projects
RIGHT JOIN 
Galleries ON Projects.AssociatedOrganisation = Galleries.Gallery
ORDER BY 
Galleries.Postcode ASC;


# We want to look at more information on this theme, but in a different way. 
# This next query tells us how many ongoing projects we have with each gallery.

SELECT  Galleries.Gallery, Galleries.Postcode, 
COALESCE(SUM(Projects.Ongoing), 0) AS TotalOngoingProjects
FROM Projects
RIGHT JOIN Galleries ON Projects.AssociatedOrganisation = Galleries.Gallery
GROUP BY Gallery
ORDER BY TotalOngoingProjects DESC, Galleries.Gallery ASC;


# The next query tells us on average how many artworks we have exhibited at each venue when we have engaged with an exhibition there.

SELECT  Galleries.Gallery, COALESCE(AVG(Exhibitions.Artworks), 0) AS AverageArtworks
FROM Exhibitions
RIGHT JOIN Galleries ON Exhibitions.MainVenue = Galleries.Gallery
GROUP BY Galleries.Gallery
ORDER BY AverageArtworks DESC;


# This next query shows the galleries, the first year we established contact and the first year we exhibited.

SELECT Galleries.Gallery,
Galleries.FirstContactYear,
COALESCE(MIN(Exhibitions.Opening), 'N/A') AS EarliestExhibitionYear
FROM Exhibitions
RIGHT JOIN Galleries ON Exhibitions.MainVenue = Galleries.Gallery
GROUP BY Galleries.Gallery
ORDER BY FirstContactYear ASC;


DELIMITER //

CREATE FUNCTION GetTotalExhibitionsByGallery(galleryName VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalExhibitions INT;

    SELECT COUNT(*)
    INTO totalExhibitions
    FROM Exhibitions
    WHERE MainVenue = galleryName;

    RETURN totalExhibitions;
END //

DELIMITER ;

SELECT GetTotalExhibitionsByGallery('JerrysGallery') AS TotalExhibitions;

# While reviewing all this data, we spot the Cardboard project is included. 
# We don't want to count it, because it was a student project.
# So we write a query that will delete it. 

DELETE FROM Projects
WHERE Title = 'Cardboard';


# This query generates a list of the most reputable galleries we have a pre-existing relationship with.

SELECT Gallery, Crime
FROM Galleries
WHERE Crime > 3
ORDER BY Crime DESC;
