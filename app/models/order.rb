class Order < ApplicationRecord
  has_many :line_items
  belongs_to :customer, optional: true
  accepts_nested_attributes_for :line_items
  enum sales_channel: { Online: 0, CX: 1, Retail: 2 }

  after_validation :set_amount

  private
  def set_amount
    self.amount = line_items.map(&:product).map(&:cost).inject(:+)
  end

  def self.sales_channel_keys
    sales_channels.keys
  end
end
