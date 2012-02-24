class TrxDetailsController < ApplicationController
  # GET /trx_details
  # GET /trx_details.json
  def index
    @trx_details = TrxDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trx_details }
    end
  end

  # GET /trx_details/1
  # GET /trx_details/1.json
  def show
    @trx_detail = TrxDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trx_detail }
    end
  end

  # GET /trx_details/new
  # GET /trx_details/new.json
  def new
    @trx_detail = TrxDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trx_detail }
    end
  end

  # GET /trx_details/1/edit
  def edit
    @trx_detail = TrxDetail.find(params[:id])
  end

  # POST /trx_details
  # POST /trx_details.json
  def create
    @trx_detail = TrxDetail.new(params[:trx_detail])

    respond_to do |format|
      if @trx_detail.save
        format.html { redirect_to @trx_detail, notice: 'Trx detail was successfully created.' }
        format.json { render json: @trx_detail, status: :created, location: @trx_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @trx_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trx_details/1
  # PUT /trx_details/1.json
  def update
    @trx_detail = TrxDetail.find(params[:id])

    respond_to do |format|
      if @trx_detail.update_attributes(params[:trx_detail])
        format.html { redirect_to @trx_detail, notice: 'Trx detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trx_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trx_details/1
  # DELETE /trx_details/1.json
  def destroy
    @trx_detail = TrxDetail.find(params[:id])
    @trx_detail.destroy

    respond_to do |format|
      format.html { redirect_to trx_details_url }
      format.json { head :no_content }
    end
  end
end
