class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end

  def create
    @place = Place.find(params[:place_id])
    @entry = @place.entries.new(entry_params)

    if @entry.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end


  def entry_params
    params.require(:entry).permit(:title, :description, :occurred_on, :place_id)
  end
end
