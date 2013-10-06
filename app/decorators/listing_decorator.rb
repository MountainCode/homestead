class ListingDecorator < Draper::Decorator
  delegate_all

  def property
    PropertyDecorator.decorate object.property
  end
end
