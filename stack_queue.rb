require_relative 'my_stack'

class StackQueue

  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

  def enqueue(element)
    @in_stack.push(element)
  end

  def dequeue
    queuefy if @out_stack.empty?
    @out_stack.pop
  end


  private
  def queuefy
    until @in_stack.empty?
      @out_stack.push(@in_stack.pop)
    end
  end

end
