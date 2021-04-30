class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update]

  # GET /restaurants
  def index
    @lists = List.all
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # POST /restaurants
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

   # GET /lists/1
  def show
  end

  def edit
  end

  def update
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = List.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(:name, :picture_url)
  end
end
