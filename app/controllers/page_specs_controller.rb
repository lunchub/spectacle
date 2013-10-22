class PageSpecsController < ApplicationController
  before_action :set_page_spec, only: [:show, :edit, :update, :destroy]

  # GET /page_specs
  # GET /page_specs.json
  def index
    @page_specs = PageSpec.all
  end

  # GET /page_specs/1
  # GET /page_specs/1.json
  def show
  end

  # GET /page_specs/new
  def new
    @page_spec = PageSpec.new
  end

  # GET /page_specs/1/edit
  def edit
  end

  # POST /page_specs
  # POST /page_specs.json
  def create
    @page_spec = PageSpec.new(page_spec_params)

    respond_to do |format|
      if @page_spec.save
        format.html { redirect_to @page_spec, notice: 'Page spec was successfully created.' }
        format.json { render action: 'show', status: :created, location: @page_spec }
      else
        format.html { render action: 'new' }
        format.json { render json: @page_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_specs/1
  # PATCH/PUT /page_specs/1.json
  def update
    respond_to do |format|
      if @page_spec.update(page_spec_params)
        format.html { redirect_to @page_spec, notice: 'Page spec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_specs/1
  # DELETE /page_specs/1.json
  def destroy
    @page_spec.destroy
    respond_to do |format|
      format.html { redirect_to page_specs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_spec
      @page_spec = PageSpec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_spec_params
      params.require(:page_spec).permit(:title)
    end
end
