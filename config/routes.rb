Rails.application.routes.draw do


  # HTTP VERB EXAMPLES
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
  put 'example', to: "example#example_put"
  # curl -X PUT localhost:3000/example

  post 'example', to: "example#example_post"
  # curl -X POST localhost:3000/example






  # EXAMPLES FOR ROUTES AND CONTROLLERS
  # and how to execute ruby in a controller

  # Example URL: localhost:3000/example1
  get 'example1', to: "example#example1"

  # Example URL: localhost:3000/example2?number=100
  get 'example2', to: "example#example2"


  # Example URL: localhost:3000/example3?number=100&number2=11
  get 'example3', to: "example#example3"

  # Example URL: localhost:3000/but-why
  get 'but-why', to: "example#proof_you_can_name_this_whatever_123_abc"


  # More advanced ruby examples
  # These use the alternative syntax to specify controller and action
  get 'rock_paper_scissors', controller: 'games', action: 'rock_paper_scissors'
  get 'state_search', controller: 'search', action: 'state_filter'







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





  # COMPLETED EXERCISES:
  #
  # Only look at these once you have attempted the exercises above
  #
  # Write something about yourself and return it to the browser
  get 'answers/my_info', controller: 'completed_exercises', action: 'my_info'

  # Random number generator
  get 'answers/random_number', controller: 'completed_exercises', action: 'random_number'

  # Print current time and date
  get 'answers/date_time', controller: 'completed_exercises', action: 'date_time'

  # Pick a random state from the given list
  get 'answers/random_state', controller: 'completed_exercises', action: 'random_state'




  # EXERCISES WITH PARAMS:
  # The following exercises require query params
  # eg. http://localhost:3000/my_url?param1=Hello&param2=World

  # Get the value of a query param and return it to the browser (See Example 2 above)

  # Add two numbers together (See Example 3 above)

  # Check if two query params are equal
  get 'answers/equal_params', controller: 'completed_exercises', action: 'equal_params'

  # Check if query param is in an array
  get 'answers/present_in_array', controller: 'completed_exercises', action: 'present_in_array'

  # Get the value from a hash
  get 'answers/hash_value', controller: 'completed_exercises', action: 'hash_value'



  # Future Ideas:

  # Select people by eye color (Hash)
  # Select people by eye color (Class)
  # Encode/decode cypher
end
