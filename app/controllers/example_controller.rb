class ExampleController < ApplicationController
  def example1
    render html:  2+2
  end

  def example2
    render html: params[:number]
  end

  def example3
    render html: params[:number].to_i + params[:number2].to_i
  end

  def example4
    # This is the infamous fizzbuzz problem
    # All new software devs should be comfortable solving this
    # in an interview setting on a whiteboard
    #
    #
    #  The fizzbuzz problem has the following requirements:
    #
    #  When a number is a multiple of 3, print fizz
    #  When a number is a multiple of 5, print buzz
    #  When a number is a multiple of 3 and 5, print fizzbuzz


    response = []
    for x in 1..100 do
      if x % 15 == 0
        response << "fizzbuzz"
      elsif x % 5 == 0
        response << "buzz"
      elsif x % 3 == 0
        response << "fizz"
      else
        response << x.to_s
      end
    end

    render plain: response.join("\n")
  end
end
