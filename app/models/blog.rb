class Blog < ApplicationRecord
  belongs_to :language
  scope :desc_order, -> {order('created_at DESC')}
end
