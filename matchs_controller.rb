class MatchsController < ApplicationController
  def home
    @matchs = Matchid.all
  end

  def index
    @matchs = Matchid.all
  end

  def show
    @betting = Betting.find(params[:id])
  end

  def new
    @match = Matchid.new
  end

  def create
    @match = Matchid.find(params[:id])
    @point = @match.points.create(points_params)
    redirect_to betting_path(@match)
  end

  def has_points?(x)
    if x <= 50
  return true
    else
  return false

  end

  case has_points
    when 0
      "Ran out of points"
    when 1..51
      "Not enough points"
    else
      "You can Play"
  end

  private
    def points_params
      params.require(:match).permit(:points, :team)
    end
end
end

