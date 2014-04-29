class OsController < ApplicationController
  before_action :set_o, only: [:show, :edit, :update, :destroy]

  # GET /os
  def index
    @os = O.all
  end

  # GET /os/1
  def show
  end

  # GET /os/new
  def new
    @o = O.new
  end

  # GET /os/1/edit
  def edit
  end

  # POST /os
  def create
    @o = O.new(o_params)

    if @o.save
      redirect_to @o, notice: 'O was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /os/1
  def update
    if @o.update(o_params)
      redirect_to @o, notice: 'O was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /os/1
  def destroy
    @o.destroy
    redirect_to os_url, notice: 'O was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_o
      @o = O.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def o_params
      params.require(:o).permit(:produto)
    end
end
