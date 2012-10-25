# Triggering Events from a Client with Pusher

This simple example code illustrates how to push events from the client with [Pusher](http://pusher.com). 

In this demo you can open multiple browser windows to the site's index page. Typing in the text area in one window will update the text area in all other windows in real-time.

The demo is written with Sinatra (a Ruby framework). 

To run the demo locally 
* Clone the source to your computer
* Complete the settings within config.yml for a valid Pusher app
* Open a command prompt / terminal and change to the directory where the source code has been cloned to
* Run 
    ruby server.rb
* Open up two windows to the running site
* Type in the text area on one window to see the text kept in sync on the other window