Week 9 @ Makers Academy: Instagram Clone (InstaBAAM!)
=====================================================

Hosted on heroku @ http://salty-brook-7264.herokuapp.com/

Ruby Version
------------

Ruby 2.1.2

Technologies used:
------------------
- Ruby on Rails
- Javascript
- jQuery & jQuery UI
- RSpec & Capybara for testing ruby components
- Poltergeist/Phantom JS for testing JavaScript components
- Pusher for user notifications
- Stripe for payments
- Bootstrap for styling & modals
- GMaps API for mapping functionality
- Postgres DB

Functionality:
--------------
- Homepage displays a list of posts
- Each post has a title, attached image, tags and location
- Users can sign up to the site to post their own images
- Clicking on a post image will take the user through to the full size image
- Clicking on a post location will take a user through to a location map
- Clicking on a post tag will display only posts that share the tag on the page
- Clicking on the new post button will pop up a modal for users to add posts. Clicking on the mini map will autopopulate the location field. The minimap geolocates the user automatically, but can be recentred to a different location
- When a new post is added all users will be notified and a thumbnail of the content displayed at the top of the page
- Clicking on the thumbnails will take the user to a refreshed homepage with the new content
- Users can click the shopping cart icon to purchase an image. Payments are processed through stripe
- All models are fully validated

TO DO
------

- Add purchases model
- purchases post_id 
- user has many purchases
- purchase belong_to user
- Add post.has_been_purchased_by?(user)
- if yes can see full size image
- if no get message explaining they need to purchase

Notes:
------
- Phantom JS does not support geolocation functionality, thus the pop up modal map that uses geolocation is not tested

Running the application:
------------------------
- bin/rails server in CLI will open the app on port 3000
- rspec in CLI from the root directory will run the test suite
- bin/rake db:seed will seed the database with sample entries to demonstrate functionality

