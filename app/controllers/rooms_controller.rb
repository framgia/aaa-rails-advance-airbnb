class RoomsController < ApplicationController
  before_action :set_room, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]

  def index
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)
    if @room.save
      redirect_to listing_room_path(@room), notice: "Saved..."
    else
      flash[:alert] = "Something went wrong..."
      render :new
    end
  end

  def show
  end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
  end

  def amenities
  end

  def location
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:home_type, :room_type, :capacity, :bedroom_count, :bathroom_count, :listing_name, :description, :address, :has_tv, :has_kitchen, :has_aircon, :has_heating, :has_internet, :price, :active)
    end
end
