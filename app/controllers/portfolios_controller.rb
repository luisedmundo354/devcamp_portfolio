class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio.update(params.require(:portfolio).permit(:title,:subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
#This is copyed into the new.permit method
#  def blog_params
#    params.require(:blog).permit(:tittle, :body)
#  end
end
