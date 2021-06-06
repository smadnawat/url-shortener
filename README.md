# README

Things you may want to cover:
* Rails version - Rails 5.2.6

* Ruby version - ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-darwin18]

* System dependencies - Run bunlde install

* Database Used - Postgresql

* Database - Rake db:create db:migrate

* Instructions and usage :

	Once all instructions have been done, you just need to start rails server by using command (rails s)

	After that on browser open - http://localhost:3000

	You will see a form where you need to enter the redirect url. After click on 'SHORTEN' button you will get a short url Example below :
		- Suppose you have a url - https://guides.rubyonrails.org/ now you want to short this, after enter and clickking on button you will get a url something like this - http://localhost:3000/7ej9k and you will have an option to copy that link.
		- Only url with http and https are allowed.
		- Blank url is not allowed.
		- If url get expired and is not exists in database 404 page not found will show.

	To access the stats, you have to enter this url
		- http://localhost:3000/stats
		- A basic authentication is required to access the page
			- username - admin
			- password - password
		- list of all craeted urls will show
		- pagination is used to break the large data
		- tracking details are also there in the list
		- to get the user country from ip Geocoder is used
