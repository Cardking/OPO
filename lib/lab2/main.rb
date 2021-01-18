# frozen_string_literal: true

require_relative 'calculation'
require 'csv'

# Main
class Main
  def self.main
    number_oper = input_arg
    file = CSV.read('./file.csv', headers: true,
                                  converters: :numeric)
    array_of_string = file['Прирост населения']

    result = Calculation.new(array_of_string)
    put_result(number_oper, result)
  end

  def self.put_result(number_oper, result)
    case number_oper
    when 1
      puts "Maximum: #{result.search_max}"
    when 2
      puts "Minimum: #{result.search_min}"
    when 3
      puts "Meam: #{result.search_mean}"
    when 4
      puts "Сorrected sample variance: #{result.search_corrected_sample_variance}"
    end
  end

  def self.input_arg
    number_oper = 0

    puts "1 - Maximum \n2 - Minimum \n3 - Mean \n4 - Сorrected sample variance"

    loop do
      print 'Enter the arg:'
      number_oper = $stdin.gets.to_i
      break if number_oper >= 1 && number_oper <= 4
    end

    number_oper
  end
end

Main.main
