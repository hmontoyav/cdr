class CalldetailsController < ApplicationController
  before_action :set_calldetail, only: [:show, :edit, :update, :destroy]

  # GET /calldetails
  # GET /calldetails.json
  def index
    @calldetails = Calldetail.all
  end

  # GET /calldetails/1
  # GET /calldetails/1.json
  def show
  end

  # GET /calldetails/new
  def new
    @calldetail = Calldetail.new
  end

  # GET /calldetails/1/edit
  def edit
  end

  # POST /calldetails
  # POST /calldetails.json
  def create
    @calldetail = Calldetail.new(calldetail_params)

    respond_to do |format|
      if @calldetail.save
        format.html { redirect_to @calldetail, notice: 'Calldetail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @calldetail }
      else
        format.html { render action: 'new' }
        format.json { render json: @calldetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calldetails/1
  # PATCH/PUT /calldetails/1.json
  def update
    respond_to do |format|
      if @calldetail.update(calldetail_params)
        format.html { redirect_to @calldetail, notice: 'Calldetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @calldetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calldetails/1
  # DELETE /calldetails/1.json
  def destroy
    @calldetail.destroy
    respond_to do |format|
      format.html { redirect_to calldetails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calldetail
      @calldetail = Calldetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calldetail_params
      params.require(:calldetail).permit(:globalCallID_callId, :cdrRecordType, :origIpAddr, :callingPartyNumber, :destIpAddr, :originalCalledPartyNumber, :dateTimeConnect, :dateTimeDisconnect, :originalCalledPartyNumberPartition, :duration, :origDeviceName, :destDeviceName)
    end
end
