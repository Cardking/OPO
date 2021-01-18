# frozen_string_literal: true

# Convert
class Convertator
  def self.convertation(value, scale_one, scale_two)
    return value if scale_one == scale_two

    case scale_one
    when 'C'
      result = convert_c(value, scale_two)
    when 'K'
      result = convert_k(value, scale_two)
    when 'F'
      result = convert_f(value, scale_two)
    end

    result
  end

  def self.convert_c(value, scale_two)
    case scale_two
    when 'K'
      value = value.to_f + 273.15
    when 'F'
      value = value.to_f * 1.8 + 32
    end

    value
  end

  def self.convert_k(value, scale_two)
    case scale_two
    when 'C'
      value = value.to_f - 273.15
    when 'F'
      value = value.to_f * 1.8 - 459.67
    end

    value
  end

  def self.convert_f(value, scale_two)
    case scale_two
    when 'C'
      value = (value.to_f - 32) / 1.8
    when 'K'
      value = (value.to_f + 459.67) / 1.8
    end
    value
  end
end
