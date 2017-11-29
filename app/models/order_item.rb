class OrderItem < ApplicationRecord
    validates_presence_of :delivery_order_id, :meal_id, :quantity, :unit_price
    has_one :feedback, as: :ratable
    belongs_to :meal
end
