class InvXRefsController < ApplicationController
  # GET /inv_x_refs
  # GET /inv_x_refs.json
  def index
    @inv_x_refs = InvXRef.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inv_x_refs }
    end
  end

  # GET /inv_x_refs/1
  # GET /inv_x_refs/1.json
  def show
    @inv_x_ref = InvXRef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inv_x_ref }
    end
  end

  # GET /inv_x_refs/new
  # GET /inv_x_refs/new.json
  def new
    @inv_x_ref = InvXRef.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inv_x_ref }
    end
  end

  # GET /inv_x_refs/1/edit
  def edit
    @inv_x_ref = InvXRef.find(params[:id])
  end

  # POST /inv_x_refs
  # POST /inv_x_refs.json
  def create
    @inv_x_ref = InvXRef.new(params[:inv_x_ref])

    respond_to do |format|
      if @inv_x_ref.save
        format.html { redirect_to @inv_x_ref, notice: 'Inv x ref was successfully created.' }
        format.json { render json: @inv_x_ref, status: :created, location: @inv_x_ref }
      else
        format.html { render action: "new" }
        format.json { render json: @inv_x_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inv_x_refs/1
  # PUT /inv_x_refs/1.json
  def update
    @inv_x_ref = InvXRef.find(params[:id])

    respond_to do |format|
      if @inv_x_ref.update_attributes(params[:inv_x_ref])
        format.html { redirect_to @inv_x_ref, notice: 'Inv x ref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inv_x_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inv_x_refs/1
  # DELETE /inv_x_refs/1.json
  def destroy
    @inv_x_ref = InvXRef.find(params[:id])
    @inv_x_ref.destroy

    respond_to do |format|
      format.html { redirect_to inv_x_refs_url }
      format.json { head :no_content }
    end
  end
end
