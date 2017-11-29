require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  subject {
    described_class.new(
      delivery_order_id: 1,
      meal_id: 1,
      quantity: 5,
      unit_price: 100
    )
  }

  it "is valid with valid attribute" do
    expect(subject).to be_valid
  end

  it "Order Item must have a delivery order ID. Please specify association" do
    subject.delivery_order_id = nil
  expect(subject).to_not be_valid
  end
  it "Order Item must have a meal ID. Please specify association" do
    subject.meal_id = nil
    expect(subject).to_not be_valid
  end
  it "Quantity is empty" do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end
  it "Unit_price is empty" do
    subject.unit_price = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
  it { should belong_to(:meal) }
end

end
