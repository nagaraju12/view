class SubcategoriesController < ApplicationController
	def index
		@subcategories= Subcategory.all
	end
	def new
		@subcategory= Subcategory.new
	end
	def create
		@subcategory= Subcategory.new(subcategory_params)
		if @subcategory.save
			redirect_to @subcategory
		else
			render "new"
		end
	end
	def show
		@subcategory= Subcategory.find(params[:id])
	end
	def edit
		@subcategory= Subcategory.find(params[:id])
	end
	def update
		@subcategory= Subcategory.find(params[:id])
		if @subcategory.update(subcategory_params)
			redirect_to @subcategory
    else
    	render "edit"
    end
  end
  def destroy
  	@subcategory= Subcategory.find(params[:id])
  	@subcategory.destroy
  	redirect_to subcategory_path
  end
  private
  def subcategory_params
  	params.require(:subcategory).permit(:title, :category_id)
end
end
