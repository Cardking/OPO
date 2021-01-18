# frozen_string_literal: true

# Input
class Input
  def self.enter_value
    print('Enter the number: ')
    value = $stdin.gets.strip
    until value =~ /(^\d+\.?\d+$|^\d+$)/
      puts('wrong data')
      print('enter the number: ')
      value = gets.strip
    end
    value.to_f
    value
  end

  def self.enter_scale(message)
    print(message)
    scale_one = $stdin.gets.strip
    until scale_one =~ /^[CKF]$/
      puts('wrong data')
      print('enter the scale: ')
      scale_one = gets.strip
    end
    scale_one
  end
end
