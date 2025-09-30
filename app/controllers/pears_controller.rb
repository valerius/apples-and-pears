class PearsController < ApplicationController
  before_action :set_pear, only: %i[ show edit update destroy ]

  # GET /pears or /pears.json
  def index
    @pears = Pear.all
  end

  # GET /pears/1 or /pears/1.json
  def show
  end

  # GET /pears/new
  def new
    @pear = Pear.new
  end

  # GET /pears/1/edit
  def edit
  end

  # POST /pears or /pears.json
  def create
    @pear = Pear.new(pear_params)

    respond_to do |format|
      if @pear.save
        format.html { redirect_to @pear, notice: "Pear was successfully created." }
        format.json { render :show, status: :created, location: @pear }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pears/1 or /pears/1.json
  def update
    respond_to do |format|
      if @pear.update(pear_params)
        format.html { redirect_to @pear, notice: "Pear was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @pear }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pears/1 or /pears/1.json
  def destroy
    @pear.destroy!

    respond_to do |format|
      format.html { redirect_to pears_path, notice: "Pear was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pear
      @pear = Pear.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pear_params
      params.expect(pear: [ :name ])
    end
end
