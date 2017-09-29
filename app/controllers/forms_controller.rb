class FormsController < ApplicationController
  def starter_form
    # Rails automagically renders the file: views/forms/starter_form.html.erb
    #
    # The explicit render would be:
    # render "forms/starter_form.html.erb"
  end

  def accept_submitted_params
    # Remember that this instance variable
    # is going to be available in the view
    @params = params
  end

  def starter_form_post
    # EXERCISE: Nothing to do here
    # rails automagically renders file: views/forms/starter_form_post.html.erb
  end

  def accept_submitted_params_post
    # Post params are accessible the same way as
    # URL query params, eg. params[:given_text]

    # EXERCISE: Pass the params via an instance variable
  end

  def example_input_types_form
    # EXERCISE: Nothing to do here
    # rails automagically renders file: views/forms/starter_form_post.html.erb
  end

  def accept_example_input_types_form
    # EXERCISE: this method contains byebug which causes
    # execution to stop so that you can play around and debug
    # Open up the terminal where you are running the server process to see what this looks like
    byebug
    render plain: params.inspect
  end
end
