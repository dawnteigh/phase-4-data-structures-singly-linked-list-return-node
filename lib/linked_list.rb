require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if head && n != 0
      last_node = head
      length = 1
      until last_node.next_node.nil?
        last_node = last_node.next_node
        length += 1
      end
      
      if n > length
        return nil
      end

      last_node = head
      (length - n).times do
        last_node = last_node.next_node
      end

      last_node.value
    end

  end

end
