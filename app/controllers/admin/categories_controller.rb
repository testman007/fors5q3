class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:update, :destroy]
  # 這裡我們只使用index 這個 template，所以統一 render or redirect 到 index

  def index
    @categories = Category.all

    # 這裡是new or edit 的form所需要的值，如果有url有id就將form帶入edit，沒有就new。
    if params[:id]
      set_category
    else
      @category = Category.new
    end
  end

  def create
   @category = Category.new(category_params)
   if @category.save
     flash[:notice] = "category was successfully created"
     redirect_to admin_categories_path
   else
     @categories = Category.all
     render :index
   end
  end

  def update
    if @category.update(category_params)
      flash[:notice] = "category was successfully updated"
      redirect_to admin_categories_path
    else
      @categories = Category.all
      render :index
    end
  end

  def destroy
    @category.destroy
    flash[:alert] = "category was successfully deleted"
    redirect_to admin_categories_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
