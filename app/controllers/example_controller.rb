class ExampleController < ApplicationController
  def example1
    # Explicit Render:
    #
    # We can specify the specific file we want to render
    # and send back to the browser
    render '/example/explicit_render'
  end

  def example2
    # Implicit Render:
    #
    # Rails can guess the name based on the controller and action:
    #
    # This renders the file /example/example2.html.erb
    # It finds this file by looking at the controller name ("ExampleController")
    # and the action name ("example2")
    render
  end

  def example3
    # Passing Data to View
    #
    # When we want the view to render some data
    # we can pass the information using an instance variable
    #
    # Look at the file "views/example/example3.html.erb" to
    # see how this hash is used

    @vending_machine_hash = {
      'D0' => "Pop Tarts - Smores",
      'D2' => "Pop Tarts - Strawberry",
      'D4' => "Pop Tarts - Strawberry",
      'D6' => "Rice Crispy Treats",
      'D8' => "Reese's Pieces"
    }

    # We don't even need the render, rails will
    # automagically render the correct file
  end

  def rails_magic_example
    render plain: "MAGIC!!!"
  end
end
