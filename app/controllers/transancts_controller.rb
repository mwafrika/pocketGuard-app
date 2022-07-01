class TransanctsController < ApplicationController
  before_action :authenticate_user!
  def index
    if Transanct.all.empty?
      'array is empty'
    else
      @transancts = current_user.categories.find(params[:category_id]).transancts
    end
  end

  def show
    @transancts = current_user.categories.find(params[:category_id]).transancts.find(params[:id])
  end

  def new
    @categories = current_user.categories
    @transancts = current_user.categories.find(params[:category_id]).transancts.new
  end

  def create
    @categories = current_user.categories
    @transancts = @categories.find(params[:category_id]).transancts.create(transancts_params)
    @transancts.save
    redirect_to user_category_path(current_user, params[:category_id])
  end

  private

  def transancts_params
    params.require(:transanct).permit(:amount, :name, :category_id)
  end
end
