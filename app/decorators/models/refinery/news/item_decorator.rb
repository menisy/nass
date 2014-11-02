::Refinery::News::Item.class_eval do
  attr_accessible :image_id
  belongs_to :image
end
