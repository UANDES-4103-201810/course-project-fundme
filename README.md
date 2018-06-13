# README
Grupo 14

Francisco Moreira

Alvaro Majluf

There are two users created

user1= admin@user.com
Password1 = admin1234

user1 = user@user.com
password2 = user1234

* Ruby version "5.1.6"

* System dependencies

* Configuration
	bundle install
* Database creation
	run "rails db:migrate"
* Database initialization
	run "rails db:seed"

* How to run the test suite
	rails s
* Services (job queues, cache servers, search engines, etc.)

We manage to do 
1. System Access

    * Facebook login integrated
2. Feedback
    * Flash mesagges for actions feedback
3. Funding 
    * Email confirmation(bug in confirmation from the email)
4. Searching
    * Category filter
    * Search for Title and Descriptions
5. Authorization
    * CanCanCan gem implemented(routes manage for example /categories if you aren t a admin)
6. User Profile
    * NOT IMPLEMENTED

