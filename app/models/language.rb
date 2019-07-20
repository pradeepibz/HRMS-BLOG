class Language < ApplicationRecord
  has_many :blogs
  scope :desc_order, -> {order('created_at DESC')}
end
