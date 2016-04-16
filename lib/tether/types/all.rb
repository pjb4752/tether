module Tether
  module Types

    NAMES = %w[function keyword list map number string symbol vector]

    NAMES.each do |type|
      require "tether/types/#{type}"
    end
  end
end
