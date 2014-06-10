class ClientsController < ApplicationController
  def index
    @clients = Client.all
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
      flash[:notice] = 'Successfully created...'
      redirect_to @client
    else
      flash[:error] = 'Not created client'
      render :new
    end
  end

    def edit
      @client = Client.find(params[:id])
    end

    def update
      @client = Client.find(params[:id])

      if @client.update_attributes(params[:client])
        flash[:notice] = 'Updated with Success!'
        redirect_to @client
      else
        flash[:error] = 'Not updated client'
        render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])

    if client.destroy
      flash[:notice] = 'Deleted with Success!'
    else
      flash[:error] = 'Not deleted client'
    end

    redirect_to clients_path
  end
end