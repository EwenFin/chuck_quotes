class QuotesController < ApplicationController

  def quote_params
    params.require(:quotes).permit([:quote,:awesome])
  end

  def index
    quotes = Quote.all
    render json: quotes
  end

  def show
    quote = Quote.find(params[:id])
    render json: quote
  end

  def create
    quote = Quote.create(quote_params)
    render json: quote
  end

  def update
    quote = Quote.find(params[:id])
    if quote.update_attributes(quote_params)
      render json: quote
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    quote = Quote.find(params[:id])
    if quote.destroy!
      render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end


end