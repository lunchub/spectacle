class SitePreconditionsController < ApplicationController
  before_action :set_site_precondition, only: [:show, :edit, :update, :destroy]

  # GET /site_preconditions
  # GET /site_preconditions.json
  def index
    @site_preconditions = SitePrecondition.all
  end

  # GET /site_preconditions/1
  # GET /site_preconditions/1.json
  def show
  end

  # GET /site_preconditions/new
  def new
    @site_precondition = SitePrecondition.new
  end

  # GET /site_preconditions/1/edit
  def edit
  end

  # POST /site_preconditions
  # POST /site_preconditions.json
  def create
    @site_precondition = SitePrecondition.new(site_precondition_params)

    respond_to do |format|
      if @site_precondition.save
        format.html { redirect_to @site_precondition, notice: 'Site precondition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @site_precondition }
      else
        format.html { render action: 'new' }
        format.json { render json: @site_precondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_preconditions/1
  # PATCH/PUT /site_preconditions/1.json
  def update
    respond_to do |format|
      if @site_precondition.update(site_precondition_params)
        format.html { redirect_to @site_precondition, notice: 'Site precondition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @site_precondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_preconditions/1
  # DELETE /site_preconditions/1.json
  def destroy
    @site_precondition.destroy
    respond_to do |format|
      format.html { redirect_to site_preconditions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_precondition
      @site_precondition = SitePrecondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_precondition_params
      params.require(:site_precondition).permit(:name, :page_id)
    end
end
