class Feedback < ApplicationRecord
belongs_to :ratable, polymorphic: true

  def as_json(options={})
    super(
      except: [:id, :created_at, :updated_at]
    )
  end





end
