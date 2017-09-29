class SolutionsController < ApplicationController

  def mad_lib_input

  end

  def mad_lib_output
    @adjective = params[:adjective]
    @noun = params[:noun]
    @animal = params[:animal]
    @noise = params[:noise]
  end

end