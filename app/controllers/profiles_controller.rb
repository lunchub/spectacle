class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def new
    @profile = UserProfile.new
  end

  def create
    @profile = UserProfile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profile_path, notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    redirect_to new_profile_path unless @profile.present?
  end

  private
    def set_profile
      @profile = UserProfile.where(user_id: current_user).first
    end

    def profile_params
      params.require(:user_profile).permit(
        :id, 
        :user_id, 
        :name
      )
    end
end
