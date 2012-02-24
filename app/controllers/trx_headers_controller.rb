class TrxHeadersController < ApplicationController
  # GET /trx_headers
  # GET /trx_headers.json
  def index
    @trx_headers = TrxHeader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trx_headers }
    end
  end

  # GET /trx_headers/1
  # GET /trx_headers/1.json
  def show
    @trx_header = TrxHeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trx_header }
    end
  end

  # GET /trx_headers/new
  # GET /trx_headers/new.json
  def new
    @trx_header = TrxHeader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trx_header }
    end
  end

  # GET /trx_headers/1/edit
  def edit
    @trx_header = TrxHeader.find(params[:id])
  end

  # POST /trx_headers
  # POST /trx_headers.json
  def create
    @trx_header = TrxHeader.new(params[:trx_header])

    respond_to do |format|
      if @trx_header.save
        format.html { redirect_to @trx_header, notice: 'Trx header was successfully created.' }
        format.json { render json: @trx_header, status: :created, location: @trx_header }
      else
        format.html { render action: "new" }
        format.json { render json: @trx_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trx_headers/1
  # PUT /trx_headers/1.json
  def update
    @trx_header = TrxHeader.find(params[:id])

    respond_to do |format|
      if @trx_header.update_attributes(params[:trx_header])
        format.html { redirect_to @trx_header, notice: 'Trx header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trx_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trx_headers/1
  # DELETE /trx_headers/1.json
  def destroy
    @trx_header = TrxHeader.find(params[:id])
    @trx_header.destroy

    respond_to do |format|
      format.html { redirect_to trx_headers_url }
      format.json { head :no_content }
    end
  end
end
