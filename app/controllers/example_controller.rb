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

  def example_put
    render plain: "You did a put"
  end

  def example_post
    render plain: "You did a post"
  end

  def proof_you_can_name_this_whatever_123_abc
    render plain: "You should not give methods random names. But you can"
  end
end
