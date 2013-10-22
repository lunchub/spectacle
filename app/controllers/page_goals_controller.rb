class PageGoalsController < ApplicationController
  before_action :set_page_goal, only: [:show, :edit, :update, :destroy]

  # GET /page_goals
  # GET /page_goals.json
  def index
    @page_goals = PageGoal.all
  end

  # GET /page_goals/1
  # GET /page_goals/1.json
  def show
  end

  # GET /page_goals/new
  def new
    @page_goal = PageGoal.new
  end

  # GET /page_goals/1/edit
  def edit
  end

  # POST /page_goals
  # POST /page_goals.json
  def create
    @page_goal = PageGoal.new(page_goal_params)

    respond_to do |format|
      if @page_goal.save
        format.html { redirect_to @page_goal, notice: 'Page goal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @page_goal }
      else
        format.html { render action: 'new' }
        format.json { render json: @page_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_goals/1
  # PATCH/PUT /page_goals/1.json
  def update
    respond_to do |format|
      if @page_goal.update(page_goal_params)
        format.html { redirect_to @page_goal, notice: 'Page goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_goals/1
  # DELETE /page_goals/1.json
  def destroy
    @page_goal.destroy
    respond_to do |format|
      format.html { redirect_to page_goals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_goal
      @page_goal = PageGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_goal_params
      params.require(:page_goal).permit(:title)
    end
end
