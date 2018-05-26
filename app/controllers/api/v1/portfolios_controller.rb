class Api::V1::PortfoliosController < Api::V1::BaseController
  def index
    portfolios = Portfolio.includes(:technologies)
    render json: portfolios, each_serializer: Api::V1::PortfolioSerializer
  end
  def show
    portfolio = Portfolio.find(params[:id])

    render json: portfolio, serializer: Api::V1::PortfolioSerializer
  end
end