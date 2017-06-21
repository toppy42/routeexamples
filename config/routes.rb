Rails.application.routes.draw do
  # HTTP Verb examples
  get 'example1', to: "example#example1"
  post 'example2', to: "example#example2"
  put 'example3', to: "example#example3"
  delete 'example4', to: 'example#example4'


  # Examples for routes, controllers
  # and how to execute ruby in a controller

  # Visit: localhost:3000/example1
  get 'example1', to: "example#example1"

  # Visit: localhost:3000/example2?number=100
  get 'example2', to: "example#example2"

  # Visit: localhost:3000/example2?number=100&number2=11
  get 'example3', to: "example#example3"

  # Visit: localhost:3000/example4
  get 'example4', to: 'example#example4'

  # More advanced ruby examples
  get 'rock_paper_scissors', controller: 'games', action: 'rock_paper_scissors'
  get 'state_search', controller: 'search', action: 'state_filter'


  # Exercises:
  #
  # Write something about yourself and return it to the browser

  # Random number generator

  # Print current time and date

  # Pick a random state from the given list



  # The following exercises require query params
  # eg. http://localhost:3000/my_url?param1=Hello&param2=World

  # Get the value of a query param and return it to the browser (See Example 2 above)

  # Add two numbers together (See Example 3 above)

  # Check if two query params are equal

  # Check if query param is in an array



  # Todo:
  # Select people by eye color (Hash)
  # Select people by eye color (Class)
  # Encode/decode cypher












  # Completed Exercises:
  #
  # Write something about yourself and return it to the browser
  get 'answers/my_info', controller: 'completed_exercises', action: 'my_info'

  # Random number generator
  get 'answers/random_number', controller: 'completed_exercises', action: 'random_number'

  # Print current time and date
  get 'answers/date_time', controller: 'completed_exercises', action: 'date_time'

  # Pick a random state from the given list
  get 'answers/random_state', controller: 'completed_exercises', action: 'random_state'



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

  # Todo:
  # Select people by eye color (Hash)
  # Select people by eye color (Class)
  # Encode/decode cypher

end
