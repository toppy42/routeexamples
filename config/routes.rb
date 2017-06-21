Rails.application.routes.draw do
  # HTTP Verb examples
  #
  # The word "Record" usually means an item in the database
  #
  # GET => Used to get information
  # POST => Used to create new records
  # PUT => Used to update existing records
  # DELETE => Used to delete records

  # All of these examples do the same thing, but
  # using different HTTP verbs

  # Only GET works from a browser URL
  get 'example1', to: "example#example1"
  # curl localhost:3000/example1

  put 'example1', to: "example#example1"
  # curl - X PUT localhost:3000/example1

  post 'example1', to: "example#example1"
  # curl - X POST localhost:3000/example1

  delete 'example1', to: "example#example1"
  # curl - X DELETE localhost:3000/example1

  # These examples use different HTTP verbs to route to different methods
  put 'example', to "example#example_put"
  # curl -X PUT localhost:3000/example

  post 'example', to "example#example_post"
  # curl -X POST localhost:3000/example


  # Examples for routes, controllers
  # and how to execute ruby in a controller

  # Example URL: localhost:3000/example1
  get 'example1', to: "example#example1"
  # curl localhost:3000/example1

  # Example URL: localhost:3000/example2?number=100
  get 'example2', to: "example#example2"
  # curl localhost:3000/example2


  # Example URL: localhost:3000/example3?number=100&number2=11
  get 'example3', to: "example#example3"
  # curl localhost:3000/example3

  # Example URL: localhost:3000/example3?number=100&number2=11
  get 'but-why', to: "example#proof_you_can_name_this_whatever_123_abc"
  # curl localhost:3000/but-why


  # More advanced ruby examples
  get 'rock_paper_scissors', controller: 'games', action: 'rock_paper_scissors'
  # curl localhost:3000/rock_paper_scissors?choice=rock
  # curl localhost:3000/rock_paper_scissors?choice=paper
  # curl localhost:3000/rock_paper_scissors?choice=scissors
  # curl localhost:3000/rock_paper_scissors?choice=spock
  # curl localhost:3000/rock_paper_scissors

  get 'state_search', controller: 'search', action: 'state_filter'
  # curl localhost:3000/state_search?search=new
  # curl localhost:3000/state_search?search=in
  # curl localhost:3000/state_search?search=o
  # curl localhost:3000/state_search



  # EXERCISES:
  #
  # INSTRUCTIONS:
  # For the following exercises, create a single controller called "ExercisesController"
  # Each of the exercises should be it's own action


  # 1. Write something about yourself and return it to the browser

  # 2. Random number generator

  # 3. Print current time and date

  # 4. Pick a random state from the given list

  # 5. Fizzbuzz:
  #  This is the infamous fizzbuzz problem
  #  All software devs should be comfortable solving this
  #  in an interview setting on a whiteboard
  #
  #
  #  The fizzbuzz problem has the following requirements:
  #
  #  When a number is a multiple of 3, print fizz
  #  When a number is a multiple of 5, print buzz
  #  When a number is a multiple of 3 and 5, print fizzbuzz
  #
  #  This code prints all numbers from 1 to 100, replacing the words
  #  that match the above rules



  # EXERCISES WITH PARAMS:
  # The following exercises require query params
  # eg. http://localhost:3000/my_url?param1=Hello&param2=World

  # 6. Get the value of a query param and return it to the browser (See Example 2 above)

  # 7. Add two numbers together (See Example 3 above)

  # 8. Check if two query params are equal

  # 9. Check if query param is in an array


  # Completed Exercises:
  #
  # Only look at these once you have attempted the exercises above
  #
  # Write something about yourself and return it to the browser
  get 'answers/my_info', controller: 'completed_exercises', action: 'my_info'
  # curl localhost:3000/answers/my_info

  # Random number generator
  get 'answers/random_number', controller: 'completed_exercises', action: 'random_number'
  # curl localhost:3000/answers/random_number

  # Print current time and date
  get 'answers/date_time', controller: 'completed_exercises', action: 'date_time'
  # curl localhost:3000/answers/date_time

  # Pick a random state from the given list
  get 'answers/random_state', controller: 'completed_exercises', action: 'random_state'
  # curl localhost:3000/answers/random_state



  # EXERCISES WITH PARAMS:
  # The following exercises require query params
  # eg. http://localhost:3000/my_url?param1=Hello&param2=World

  # Get the value of a query param and return it to the browser (See Example 2 above)

  # Add two numbers together (See Example 3 above)

  # Check if two query params are equal
  get 'answers/equal_params', controller: 'completed_exercises', action: 'equal_params'
  # curl 'localhost:3000/answers/equal_params?param1=1&param2=1'
  # curl 'localhost:3000/answers/equal_params?param1=1&param2=7'
  # curl 'localhost:3000/answers/equal_params?param1=donkey&param2=horse'

  # Check if query param is in an array
  get 'answers/present_in_array', controller: 'completed_exercises', action: 'present_in_array'
  # curl localhost:3000/answers/present_in_array?guess=123
  # curl localhost:3000/answers/present_in_array?guess=oh%20no%21
  # curl localhost:3000/answers/present_in_array?guess=nopes

  # Get the value from a hash
  get 'answers/hash_value', controller: 'completed_exercises', action: 'hash_value'
  # curl localhost:3000/answers/hash_value?hash_key=nopes
  # curl localhost:3000/answers/hash_value?hash_key=D0


  # Future Ideas:

  # Select people by eye color (Hash)
  # Select people by eye color (Class)
  # Encode/decode cypher
end
