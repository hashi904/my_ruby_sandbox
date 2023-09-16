class Array
  # use block 
  def map_monkey_patch(&block)
    new_array = []

    if block_given?
      self.each do |v|
        new_v = block.call(v)
        new_array << new_v
      end
      return new_array
    else
      self
    end
  end

  # use yield
  def map_monkey_patch_v2
    new_array = []

    if block_given?
      self.each do |v|
        new_v = yield(v)
        new_array << new_v
      end
      return new_array
    else
      self
    end
  end
end
