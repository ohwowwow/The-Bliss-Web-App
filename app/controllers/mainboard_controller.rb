class MainboardController < ApplicationController
  def index
     @message = NewsMessage.new
  end

  def create
     @message = NewsMessage.create(params[:message])
    end


end
