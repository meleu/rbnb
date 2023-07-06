class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]

  def index
    @properties = Property.all
    respond_to do |format|
      format.html  # Make sure this line is present
    end
  end

  def show; end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.owner = current_user

    if @property.save
      redirect_to @property, notice: 'Property was successfully creted.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: 'Property was successfully removed.'
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:title, :description, :price, :owner_id)
  end
end
