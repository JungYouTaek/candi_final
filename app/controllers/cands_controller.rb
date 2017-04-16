class CandsController < ApplicationController
  before_action :set_cand, only: [:show, :edit, :update, :destroy]

  # GET /cands
  # GET /cands.json
  def index
    @cands = Cand.all
  end

  # GET /cands/1
  # GET /cands/1.json
  def show
  end

  # GET /cands/new
  def new
    @cand = Cand.new
  end

  # GET /cands/1/edit
  def edit
  end

  # POST /cands
  # POST /cands.json
  def create
    @cand = Cand.new(cand_params)

    if @cand.pwd == $password
      respond_to do |format|
        if @cand.save
          format.html { redirect_to @cand, notice: 'Cand was successfully created.' }
          format.json { render :show, status: :created, location: @cand }
        else
          format.html { render :new }
          format.json { render json: @cand.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html {render :new, notice: 'no'}
      end
    end
  end

  # PATCH/PUT /cands/1
  # PATCH/PUT /cands/1.json
  def update

    if @cand.pwd == $password
      respond_to do |format|
        if @cand.update(cand_params)
          format.html { redirect_to @cand, notice: 'Cand was successfully updated.' }
          format.json { render :show, status: :ok, location: @cand }
        else
          format.html { render :edit }
          format.json { render json: @cand.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html {render :edit, notice: 'no'}
      end
    end
  end

  # DELETE /cands/1
  # DELETE /cands/1.json
  def destroy
    if params[:pwd] == @cand.pwd
      @cand.destroy
      respond_to do |format|
        format.html { redirect_to ahns_url, notice: 'Cand was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cand
      @cand = Cand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cand_params
      params.require(:cand).permit(:name, :date, :beginc, :endc, :act, :loca, :pwd)
    end
end
