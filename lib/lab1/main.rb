load 'input.rb'
load 'convert.rb'

class Main
  def self.main
    value = Input.enter_value

    scale_one = Input.enter_scale('enter the scale (C or K or F):')
    scale_two = Input.enter_scale('enter the scale, you want to translate (C or K or F): ')

    result = Convertator.convertation(value, scale_one, scale_two)

    puts "result = '#{result}'"
  end
end

Main.main
