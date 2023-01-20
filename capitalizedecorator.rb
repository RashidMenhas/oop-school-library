require './basedecorator'
require './person'

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    super.capitalize
  end
end
