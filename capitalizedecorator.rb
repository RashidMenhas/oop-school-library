require 'BaseDecorator'

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    super
    @nameable = nameable
  end

  def correct_name
    super.capitalize
  end
end
