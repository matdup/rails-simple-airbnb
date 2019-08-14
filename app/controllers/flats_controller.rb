class FlatsController < ApplicationController

  def index         # GET /flats
    @flats = Flat.all
  end

  def show          # GET /flats/:id
    @flat = Flat.find(params[:id])
  end

  def new           # GET /flats/new
    @flat = Flat.new
  end

  def create        # POST /flats
    @flat = Flat.new(params[:flat])
    @flat.save
    redirect_to flat_path(@flat)
  end

  def edit          # GET /flats/:id/edit
    @flat = Flat.find(params[:id])
  end

  def update        # PATCH /flats/:id
    @flat = Flat.find(params[:id])
    @flat.update(params[:flat])
    redirect_to flats_path(@flat)
  end

  def destroy       # DELETE /flats/:id
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end
end
