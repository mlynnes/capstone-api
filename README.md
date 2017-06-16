# PwReminder API

-    [Deployed Front End](https://mlynnes.github.io/capstone-front-end)
-    [Deployed API](https://thawing-plateau-88644.herokuapp.com)
-    [Front End Repo](https://github.com/mlynnes/capstone-front-end)

## Routes
-    post '/sign-up' => 'users#signup'
-    post '/sign-in' => 'users#signin'
-    delete '/sign-out/:id' => 'users#signout'
-    patch '/change-password/:id' => 'users#changepw'
-    resources :users, only: [:index, :show]
-    resources :cards

## ERD
http://imgur.com/a/WTPMC

## Technologies Used
-    JavaScript
-    jQuery
-    AJAX
-    Handlebars
-    Bootstrap
-    HTML/CSS
-    Ruby on Rails

## General Approach
Created user stories, wireframes, and ERD. Studied documentation on encryption and Ruby on Rails. Went slowly through setting up heroku, browser template, and rails template. Created API in Rails and implemented encryption when the user saved one of their Cards, also added curl scripts to test and made it so that only the current user can see their own cards. Built front-end and added simple html forms to test CRUD actions. After that, I added bootstrap and handlebards to display the data and html in a more appealing way.

## Unsolved Problems
I figured out how to encrypt the password input data using Rails built in message encryptor, but did not have enough time to implement the decryptor method for the user, displaying a hidden password that they could copy and paste into the websites that they are using. Also, I would like to spend more time on the styling.

## Installation
-    bundle install
