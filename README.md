# README

## Set up 
* `git clone https://github.com/Sandbagger/Olio.git`
* cd into folder and run 
  * `bundle install`
  * `rails db:create`
  * `rails db:migrate`
  * `bin/dev`
* in a seperate terminal `bundle exec rspec` to run tests 

## Requirements 
* pull in external articals
* display articals on page load
* global like artical on page load

## If I had more time 
* Allow Artical to accept nested params for likes
* Consider adding like functionality in a polymorphic way, to make it easier to extend like functionality in future
* Display combined value for likes (external reaction likes from API + created likes )  
* I had trouble setting up Bootstrap icons. I would have like to spend some time debugging this so I could use the heart for like icon
* Use caching to reduce the number of requests
* More unit tests (the feature spec is doing a lot of the heavy lifting)  
* Styling on the Index page - 
  * Use <picture> with `srcset` and `sizes` instead of <img> to handle different size images
  * display user distance from Artical      

## To Do
* ~~scaffold Articals~~
  * ~~external_id~~
  * ~~likes_count~~
* ~~set root to Articals#index~~
* ~~styling for index page~~ 
  * ~~capabara test for content~~ 
* ~~service for fetching articals~~
  - ~~unit test with rspec~~
* ~~presenter~~
  * ~~find or create artical based on external_id~~
* ~~scaffold Like~~
  * ~~artical_id~~
  * ~~counter_cache: true~~ 
* ~~wire up like in presenter and view~~


