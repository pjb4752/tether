require 'tether/types/any'

module Tether
  module Types
    class Boolean < Any

      def to_s
        value.to_s
      end

      def self.from_chars(chars)
        chars = chars.join
        if chars == 'true'
          self.new(true)
        elsif chars == 'false'
          self.new(false)
        else
          raise ArgumentError, "invalid boolean #{chars}"
        end
      end
    end
  end
end
