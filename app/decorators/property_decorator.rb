class PropertyDecorator < Draper::Decorator
  delegate_all

  def has_beds
    object.respond_to?(:beds) && object.beds > 0
  end

  def has_baths
    object.respond_to?(:beds) && object.baths > 0
  end

  def has_lot_size
    object.respond_to?(:lot_size) && object.lot_size > 0
  end
end
