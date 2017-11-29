require 'rails_helper'

RSpec.describe Meal, type: :model do
  subject {
    described_class.new(
      name: "Sausage Baby",
      description: "cillum ipsum labore elit dolore"
    )
  }

  it "is valid with the valid attributes" do
    expect(subject).to be_valid
  end

  it 'Meal name is Empty. Please specify meal name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Meal descripton cannot be empty' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should have_many(:order_items) }
  end

end
