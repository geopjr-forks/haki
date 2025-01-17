require "./node"

module Haki
  module Dom
    class Text < Node
      include JSON::Serializable
      property data : String = ""

      def initialize(data : String)
        @kind = "Text"
        @children = [] of Node

        matches = data.scan(/\${(.*?)}/)

        case matches.size
        when 0
          @data = data
        else
          matches.each do |match|
            hash = match.to_h

            begin
              @data = data.gsub(hash[0].not_nil!, Duktape::Engine.instance.eval!("__std__value_of__(#{hash[1].not_nil!})").to_s)
            rescue ex : Exception
              @data = data
              puts "An exception occured while evaluating a variable format routine: #{ex}"
            end
          end
        end
      end

      def to_html : String
        data
      end
    end
  end
end
