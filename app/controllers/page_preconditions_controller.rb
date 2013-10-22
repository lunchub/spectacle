class PagePreconditionsController < ApplicationController
  before_action :set_page_precondition, only: [:show, :edit, :update, :destroy]

  # GET /page_preconditions
  # GET /page_preconditions.json
  def index
    @page_preconditions = PagePrecondition.all
  end

  # GET /page_preconditions/1
  # GET /page_preconditions/1.json
  def show
  end

  # GET /page_preconditions/new
  def new
    @page_precondition = PagePrecondition.new
  end

  # GET /page_preconditions/1/edit
  def edit
  end

  # POST /page_preconditions
  # POST /page_preconditions.json
  def create
    @page_precondition = PagePrecondition.new(page_precondition_params)

    respond_to do |format|
      if @page_precondition.save
        format.html { redirect_to @page_precondition, notice: 'Page precondition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @page_precondition }
      else
        format.html { render action: 'new' }
        format.json { render json: @page_precondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_preconditions/1
  # PATCH/PUT /page_preconditions/1.json
  def update
    respond_to do |format|
      if @page_precondition.update(page_precondition_params)
        format.html { redirect_to @page_precondition, notice: 'Page precondition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page_precondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_preconditions/1
  # DELETE /page_preconditions/1.json
  def destroy
    @page_precondition.destroy
    respond_to do |format|
      format.html { redirect_to page_preconditions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_precondition
      @page_precondition = PagePrecondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_precondition_params
      params.require(:page_precondition).permit(:title)
    end
end
