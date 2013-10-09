class ListingDecorator < Draper::Decorator
  delegate_all
  include ActionView::Helpers::NumberHelper

  def property
    PropertyDecorator.decorate object.property
  end

  def primary_photo
    object.primary_photo || (object.photos.length > 0 ? object.photos[0] : nil)
  end

  def has_primary_photo
    primary_photo != nil
  end

  def list_price
    number_to_currency(object.list_price, :precision => 0)
  end
end
