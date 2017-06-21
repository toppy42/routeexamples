class SearchController < ApplicationController
  STATES = [
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinois',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Montana',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'New York',
    'North Carolina',
    'North Dakota',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvania',
    'Rhode Island',
    'South Carolina',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washington',
    'West Virginia',
    'Wisconsin',
    'Wyoming'
  ]

  # This method will return all states that contain
  # the given string
  def state_filter
    search_query = params[:search].downcase!

    if search_query
      selected_states = STATES.select do |state|
        state.downcase.include?(search_query.downcase)
      end

      output = [
        "Your search of #{search_query} found these results"
      ] + selected_states

      output += help_message

    else
      output = help_message
    end

    render plain: output.join("\n")
  end

  def help_message
    [
      "\nPlease search for a state:",
      "Use URL query params to input your choice:",
      "\nExample:",
      "http://localhost:3000/state_search?search=ma",
      "\n\n",
      "Available States:"
    ] + STATES
  end

end



