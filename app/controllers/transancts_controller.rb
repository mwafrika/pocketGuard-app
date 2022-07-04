class TransanctsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transact, only: %i[show edit update destroy]
  
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
    # @categories = current_user.categories
    # @transancts = current_user.categories.find(params[:category_id]).transancts.new
    @categories = current_user.categories 
    @category = Category.find(params[:category_id])
    @transanct = Transanct.new
  end

  def create
    # @transancts = @categories.find(params[:category_id]).transancts.create(transancts_params)
    @transanct = Transanct.new(transancts_params)
    @transanct.user = current_user
    @category = Category.find(params[:category_id])
    @category.transancts << @transanct
   
    if @transanct.save
       redirect_to user_category_path(current_user, params[:category_id])
    else
      flash[:alert] = 'All fields are required'
      redirect_to new_user_category_transanct_path(current_user, params[:category_id])
    end
  end

  def destroy
    @transac = current_user.categories.find(params[:category_id]).transancts.find(params[:transac_id])
    @transac.destroy
    redirect_to category_transancts_path(@transac.category_id)
  end

  private

  def set_transact
    @transanct = Transanct.find(params[:id])
  end

  def transancts_params
    params.require(:transanct).permit(:amount, :name,:category_id)
  end
end
