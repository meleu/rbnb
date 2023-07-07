class PropertiesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_property, only: %i[show edit update destroy]

  # GET /properties
  def index
    @properties = Property.all
  end

  # GET /properties/1
  def show; end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit; end

  # POST /properties
  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
    redirect_to properties_url, notice: 'Property was successfully deleted.', status: :see_other
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:title, :description, :price)
  end
end
