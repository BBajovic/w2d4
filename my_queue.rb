class MyQueue
  def initialize
    @store = []
  end

  def peek
    @store.first
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

  def enqueue(element)
    @store.push(element)
  end

  def dequeue
    @store.shift
  end
end
