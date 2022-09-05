class ProductFilter
  include ActiveModel::Model
  attr_accessor :category, :terms, :ordering

  def initialize(attributes = {})
    super
    @category ||= []
  end

  def filter(products)
    if terms.present?
      terms.strip!
      name = Product.arel_table[:name]
      products = Product.where(name.matches("%#{terms}%"))
    end
    products = products.descending if @ordering == 'products.id_desc'
    products = products.ascending if @ordering == 'products.id_asc'
    products = products.where(category: @category.to_i) if @category.present?
    products
  end
end
