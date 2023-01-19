require 'BaseDecorator'

class TrimmerDecorator < BaseDecorator
  def initialize(nameable)
    super
    @nameable = nameable
  end

  def correct_name
    super.capitalize
  end
end
