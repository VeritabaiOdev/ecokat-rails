class Cart < ActiveRecord::Base
  acts_as_shopping_cart_using :cart_item

  def shipping_cost
    7.99
  end

  def tax_pct
    18
  end
end
