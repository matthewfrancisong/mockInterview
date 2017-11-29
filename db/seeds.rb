
Meal.destroy_all

10.times do
  new_meal = Meal.new
  new_meal.name = Faker::Food.dish
  new_meal.description = Faker::Food.ingredient
  new_meal.save
end

DeliveryOrder.destroy_all

5.times do |i|
  newDeliveryOrder = DeliveryOrder.new
  newDeliveryOrder.order_id = "GO"+(i+1).to_s.rjust(3,'0')
  newDeliveryOrder.serving_datetime = Time.now.strftime("%Y-%m-%d %H:%M")

  newDeliveryOrder.save

end

OrderItem.destroy_all

newDeliveryOrder_array = [1,2,3,4,5]

3.times do

  newDeliveryOrder_array.each do |delivery|

    orderItem = OrderItem.new
    orderItem.delivery_order_id = delivery
    orderItem.meal_id = rand(1..10)
    orderItem.quantity = rand(1..10)
    orderItem.unit_price = rand(2000)
    orderItem.save

  end
end

Feedback.destroy_all

orderId = [1,2,3,4,5]

1.times do
  orderId.each do |index|

  newFeedback = Feedback.new
  newFeedback.ratable_id = index
  newFeedback.ratable_type = 'OrderItem'
  newFeedback.comment = 'hello world'
  newFeedback.rating = 4
  newFeedback.save
  end
end
