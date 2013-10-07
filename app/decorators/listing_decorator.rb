class ListingDecorator < Draper::Decorator
  delegate_all

  def property
    PropertyDecorator.decorate object.property
  end

  def primary_photo
    object.primary_photo || (object.photos.length > 0 ? object.photos[0] : nil)
  end

  def has_primary_photo
    primary_photo != nil
  end
end
