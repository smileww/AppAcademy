class Stack
    attr_reader :array 
    def initialize
      # create ivar to store stack here!
      @array = []
    end

    def push(el)
      # adds an element to the stack
      array.push(el)
      el
    end

    def pop
      # removes one element from the stack
      array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      array.last
    end
end

class Queue

  attr_reader :queue_list

  def initialize
    @queue_list = []
  end

  def enqueue(el)
    queue_list.push(el)
    p queue_list
  end

  def dequeue
    queue_list.shift
    p queue_list
  end

  def peek
    queue_list.first
  end

end


class Map
  def initialize
    @underlying_array = []
  end

  def set(key, value)
    pair_index = underlying_array.index { |pair| pair[0] == key }
    if pair_index
      underlying_array[pair_index][1] = value
    else
      underlying_array.push([key, value])
    end
    value
  end

  def get(key)
    underlying_array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    underlying_array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(underlying_array)
  end

  private

  attr_reader :underlying_array
  
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end  
end


