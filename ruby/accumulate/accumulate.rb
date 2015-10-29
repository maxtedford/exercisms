class Array
  def accumulate(&block)
    if self.length > 0
      result = []
      index = 0
      while index < self.length
        result << block.call(self[index])
        index += 1
      end
      result
    else
      self
    end
  end
end
