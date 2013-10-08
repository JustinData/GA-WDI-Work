require 'pg'

jellybeans = PG.connect( dbname: "sandbox" )

# Follies
# Sondheim
# 1971

title = gets.chomp
year = gets.chomp
composer = gets.chomp
comments = gets.chomp

**** Schema Example ****
year, composer, title are mandatory because they are NOT NULL
constraints. if our comments are optional (not NOT NULL), this creates a problem for the code
when we interpolate. if we want to interpolate within the VALUES('#(title)', '#{year}', '#{composer}');"
the amount of if/else branches you have to include expands with every optional.
so how do we fix that?


We must manage the order in which we enter our values. 
- the problem when we clutter our code with implementation details
that are unrelated to what our program is really about is it creates
a brittle design.
  - if we were to rename one of these columns and had insert_query strings
    throughout our database we would have to find and replace them.
    - ex. primary title and subtitle, we wanna make a feature change.
      the cost of that change is really high because our program is coupled
      with the implementation details of our data store.



query_str = "INSERT INTO musicals (title, year, composer) VALUES('Follies', '1971', 'Sondheim');"
# SQL commands should be in CAPSLOCK 

jellybeans.exec( query_str )

jellybeans.close

