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
    render html: response.join("\n")
  end
end
