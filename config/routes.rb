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
  # Random number generator
  # Print current time and date
  # Pick a random state from the given list

  # The following exercises require query params
  #
  # Select people by eye color (Hash)
  # Select people by eye color (Class)
  # Encode/decode cypher












  # Completed Exercises:
  #
  # Random number generator
  get 'answers/random_number_generator', controller: 'completed_exercises', action: 'random_number'

  # Print current time and date
  get 'answers/date_time', controller: 'completed_exercises', action: 'date_time'
  # Pick a random state from the given list

  # The following exercises require query params
  # Add two numbers together
  # Check if two query params are equal
  # Check if query param is in an array
  # Get the value of


  # Select people by eye color (Hash)
  # Select people by eye color (Class)
  # Encode/decode cypher

end
