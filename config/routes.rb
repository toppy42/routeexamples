Rails.application.routes.draw do


  # VIEW EXAMPLES

  # Rendered with explicit path name
  get 'example1', to: 'example#example1'

  # Rendered with rails magic
  get 'example2', to: 'example#example2'

  # Passing data to the view
  get 'example3', to: 'example#example3'




  # FORM EXAMPLES
  #
  # Forms can submit data like query params


  # Form that can submit data
  #
  get 'forms/starter_form', controller: 'forms', action: 'starter_form'

  get 'forms/accept_submitted_params', controller: 'forms', action: 'accept_submitted_params'











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
