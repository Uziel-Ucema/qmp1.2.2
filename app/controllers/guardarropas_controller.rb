class GuardarropasController < ApplicationController

  before_action :set_guardarropa, only: [:show, :update, :edit, :destroy]

  def index
     @guardarropas= Guardarropa.all
  end

  def show
    @guardarropa = Guardarropa.find(params[:id])

  end

  def create
    @guardarropa=Guardarropa.create(guardarropa_params) # nota: prenda_params NO viene con el controller,
    redirect_to action: :index

  end

  def new
    @guardarropa = Guardarropa.new

  end

  def edit
    @guardarropa = Guardarropa.find(params[:id])
  end

  def update
    @guardarropa = Guardarropa.find(params[:id])
    @guardarropa.update! guardarropa_params
    redirect_to @guardarropa
  end

  def destroy
    @guardarropa = Guardarropa.find(params[:id])
    Guardarropa.destroy(params[:id])
    redirect_to action: :index

  end

  private

  def set_guardarropa
    @guardarropa = Guardarropa.find(params[:id])

  end

  def guardarropa_params
    params.require(:guardarropa).permit(:guardarropa_id, :nombre)

  end
end
