Rails.application.routes.draw do
  get 'example1', to: "example#example1"
  post 'example2', to: "example#example2"
  put 'example3', to: "example#example3"
  delete 'example4', to: 'example#example4'
end
