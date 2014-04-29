class ClientsController < ApplicationController
  def index
  	@clients = Client.all
  	respond_to do |format|
  	  format.html
  	end
  end

  def show
  	@client = Client.find(params[:id])
  end

  def new
  	@client = Client.new
  end

  def create
  	@client = Client.new(params[:client])

  	if @client.save
  	  flash[:notice] = 'Created with success!'
  	  redirect_to @client
  	else
  	  flash[:error] = 'Not save, Try Again'
  	  render :new
  	end
  end

  def edit
  	@client = Client.find(params[:id])
  end

  def destroy
  	@client = Client.find(params[:id])
  	  
  	if client.destroy
   	  flash[:notice] = 'Created with success!'
      redirect_to @client
  	else
  	  flash[:error] = 'Not save, Try Again'
  	  render :new
  	end
  end

  def update
  	@client = Client.find(params[:id])

  	if @client.update_attributes(params[:client])
  	  flash[:notice] = 'Deleted with success!'
  	  redirect_to clients_path
  	else
  	  flash[:error] = 'Not Deleted, Try Again'
  	end
  	redirect_to clients_path
  end
end