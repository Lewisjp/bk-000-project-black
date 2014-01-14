class GeolocationsController < ApplicationController
  # GET /geolocations
  # GET /geolocations.json
  def index
    @geolocations = Geolocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geolocations }
    end
  end

  # GET /geolocations/1
  # GET /geolocations/1.json
  def show
    @geolocation = Geolocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geolocation }
    end
  end

  # GET /geolocations/new
  # GET /geolocations/new.json
  def new
    @geolocation = Geolocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geolocation }
    end
  end

  # GET /geolocations/1/edit
  def edit
    @geolocation = Geolocation.find(params[:id])
  end

  # POST /geolocations
  # POST /geolocations.json
  def create
    @geolocation = Geolocation.new(params[:geolocation])

    respond_to do |format|
      if @geolocation.save
        format.html { redirect_to @geolocation, notice: 'Geolocation was successfully created.' }
        format.json { render json: @geolocation, status: :created, location: @geolocation }
      else
        format.html { render action: "new" }
        format.json { render json: @geolocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geolocations/1
  # PUT /geolocations/1.json
  def update
    @geolocation = Geolocation.find(params[:id])

    respond_to do |format|
      if @geolocation.update_attributes(params[:geolocation])
        format.html { redirect_to @geolocation, notice: 'Geolocation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geolocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geolocations/1
  # DELETE /geolocations/1.json
  def destroy
    @geolocation = Geolocation.find(params[:id])
    @geolocation.destroy

    respond_to do |format|
      format.html { redirect_to geolocations_url }
      format.json { head :no_content }
    end
  end
end
