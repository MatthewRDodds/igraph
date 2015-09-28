class IGraph
  class Graph
    include Enumerable
    attr_accessor :points

    def initialize
      @points = []
    end

    alias :<< :push
  end
end
