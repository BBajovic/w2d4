class MyStack
  def initialize
    @store = []
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

  def pop
    @store.pop
  end

  def push(element)
    @store.push(element)
  end

end
