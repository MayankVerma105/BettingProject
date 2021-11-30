class BettingsController < ApplicationController

  def index
    @bettings = Betting.all
  end

  def show
    @betting = Betting.find(params[:id])
  end

  def new
    @betting = Betting.new
  end

  def create
    @betting = Betting.new(betting_params)

    if @betting.save
      redirect_to @betting
    else
      render :new
    end
  end

  def edit
    @betting = Betting.find(params[:id])
  end
  
  def update
    @betting = Betting.find(params[:id])

    if @betting.update(betting_params)
      redirect_to @betting
    else
      render :edit
    end
  end


   def destroy
    @betting = Betting.find(params[:id])
    @betting.destroy

    redirect_to root_path
  end

private
    def betting_params
      params.require(:betting).permit(:match, :team)
    
  end
end