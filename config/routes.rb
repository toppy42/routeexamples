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




end
