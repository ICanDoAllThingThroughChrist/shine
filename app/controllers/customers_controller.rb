







class CustomersController < ApplicationController
  PAGE_SIZE = 10

  def index
    @page = (params[:page] || 0).to_i

    # ...
    if params[:keywords].present?
      @keywords = params[:keywords]
      customer_search_term = CustomerSearchTerm.new(@keywords)
      @customers = Customer.where(
        customer_search_term.where_clause,
        customer_search_term.where_args).
        order(customer_search_term.order).
        offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
    else
      @customers = []
    end
  end
  def new
    @customer = Customer.new
  end

  def customer_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :cart_number1, :cart_number2, :cart_number3, address: [:street_address, :city, :state, :zip])
  end

end
