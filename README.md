<img width="655" height="284" alt="image" src="https://github.com/user-attachments/assets/32f32e3c-c395-4986-963e-7438abd12616" />


# ArtCareer
An SQL model to support artists keeping their career on track.

## Concept:

Most business data models available to support artists focus on statistics like sales and audience reach. Instead, this relational database focuses on other aspects that affect the artist's motivation and engagement. This is an early attempt to develop a model that looks at these deeper issues that cause problems over years, rather than a surface level "income minus expenditure equals this month's profit" calculation.

This model uses a combination of factual statistics about an environment (whether that's a gallery or exhibition), along with judgement calls about these environments that the user inputs into the database, using a spectrum of 0-5 as grades for certain criteria, like safety or networking opportunity.


## Who is this for?

This project focused on constructing the model, rather than creating a program. You will need basic SQL knowledge and software in order to use this.

The goal is to support artists nudging themselves in the correct direction, by spotting trends and understanding the bigger picture of the part of the economy they are in. 


## What am I looking at (for non-technical readers)

This is a relational database. You can see the code that builds the structure of the database in the schema file.

The database is split into multiple tables containing different sets of information. These are
1. galleries you have worked with
2. projects you’ve worked on
3. exhibitions you’ve been in

Data about these three areas frequently overlap. That is why a relational database is useful. You can input the data individually into each table, and then join it back together as required when you use the database. The data in the separate tables *relate* to each other.

A query is asking the database questions about the data it has. You can see some examples in ExampleQueries.

You can ask all sorts, but the basic examples I have provided are:

1. How many exhibitions have you done at a specific gallery.
2. Joining the data about projects and galleries.
3. How many ongoing projects at each gallery.
4. How many artworks you have exhibited at each venue.
5. Comparing first contact time with a venue vs first exhibition at that venue.
6. How many exhibitions at each gallery. This one is stored as a function, which works slightly differently to a query.
7. Deleting some data.
8. A list of venues where there is a lower amount of crime.

There is also some example data in ExampleData. 

If you want to orientate yourself, the recommended order to view the files in would be Schema, ExampleData, and then ExampleQueries. This is because first you need to design the structure of the database, then you need to input some data, then you can ask it some questions about that data.


## The model

A good chunk of this model is bare bones standard data. Dates, address, amount of artworks, and so on.

The unique part is where it asks for intuitive judgement calls. It asks to rank “media”, “networking”, “safety”, and “crime” on a scale of 1-5.

Earlier versions of this readme written in a different context went into detail exploring this. However, at time of full publication on GitHub, in the UK we are in the aftermath of the breaking news regarding Russell Brand and David Walliams. Lucy Beaumont and Sue Perkins have both spoken publicly about the wider dynamics and systems involved which result in harm in cases like these. 

The visual arts sector closely resembles performing arts in terms of structure and challenges. The complications of workplace rights caused by self employment and project based work, along with the difficult decisions that come with forging a career in a competitive sector, being key among the similarities. 

This model can help in two scenarios:

1. As an early warning you might be heading into difficult territory.
2. As a way to plot the path of least resistance out of that territory once you are in it.


## That sounds useful but I don’t have the skills required to run this myself

That’s fine, you have options:

The most important step is understanding and thinking about things differently. Sometimes that on its own is enough. If you cannot handle the technical side of this, you can make your own version in some way. Collecting the data even just into a spreadsheet or notebook might produce useful insights.

To run this yourself, you need:

1. To understand SQL. It is relatively simple, I recommend https://sqlbolt.com/ which is interactive lessons from your internet browser.
2. MySQL on your computer.
3. An environment to run MySQL in.


This is a project I would like to continue to work on in the future, by designing a front end so it is accessible to the people it is designed for. At the moment it is an analysis tool which would typically require someone in the middle to use and interpret. 
