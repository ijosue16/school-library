require_relative 'nameable'
class Decorator
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    if @nameable.correct_name.length >= 10
      @nameable.correct_name.slice(0, 10)
    else
      @nameable.correct_name
    end
  end
end
