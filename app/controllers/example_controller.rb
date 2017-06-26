class ExampleController < ApplicationController
  def example1
    render plain: "Example 1"
  end

  def example_put
    render plain: "You did a put"
  end

  def example_post
    render plain: "You did a post"
  end
end
