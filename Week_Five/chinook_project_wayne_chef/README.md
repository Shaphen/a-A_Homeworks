# README
db source: https://github.com/lerocha/chinook-database
db diagram: https://www.sqlitetutorial.net/sqlite-sample-database/
________________________________________________________________________________
**DISCLAIMER: THIS IS NOT AN OFFICIAL PRACTICE ASSESSMENT BY APP ACADEMY**
________________________________________________________________________________

Wayne and Shaphen want to give you more opportunities to practice.
So here you go!

## Note: this practice is in a repository. Do not nest this into your git repo

## They highly recommend you start with:
 - bundle install
 - rails db:setup <!-- note: this may take a few minutes to install -->
 - bundle exec rspec

## a/A generally recommends you approach these problems in the order of:
 - completing belongs_to first
 - working on has_many next
 - finishing with throughs

Don't forget to utilize your schema in 'db/schema.rb'

________________________________________________________________________________
## TABLE DESCRIPTION: There are 11 tables in the chinook database.

 - employees table stores employees data such as employee id, last name, first 
 name, etc. It also has a field named ReportsTo to specify who reports to whom.

 - customers table stores customers data.

 - invoices & invoice_items tables: these two tables store invoice data. The 
 invoices table stores invoice header data and the invoice_items table stores 
 the invoice line items data.

 - artists table stores artists data. It is a simple table that contains only 
 the artist id and name.

 - albums table stores data about a list of tracks. Each album belongs to one 
 artist. However, one artist may have multiple albums.

 - media_types table stores media types such as MPEG audio and AAC audio files.

 - genres table stores music types such as rock, jazz, metal, etc.
 tracks table stores the data of songs. Each track belongs to one album.
 
 - playlists & playlist_track tables: playlists table store data about playlists. 
 Each playlist contains a list of tracks. Each track may belong to multiple 
 playlists. The relationship between the playlists table and tracks table is 
 many-to-many. The playlist_track table is used to reflect this relationship.
 ________________________________________________________________________________