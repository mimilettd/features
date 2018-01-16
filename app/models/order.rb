class Order < ApplicationRecord
  has_many :line_items
  belongs_to :customer
  accepts_nested_attributes_for :line_items

  after_validation :set_amount

  private
  def set_amount
    self.amount = line_items.map(&:product).map(&:cost).inject(:+)
  end
end
