# This is some example data used to test the model.

# Here are some pretend galleries and spaces.

INSERT INTO Galleries(Gallery, Postcode, FirstContactYear, Exhibitions, Artworks, Media, Networking, Safety, Crime)
VALUES 
('JerrysGallery', 'B121AA', 2011, 3, 9, 1, 0, 0, 1),
('The Art Space', 'B135TG', 2009, 2, 20, 3, 2, 4, 5),
('Corner Gallery', 'B128PY', 2013, 2, 2, 1, 1, 5, 5),
('Old Building Crafts', 'B114KT', 2013, 2, 3, 2, 2, 4, 5),
('Streetside', 'B61RY', 2012, 2, 3, 4, 4, 4, 4),
('Canal Art Market', 'B123JU', 2014, 1, 6, 2, 3, 5, 5),
('Posh Fine Art', 'B121AA', 2014, 12, 50, 2, 0, 0, 0),
('Public Art Space', 'B122RD', 2013, 1, 1, 2, 0, 5, 5);


# Here are some pretend exhibitions.

INSERT INTO Exhibitions(Title, Opening, MainVenue, Artists, Artworks, Media, Network, Safety, Crime, OtherVenues)
VALUES
('Downside', 2011, 'JerrysGallery', 12, 2, 3, 0, 1, 4, 0),
('Yearly Open', 2009, 'The Art Space', 15, 3, 0, 1, 1, 1, 0),
('Yearly Open', 2010, 'The Art Space', 15, 3, 0, 2, 1, 3, 0),
('Yearly Open', 2011, 'The Art Space', 15, 3, 0, 3, 1, 2, 0),
('Stronger', 2014, 'Posh Fine Art', 3, 1, 4, 4, 4, 5, 0),
('Basket Weaving', 2013, 'Public Art Space', 20, 1, 2, 2, 5, 5, 0),
('Canals', 2014, 'Canal Art Market', 20, 1, 1, 1, 4, 5, 0),
('In Tents', 2012, 'Streetside', 3, 9, 3, 2, 4, 5, 1)
;


# And here are some pretend projects.

INSERT INTO Projects(Title, StartYear, AssociatedOrganisation, Ongoing)
VALUES
('Funding Consultation', 2013, 'Corner Gallery', 0),
('Family Art Workshops', 2013, 'Old Building Crafts', 0),
('Cardboard', 2015, 'JerrysGallery', 0),
('Craft Demonstrations', 2015, 'Canal Art Market', 1),
('Moving Artists', 2014, 'Corner Gallery', 0),
('Paint Making', 2015, 'Posh Fine Art', 0),
('AI Commentary', 2014, 'Streetside', 0),
('Storage', 2014, 'JerrysGallery', 0)
;
