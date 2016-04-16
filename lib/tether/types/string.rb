require 'tether/types/any'

module Tether
  module Types
    class String < Any

      def to_s
        '"%s"' % value
      end

      def self.from_chars(chars)
        self.new(chars.join)
      end
    end
  end
end
