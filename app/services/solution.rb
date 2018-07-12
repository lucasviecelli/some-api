class Solution 

  def self.build(value_input)
    value = remove_left_zeros(value_input)
    value_size = value.size
    size_end_zeros = remove_right_zeros(value).size    
    diff_zeros = calc_diff_zeros(value_size, size_end_zeros)    
    result = fatorial(value_size) - diff_zeros
  end

  private 

  def self.fatorial(n)
    n > 1 ? n * fatorial(n-1) : 1
  end
  
  def self.remove_left_zeros(n)
    n.to_i.to_s
  end
  
  def self.remove_right_zeros(n)
    n.gsub(/(.*)0/, '\1')
  end
  
  def self.calc_diff_zeros(value, without_zero)
    without_zero == value ? 0 : without_zero
  end
end