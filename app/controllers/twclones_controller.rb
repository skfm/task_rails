class TwclonesController < ApplicationController
  before_action :set_twclone, only: [:show, :edit, :update, :destroy]

  def index
    @twclones = Twclone.all
  end
  
  def show
  end

  def new
    if params[:back]
      @twclone = Twclone.new(twclone_params)
    else
      @twclone = Twclone.new
    end
  end

  def edit
  end

  def create
    @twclone = Twclone.new(twclone_params)

    respond_to do |format|
      if @twclone.save
        format.html { redirect_to @twclone, notice: 'ツイートが完了しました。' }
        format.json { render :show, status: :created, location: @twclone }
      else
        format.html { render :new }
        format.json { render json: @twclone.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @twclone.update(twclone_params)
        format.html { redirect_to @twclone, notice: 'ツイート内容が更新されました。' }
        format.json { render :show, status: :ok, location: @twclone }
      else
        format.html { render :edit }
        format.json { render json: @twclone.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @twclone.destroy
    respond_to do |format|
      format.html { redirect_to twclones_url, notice: 'ツイートが削除されました。' }
      format.json { head :no_content }
    end
  end
  
  def confirm
    @twclone = Twclone.new(twclone_params)
    render :new if @twclone.invalid?
  end
  
  private
    
    def set_twclone
      @twclone = Twclone.find(params[:id])
    end

    def twclone_params
      params.require(:twclone).permit(:content)
    end
end
