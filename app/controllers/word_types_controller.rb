class WordTypesController < ApplicationController
  before_action :set_word_type, only: [:show, :edit, :update, :destroy]

  # GET /word_types
  # GET /word_types.json
  def index
    @word_types = WordType.all
  end

  # GET /word_types/1
  # GET /word_types/1.json
  def show
  end

  # GET /word_types/new
  def new
    @word_type = WordType.new
  end

  # GET /word_types/1/edit
  def edit
  end

  # POST /word_types
  # POST /word_types.json
  def create
    @word_type = WordType.new(word_type_params)

    respond_to do |format|
      if @word_type.save
        format.html { redirect_to @word_type, notice: 'Word type was successfully created.' }
        format.json { render :show, status: :created, location: @word_type }
      else
        format.html { render :new }
        format.json { render json: @word_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_types/1
  # PATCH/PUT /word_types/1.json
  def update
    respond_to do |format|
      if @word_type.update(word_type_params)
        format.html { redirect_to @word_type, notice: 'Word type was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_type }
      else
        format.html { render :edit }
        format.json { render json: @word_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_types/1
  # DELETE /word_types/1.json
  def destroy
    @word_type.destroy
    respond_to do |format|
      format.html { redirect_to word_types_url, notice: 'Word type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_type
      @word_type = WordType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_type_params
      params.require(:word_type).permit(:Name, :Description)
    end
end
