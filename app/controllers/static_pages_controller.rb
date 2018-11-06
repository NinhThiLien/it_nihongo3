class StaticPagesController < ApplicationController
  def home
  	@books = Book.order("created_at DESC").paginate(page: params[:page], per_page: 9)
  end

  def help
  end
end
