require "./node"
require "./element"

module Layout
  module Dom
    class ListBox < Element
      property attributes : Hash(String, String)

      def initialize(@attributes, @children)
        @kind = "ListBox"
        substitution()
      end

      def to_html : String
        attrs = attributes.map do |key, value|
          "#{key}='#{value}'"
        end

        children_html = children.map(&.to_html.as(String)).join("")
        "<#{kind} #{attrs.join(' ')}>#{children_html}</#{kind}>"
      end
    end
  end
end
