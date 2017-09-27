class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    each_with_index.inject(0) do |i_hash, (el,i)|
      (el.hash + i.hash) ^ i_hash
    end
  end

  #def hash
    #final_hash = ''

    #final_hash = self.map(&:to_s).join("")

    #final_hash.hash

  #end
end

class String
  def hash
    chars.map(&:ord).hash

    #final_hash.to_i.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    to_a.sort_by(&:hash).hash

    #key_array = self.keys.map(&:to_s).sort
    #key_array.hash
  end
end
