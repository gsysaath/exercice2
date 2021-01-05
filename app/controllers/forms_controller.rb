class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    @form.user = User.last
    if @form.save
      redirect_to form_path(@form)
    else
      render :new
    end
  end

  def show
    @form = Form.find(params[:id])
    @address_departure = Address.create(address: @form.address_departure)
    @address_departure.country = Geocoder.search([@address_departure.latitude, @address_departure.longitude]).first.country
    @address_departure.save
    @address_destination = Address.create(address: @form.address_destination)
    @address_destination.country = Geocoder.search([@address_destination.latitude, @address_destination.longitude]).first.country
    @address_destination.save
    @distance = Geocoder::Calculations.distance_between([@address_departure.latitude, @address_departure.longitude], [@address_destination.latitude, @address_destination.longitude])
  end

  private

  def form_params
    params.require(:form).permit(:genre,
      :address_departure,
      :address_destination,
      :user_id,
      :delay,
      :reason,
      :status)
  end

end
