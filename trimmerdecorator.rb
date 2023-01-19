require './basedecorator'

class TrimmerDecorator < BaseDecorator
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    super[0..9]
  end
end
