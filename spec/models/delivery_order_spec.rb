require 'rails_helper'


RSpec.describe DeliveryOrder, :type => :model do
  subject {
    described_class.new(
      order_id: 'GO001',
      serving_datetime: '2017-11-27 22:16:00'
    )
   }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without an order_id" do
    subject.order_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a serving date & time" do
    subject.serving_datetime = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should have_many(:order_items) }
  end
end
