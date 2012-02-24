class InvOriginsController < ApplicationController
  # GET /inv_origins
  # GET /inv_origins.json
  def index
    @inv_origins = InvOrigin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inv_origins }
    end
  end

  # GET /inv_origins/1
  # GET /inv_origins/1.json
  def show
    @inv_origin = InvOrigin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inv_origin }
    end
  end

  # GET /inv_origins/new
  # GET /inv_origins/new.json
  def new
    @inv_origin = InvOrigin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inv_origin }
    end
  end

  # GET /inv_origins/1/edit
  def edit
    @inv_origin = InvOrigin.find(params[:id])
  end

  # POST /inv_origins
  # POST /inv_origins.json
  def create
    @inv_origin = InvOrigin.new(params[:inv_origin])

    respond_to do |format|
      if @inv_origin.save
        format.html { redirect_to @inv_origin, notice: 'Inv origin was successfully created.' }
        format.json { render json: @inv_origin, status: :created, location: @inv_origin }
      else
        format.html { render action: "new" }
        format.json { render json: @inv_origin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inv_origins/1
  # PUT /inv_origins/1.json
  def update
    @inv_origin = InvOrigin.find(params[:id])

    respond_to do |format|
      if @inv_origin.update_attributes(params[:inv_origin])
        format.html { redirect_to @inv_origin, notice: 'Inv origin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inv_origin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inv_origins/1
  # DELETE /inv_origins/1.json
  def destroy
    @inv_origin = InvOrigin.find(params[:id])
    @inv_origin.destroy

    respond_to do |format|
      format.html { redirect_to inv_origins_url }
      format.json { head :no_content }
    end
  end
end
