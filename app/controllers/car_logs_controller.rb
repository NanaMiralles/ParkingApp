class CarLogsController < ApplicationController
  def index
    @car = CarLog.all

    render "car_logs/index.html.erb"
  end

  def create
    @car = CarLog.new
    @car.plate_number = params[:plate_number]
    @car.brand = params[:brand]
    @car.slot_number = params[:slot_number]
    @car.is_taken = params[:is_taken]
    @car.save

    redirect_to "/car_logs"
  end

  def make
    render 'car_logs/form.html.erb'
  end

  def delete
    id = params[:id]
    @car = CarLog.find(id.to_i)
    @car.destroy
    redirect_to '/car_logs'
  end
end
