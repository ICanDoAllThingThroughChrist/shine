module Warranty
  # attr :warranty
  def warrantAlist
    @warrantyA = Array(1...440383)
  end
  def warrantBlist
    @warrantyB = Array(320458...383845)
  end
end
class Warranty_Search < ApplicationRecord
  include Warranty
  def search(cart_number)
    case cart_number
      when @warrantyA.warrantAlist.include?(cart_number) == true
            @cart = Cart.new(carts_params)
      when @warrantyA.warrantBlist.include?(cart_number) == true
            @cart = Cart.new(carts_params)
      when @warrantyA.warrantAlist.include?(cart_number) == false
           render error_path
      when @warrantyA.warrantBlist.include?(cart_number) == false
          render error_path
    end
  end
end
