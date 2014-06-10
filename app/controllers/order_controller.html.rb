class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.order("status DESC")
    respond_to do |format|
      format.html #index.html.erb
      format.xml { render :xml => @orders }
    end
  end


  def show
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html #show.html.erb
      format.xml { render :xml => @order }
    end
  end


  def new
    @order = Order.new
    @authors = Author.all
    @categories = Category.all
    respond_to do |format|
      format.html #new.html.erb
      format.xml { render :xml => @order }
    end
  end


  def edit
    @order = Order.find(params[:id])
    @authors = Author.all
    @categories = Category.all    
  end



  def create
    @order = Order.new(params[:orders])
    
    respond_to do |format|
      if @order.save(params[:order])
        format.html { redirect_to(@order, :notice => 'order was successfully updated.') }
        format.xml { render :xml => @order, :status => :created, :location => @order }
      else
        format.html { render :action => "edit" }
        format.json { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  def update
    @order = Order.find(params[:id])
    
    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to(@order, :notice => 'order was successfully updated.') }
        format.xml { render :xml => @order, :status => :created, :location => @order }
      else
        format.html { render :action => "edit" }
        format.json { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end


    def order_params
      params.require(:order).permit(:description, :status, :author_id, :category_id)
    end
end
