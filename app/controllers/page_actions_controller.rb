class PageActionsController < ApplicationController
  before_action :set_page_action, only: [:show, :edit, :update, :destroy]

  # GET /page_actions
  # GET /page_actions.json
  def index
    @page_actions = PageAction.all
  end

  # GET /page_actions/1
  # GET /page_actions/1.json
  def show
  end

  # GET /page_actions/new
  def new
    @page_action = PageAction.new
  end

  # GET /page_actions/1/edit
  def edit
  end

  # POST /page_actions
  # POST /page_actions.json
  def create
    @page_action = PageAction.new(page_action_params)

    respond_to do |format|
      if @page_action.save
        format.html { redirect_to @page_action, notice: 'Page action was successfully created.' }
        format.json { render action: 'show', status: :created, location: @page_action }
      else
        format.html { render action: 'new' }
        format.json { render json: @page_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_actions/1
  # PATCH/PUT /page_actions/1.json
  def update
    respond_to do |format|
      if @page_action.update(page_action_params)
        format.html { redirect_to @page_action, notice: 'Page action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_actions/1
  # DELETE /page_actions/1.json
  def destroy
    @page_action.destroy
    respond_to do |format|
      format.html { redirect_to page_actions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_action
      @page_action = PageAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_action_params
      params.require(:page_action).permit(:title)
    end
end
