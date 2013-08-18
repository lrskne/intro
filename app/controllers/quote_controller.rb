class QuoteController < ApplicationController
  def random
    some_quotes = [

    "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.",
    "Health is the greatest gift, contentment the greatest wealth, faithfulness the best relationship.",
    "Always do sober what you said you'd do drunk. That will teach you to keep your mouth shut.",
    "You have enemies? Good. That means you've stood up for something, sometime in your life."
    ]

    @random = some_quotes.sample


  end
end
