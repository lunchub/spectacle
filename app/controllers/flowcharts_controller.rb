class FlowchartsController < ApplicationController
  before_action :set_flowchart, only: [:show, :edit, :update, :destroy]

  # GET /flowcharts
  # GET /flowcharts.json
  def index
    @flowcharts = Flowchart.all
  end

  # GET /flowcharts/1
  # GET /flowcharts/1.json
  def show
  end

  # GET /flowcharts/new
  def new
    @flowchart = Flowchart.new
  end

  # GET /flowcharts/1/edit
  def edit
  end

  # POST /flowcharts
  # POST /flowcharts.json
  def create
    @flowchart = Flowchart.new(flowchart_params)
    @flowchart.build

    respond_to do |format|
      if @flowchart.save
        format.html { redirect_to @flowchart, notice: 'Flowchart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flowchart }
      else
        format.html { render action: 'new' }
        format.json { render json: @flowchart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowcharts/1
  # PATCH/PUT /flowcharts/1.json
  def update
    @flowchart.build
    respond_to do |format|
      if @flowchart.update(flowchart_params)
        format.html { redirect_to @flowchart, notice: 'Flowchart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flowchart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowcharts/1
  # DELETE /flowcharts/1.json
  def destroy
    @flowchart.destroy
    respond_to do |format|
      format.html { redirect_to flowcharts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flowchart
      @flowchart = Flowchart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flowchart_params
      params.require(:flowchart).permit(:dot)
    end
end
