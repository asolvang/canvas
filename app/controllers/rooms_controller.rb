# frozen_string_literal: true

class RoomsController < ApplicationController
  # GET /rooms/new
  def new
    @room = Room.new(blueprint_id: params[:blueprint_id])
  end

  # POST /rooms or
  def create
    @blueprint = Blueprint.find(params[:blueprint_id])
    @room = @blueprint.rooms.create!(room_params)

    respond_to do |format|
      if @room.save
        format.turbo_stream
        format.html { redirect_to @room.blueprint, notice: 'Room was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def room_params
    params.require(:room).permit(:name, :description, :room_number)
  end
end
