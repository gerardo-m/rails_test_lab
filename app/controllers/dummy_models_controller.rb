class DummyModelsController < ApplicationController
  before_action :set_dummy_model, only: %i[ show edit update destroy ]

  # GET /dummy_models or /dummy_models.json
  def index
    @dummy_models = DummyModel.all
  end

  # GET /dummy_models/1 or /dummy_models/1.json
  def show
  end

  # GET /dummy_models/new
  def new
    @dummy_model = DummyModel.new
  end

  # GET /dummy_models/1/edit
  def edit
  end

  # POST /dummy_models or /dummy_models.json
  def create
    @dummy_model = DummyModel.new(dummy_model_params)

    respond_to do |format|
      if @dummy_model.save
        format.html { redirect_to @dummy_model, notice: "Dummy model was successfully created." }
        format.json { render :show, status: :created, location: @dummy_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dummy_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dummy_models/1 or /dummy_models/1.json
  def update
    respond_to do |format|
      if @dummy_model.update(dummy_model_params)
        format.html { redirect_to @dummy_model, notice: "Dummy model was successfully updated." }
        format.json { render :show, status: :ok, location: @dummy_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dummy_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummy_models/1 or /dummy_models/1.json
  def destroy
    @dummy_model.destroy
    respond_to do |format|
      format.html { redirect_to dummy_models_url, notice: "Dummy model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dummy_model
      @dummy_model = DummyModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dummy_model_params
      params.require(:dummy_model).permit(:dummy_text1, :dummy_text2, :dummy_text3)
    end
end
