class RegionsController < ApplicationController
  before_action :set_region, only: %i[show update destroy]

  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
  end

  def new
    @region = Region.new
    authorize @region
  end

  def create
    @region = Region.new(region_params)
    @region.country = @country
    authorize @region
    if @region.save
      redirect_to country_path(@country)
    else
      render :new
    end
  end

  def edit
    @region = Region.find(params[:id])
    @country = Country.find(params[:country_id])
    authorize @region
    authorize @country
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(region_params)
      redirect_to country_region_path(@country)
    else
      render :edit
    end
  end

#######################################
# def edit
#     @solution = Solution.find(params[:id])
#     @post = Post.find(params[:post_id])
#     authorize @solution
#     authorize @post
#   end

#   def update
#     @solution = Solution.find(params[:id])
#     @post = Post.find(params[:post_id])
#     @solution.post = @post
#     if @solution.update(solution_params)
#       redirect_to post_solutions_path(@post)
#     else
#       render :edit
#     end
#     authorize @solution
#   end


########################################

  def destroy
    @region.destroy
    redirect_to country_region_path(@country)
  end

  private

  def set_region
    @region = Region.find(params[:id])
    authorize @region
    authorize @country
  end

  def region_params
    params.require(:region).permit(:title, :description, :country_id)
  end
end
