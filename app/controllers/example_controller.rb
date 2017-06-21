class ExampleController < ApplicationController
  def example1
    render plain:  2+2
  end

  def example2
    render plain: params[:number]
  end

  def example3
    render plain: params[:number].to_i + params[:number2].to_i
  end
end
