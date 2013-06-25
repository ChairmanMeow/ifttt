class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @user = User.new
    @teams = Team.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

 def new
    @user = User.new
    @team = Team.new
  end

  def create
    @teams = Team.all
    @users = User.all
    @user = User.new(params[:user])
    @user.attributes = {'teams' => []}.merge(params[:user] || {})
    if @user.save
      flash.keep[:success] =  @user.name + " Added to list of Users!"
      redirect_to users_path

    else
      render 'index'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to adduser_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
   end
  end
  
end
