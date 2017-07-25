class ApsController < ApplicationController
  before_action :set_ap, only: [:show, :edit, :update, :destroy]

  # GET /aps
  # GET /aps.json
  def index
    @aps = Ap.all
  end

  # GET /aps/1
  # GET /aps/1.json
  def show
  end

  # GET /aps/new
  def new
    @ap = Ap.new
  end

  # GET /aps/1/edit
  def edit
  end

  # POST /aps
  # POST /aps.json
  def create
    @ap = Ap.new(ap_params)

    respond_to do |format|
      if @ap.save
        format.html { redirect_to @ap, notice: 'Ap was successfully created.' }
        format.json { render :show, status: :created, location: @ap }
      else
        format.html { render :new }
        format.json { render json: @ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aps/1
  # PATCH/PUT /aps/1.json
  def update
    respond_to do |format|
      if @ap.update(ap_params)
        format.html { redirect_to @ap, notice: 'Ap was successfully updated.' }
        format.json { render :show, status: :ok, location: @ap }
      else
        format.html { render :edit }
        format.json { render json: @ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aps/1
  # DELETE /aps/1.json
  def destroy
    @ap.destroy
    respond_to do |format|
      format.html { redirect_to aps_url, notice: 'Ap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ap
      @ap = Ap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ap_params
      params.require(:ap).permit(:nombre, :edad)
    end
end
