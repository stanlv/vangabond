class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    #binding.pry
    if params[:search]
      @cars = Car.search(params[:search])
    else
      @cars = Car.all
    end
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
      if @car.save
        redirect_to cars_path(@car), notice: 'Van was successfully created.'
      else
        render :new
      end
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car), notice: 'Van was successfully updated.'
      else
  end

  def destroy
    @car.destroy
    redirect_to cars_path, notice: 'Van was successfully destroyed.'
  end




  private

  def car_params
    #params.permit(:seats, :country, :category)
    params.require(:car).permit(:seats, :brand, :model, :year_of_production, :description, :country, :price_per_day, :km, photos: [], category: [])
  end

  def set_car
      @car = Car.find(params[:id])
  end
end
