







class CustomersController < ApplicationController
  PAGE_SIZE = 10
  def show
    @customer = Customer.find(params[:id])
  end
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
    binding.pry
  end
  def create
    # binding.pry
    @customer = Customer.new(customer_params)#https://guides.rubyonrails.org/getting_started.html#creating-articles

    if @customer.save
      redirect_to customer_path(@customer)
    else
      render 'new'
    end
  end
private
  def customer_params
    params.require(:customer).permit(:id,:first_name, :last_name, :email,  :phone, :cart_number1, :cart_number2, :cart_number3, :address_number, :address, :city, :state, :zipcode)
      # permitted =  params.require(:customer).permit(:first_name, :last_name, :email,  :phone, :cart_number1, :cart_number2, :cart_number3, :address_number, :address, :city, :state, :zipcode)

  end
end
