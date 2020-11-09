class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    greater_than_or_equal_to: 0
  }
  validate :validate_selection

  def validate_selection
    if self.mens_apparel.nil? && self.womens_apparel.nil?
      errors.add(:self, "Must carry women or mens clothes")
    end
  end

end
