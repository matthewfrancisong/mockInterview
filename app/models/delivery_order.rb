class DeliveryOrder < ApplicationRecord
  validates_presence_of :order_id, :serving_datetime
  has_one :feedback, as: :ratable
  has_many :order_items

  def as_json(options={})
  super(
    methods: [:delivery_date, :delivery_time, :feedback_submitted, :orders ],
    only: [:order_id, :id]
  )
end
  def feedback_submitted
    if feedback
      return true
    else
      return false
    end
  end

def orders
  order_items = self.order_items.map do |item|
     {
      order_items_id: item.id,
      name: item.meal.name
    }
  end
end

def delivery_date
  serving_datetime.to_date
end


def delivery_time
  serving_datetime.strftime("%H:%M") + '-' + (serving_datetime + 60*30).strftime("%H:%M") + 'AM'
end


def order_details
    order_items = self.order_items.map do |item|
       {
        name: item.meal.name,
        quantity: item.quantity,
        total_price: item.quantity * item.unit_price
      }
    end
    return {
      order_id: order_id,
      delivery_date: delivery_date,
      delivery_time: delivery_time,
      order_items: order_items
    }
  end
end
