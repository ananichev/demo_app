class MacropostsController < ApplicationController
  before_action :set_macropost, only: [:show, :edit, :update, :destroy]

  # GET /macroposts
  # GET /macroposts.json
  def index
    @macroposts = Macropost.all
  end

  # GET /macroposts/1
  # GET /macroposts/1.json
  def show
  end

  # GET /macroposts/new
  def new
    @macropost = Macropost.new
  end

  # GET /macroposts/1/edit
  def edit
  end

  # POST /macroposts
  # POST /macroposts.json
  def create
    @macropost = Macropost.new(macropost_params)

    respond_to do |format|
      if @macropost.save
        format.html { redirect_to @macropost, notice: 'Macropost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @macropost }
      else
        format.html { render action: 'new' }
        format.json { render json: @macropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /macroposts/1
  # PATCH/PUT /macroposts/1.json
  def update
    respond_to do |format|
      if @macropost.update(macropost_params)
        format.html { redirect_to @macropost, notice: 'Macropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @macropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /macroposts/1
  # DELETE /macroposts/1.json
  def destroy
    @macropost.destroy
    respond_to do |format|
      format.html { redirect_to macroposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_macropost
      @macropost = Macropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def macropost_params
      params.require(:macropost).permit(:content, :user_id)
    end
end
