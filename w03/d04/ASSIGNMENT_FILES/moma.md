# MOMA App

This app will have 2 models: Artists and Paintings. An Artist has many paintings, and a Painting belongs to an Artist.

An Artist has
* name
* nationality
* date of birth

A Painting has
* title
* year
* image_url

###First!
Create a directory called `moma_app` to hold all of your files.

###Part 1 - Database Schemas

Create a new database called `moma_db`. Create the database table schemas to model Artists, Paintings, and their relationships. Save these to a file called `moma.sql`

###Part 2 - Setting up ActiveRecord

Create a Ruby program (like we did with clown cars) that creates an ActiveRecord interface for interacting with the artists & paintings. Save this to a file called `moma.rb`

Populate your database (using ActiveRecord) with at least 3 Artists and 2 Paintings per artist (associated correctly!), including Vincent Van Gogh and Pablo Picasso.

###Part 3 - ActiveRecord Practice

Write the commands that you would enter in pry to do the following:
Save the pry commands to a file called `ar_commands.txt`

* Create a new Artist (Vincent Van Gogh) and save him to your database
* Create a new Painting (Starry Night) and save it to your database

* Return all Artists
* Return all Paintings

* Return the artist with an id of 2
* Return the artist with a name of "Vincent Van Gogh"
* Return all the artists from "Spain"

* Return the painting with an id of 1
* Return the painting with a name of "Guernica"
* Return the image url for the painting with title "Starry Night"

* Return all the paintings that "Pablo Picasso" painted
* Return the image urls for all the paintings that "Pablo Picasso" painted in an array
* Return the artist of "Guernica"

* Change Vincent Van Gogh's nationality to USA
* Change "Starry Night" to be one of Pablo Picasso's paintings

### Bonus

* SINATRA APPPPPPP!!!