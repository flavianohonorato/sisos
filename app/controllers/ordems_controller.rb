class OrdemsController < ApplicationController
  before_action :set_ordem, only: [:show, :edit, :update, :destroy]

  # GET /ordems
  def index
    @ordems = Ordem.all
  end

  # GET /ordems/1
  def show
  end

  # GET /ordems/new
  def new
    @ordem = Ordem.new
  end

  # GET /ordems/1/edit
  def edit
  end

  # POST /ordems
  def create
    @ordem = Ordem.new(ordem_params)

    if @ordem.save
      redirect_to @ordem, notice: 'Ordem was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ordems/1
  def update
    if @ordem.update(ordem_params)
      redirect_to @ordem, notice: 'Ordem was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ordems/1
  def destroy
    @ordem.destroy
    redirect_to ordems_url, notice: 'Ordem was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem
      @ordem = Ordem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ordem_params
      params.require(:ordem).permit(:description, :status, :os_id, :category_id)
    end
end
