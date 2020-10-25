class VeiculosController < ApplicationController
  def index
    @veiculos = Veiculo.all
    render json: @veiculos
  end

  def show
    @veiculo = Veiculo.find(params[:id])
    render json: @veiculo
  end

  def create
    @veiculo = Veiculo.create(veiculo_params)
    if @veiculo.save
      render json: @veiculo, status: :created
    end
  end

  def update
    @veiculo = Veiculo.find(params[:id])
    if @veiculo.update(veiculo_params)
      render json: @veiculo
    end
  end

  def destroy
    @veiculo = Veiculo.find(params[:id])
    @veiculo.destroy
    render json: @veiculo
  end

  private
    def veiculo_params
      params.permit(:marca, :veiculo, :ano, :descricao, :vendido)
    end
end
