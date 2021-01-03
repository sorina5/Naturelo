class CartController < ApplicationController
  
  before_action :authenticate_user!
  
  def add
        # get the id of the product
        id = params[:id]
        
        # if the cart exists use it, or if not make a new cart.
        
        if session[:cart] then
          cart = session[:cart]
        else
          session[:cart] = {}
          cart = session[:cart]
        end  
        
        # check if ite is there and if so increment the quantity by 1
        # if the product is not there then set the quantity to be 1
        
        if cart[id] then
          cart[id] = cart[id] + 1
        else
          cart[id] = 1
        end 
    
    redirect_to :action => :index
  end
  
  def clear
    session[:cart] = nil
    redirect_to :action => :index
  end
    
  
  def index
    # pass the cart to be displayed
    
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
    
  end
  
def createOrder
# @orderNo = Order.new(order_params) #find(params[:id])
  
 # Step 1: Get the current user
    @user = User.find(current_user.id)

 # Step 2: Create a new order and associate it with the current user
    @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
    @order.save

 # Step 3: For each product in the cart, create a new product on the order!!
    @cart = session[:cart] || {} # Get the content of the Cart
    @cart.each do | id, quantity |
    product = Product.find_by_id(id)
    # @orderprod = @order.orderprods.build(:product_id => product.id, :name => product.name, :description => product.description, :quantity => quantity, :price=> product.price)
    # @orderprod.save
    end
 
 @orders = Order.all
 @orderprods = Orderprod.where(order_id: Order.last)
 
 session[:cart] = nil # Hidden for development so I can refresh the page
 
end

 # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_date, :user_id, :status)
    end
  
end
