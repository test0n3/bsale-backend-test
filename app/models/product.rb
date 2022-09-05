class Product < ApplicationRecord
  belongs_to :category, class_name: 'Category', foreign_key: 'category'

  scope :ascending, -> { order(id: :asc) }
  scope :descending, -> { order(id: :desc) }

  # def category_name
  #   category.name
  # end
end
