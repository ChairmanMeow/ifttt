class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
  end

  def index
    @team = Team.new
    @teams = Team.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams }
    end
  end

 def new
    @team = Team.new
  end

  def create
    @teams = Team.all
    @team = Team.new(params[:team])
    if @team.save
      flash.keep[:success] =  @team.name + " Added to list of Teams!"
      redirect_to teams_path
    else
      render 'index'
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end

  def update
    @team = Team.find(params[:id])

    respond_to do |format|
      if @team.update_attributes(params[:team])
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
