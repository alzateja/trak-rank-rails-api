# Full Stack Project Practice

You will be presenting this early next week.  Please have a breif presentation
planned.  Presentations should be between 5 - 10 minutes long.

You may use GitHub, PowerPoint, Keynote, or any other tools you desire to
complete any part of this.

## Project Idea

What is your project idea?  How did you come up with it? Why? Who would use it?

I have a project idea is an app that works similar to the wine app Delectable.  It allows for users to
have a catalog of albums and allow them to rate songs and add comments to albums. My baseline data
will based on Rolling Stones 500 Greatest albums of all time.

## Write between 3-5 user stories

* As a user, I want an intuitive application that is easy to navigate
* As a user, I want a system where I can easily update rating information on albums
* As a develope, I want to design a flexible system and framework that can be leverage and our
used outside of the initial use case


We have gone over this before. Please refer to your notes, previous repos or the
google machine if you need further assistance.

## Plan your tables and columns

What tables will you need? What will the columns on the table be?

Album {
Tracks: [track1:, track2]  ,
Artist: ,
Year: ,
Rating (user defined): ,
Rating (calculated): ,
Comments: ,
Album_ID: ,
Genre:
}


Track {
title: ,
length: ,
rating: ,
comments:
}

User {
Email:
Password: ,
Name:
}

## Create an ERD (entity relationship diagram)

These are the diagrams that show how your tables are related to one another.
(one to many, many to many, ect).

Inital ERD
See ERD_diagram.png


## Routing

What routes will you need to be able to make the proper request to your API?

3 routes :
1) user-auth
2) Albums
3) Tracks

## 3rd Party APIs

Do you plan to use any, if so what are they?

Maybe a machine learning API to recommend albums based on the genre and artist that you like.  I may use the Spotify Web API.  This is an extremely strech goal.

## Wireframes

Please create a wireframe of your planned front end.

Sign-In
See Sign_In.png


Album info
See Album_screen.png


## Timetable

Write a basic timetable for yourself, you don't have to stick to it but it
helps to go in with a plan.

* April 24 - Plan out my code
* April 26 - Design API and Basic Front End
* April 28 - AJAX functionality
* May 1 - Javascript finalized
* May 2 - HTML and CSS finalized. Testing
* May 3 - Tentative Presentation
