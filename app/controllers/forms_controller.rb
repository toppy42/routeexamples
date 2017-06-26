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
end
