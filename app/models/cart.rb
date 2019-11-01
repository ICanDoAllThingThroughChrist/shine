module Warranty
  attr :warranty
  def warrantAlist
    @warrantyA = Array(1...440383)
  end
  def warrantBlist
    @warrantyB = Array(320458...383845)
  end
end
class Cart
  belongs_to :customer
  include Warranty
end
