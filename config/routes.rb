Rails.application.routes.draw do


  # VIEW EXAMPLES

  # Rendered with explicit path name
  get 'example1', to: 'example#example1'

  # Rendered with rails magic
  get 'example2', to: 'example#example2'

  # Passing data to the view
  get 'example3', to: 'example#example3'

  # Using images from the asset pipeline
  get 'image-example', to: 'example#image_example'

  get 'background-image-example', to: 'example#background_image_example'



  # FORM EXAMPLES
  #
  # Forms can submit data like query params


  # Form that can submit data via a GET request
  #
  get 'forms/starter_form', controller: 'forms', action: 'starter_form'

  get 'forms/accept_submitted_params', controller: 'forms', action: 'accept_submitted_params'


  # Exercise: Form that can submit data via a POST request
  #
  # Follow the path from this route, to the form to the next route
  # at each step, there will be a note about what to do
  get 'forms/starter_form_post', controller: 'forms', action: 'starter_form_post'

  # Change this to be a "post" request
  get 'forms/accept_submitted_params_post', controller: 'forms', action: 'accept_submitted_params_post'

  get 'forms/example_input_types_form', controller: 'forms', action: 'example_input_types_form'

  get 'forms/accept_example_input_types_form', controller: 'forms', action: 'accept_example_input_types_form'


  # More rails magic
  #
  # Rails can guess the name of this route by the url
  #
  # The "example/" part tells rails that we want
  # the "ExampleController"
  #
  # The "rails_magic_example" tells rails that we want
  # the action "rails_magic_example"
  get 'example/rails_magic_example'



  # Exercises
  # Try to style all of your excercises with css
  #
  # 1. Build a mad lib. This should conist of two views/routes.
  # The first will be a form asking for adjectives, nouns, verbes etc.
  # The second should reveal what you wrote.
  # Checkout http://www.madtakes.com/ for examples.
  # This one http://www.madtakes.com/libs/185.html should be particularly easy to replicate

  get 'solutions/madlib', to: 'solutions#mad_lib_input'

  post 'solutions/madlib', to: 'solutions#mad_lib_output'



  # 2. Build a page that lets you choose a date range (i.e. JAN 1 1901 - DEC 31 2000)
  # Calculate how many sundays occured on the first of the month, how many wednesdays occured
  # on the 15th of the month, and how many fridays occured on the 13th of the month and display
  # the results of the calculation on a second page

  
  
  # 3. Build a tic tac toe game. Please note that this is hard

  get 'solutions/tic-tac-toe', to: 'solutions#tic_tac_toe'

  put 'solutions/tic-tac-toe', to: 'solutions#tic_tac_toe'

end
