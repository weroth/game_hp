class ProductsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :edit, :update, :destroy]
  
  def index
    add_breadcrumb ("Products"), :products_path
    
    @products = Product.all
    #@categories = Category.find(:all, :order => 'title') 
  end

  def create
    @product = current_user.products.build(params[:product])
    if @product.save
      flash[:success] = "Product created!"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def new
    add_breadcrumb ("Create new product"), ''
    @product = current_user.products.build if signed_in?
  end

  def edit
    @product = Product.find(params[:id])
    add_breadcrumb 'Edit product', ''
  end
  
  def destroy
    
  end
  
  def show
    add_breadcrumb 'Product Details', ''
    @product = Product.find(params[:id])
  end
  
  def update
     @product = Product.find(params[:id])
    
    if @product.update_attributes(params[:product])
      flash[:success] = "Product updated"
      #sign_in @user
      redirect_to @product
    else
      render 'edit'
    end
  end
end
