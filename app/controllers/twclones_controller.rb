class TwclonesController < ApplicationController
  before_action :set_twclone, only: [:show, :edit, :update, :destroy]

  # GET /twclones
  # GET /twclones.json
  def index
    @twclones = Twclone.all
  end

  # GET /twclones/1
  # GET /twclones/1.json
  def show
  end

  # GET /twclones/new
  def new
    @twclone = Twclone.new
  end

  # GET /twclones/1/edit
  def edit
  end

  # POST /twclones
  # POST /twclones.json
  def create
    @twclone = Twclone.new(twclone_params)

    respond_to do |format|
      if @twclone.save
        format.html { redirect_to @twclone, notice: 'Twclone was successfully created.' }
        format.json { render :show, status: :created, location: @twclone }
      else
        format.html { render :new }
        format.json { render json: @twclone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twclones/1
  # PATCH/PUT /twclones/1.json
  def update
    respond_to do |format|
      if @twclone.update(twclone_params)
        format.html { redirect_to @twclone, notice: 'Twclone was successfully updated.' }
        format.json { render :show, status: :ok, location: @twclone }
      else
        format.html { render :edit }
        format.json { render json: @twclone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twclones/1
  # DELETE /twclones/1.json
  def destroy
    @twclone.destroy
    respond_to do |format|
      format.html { redirect_to twclones_url, notice: 'Twclone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twclone
      @twclone = Twclone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twclone_params
      params.require(:twclone).permit(:content)
    end
end
