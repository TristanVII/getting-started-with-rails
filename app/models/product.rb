class Product < ApplicationRecord
  validates :name, presence: true

  # basically wrapping class method
  def all
    puts "called all"
    Product.all
  end
end
