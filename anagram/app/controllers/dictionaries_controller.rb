class DictionariesController < ApplicationController
  before_action :set_dictionary, only: [:show, :edit, :update, :destroy]

  # GET /dictionaries
  def index
    @dictionaries = Dictionary.all
  end

  # GET /dictionaries/1
  def show
  end

  # GET /dictionaries/new
  def new
    @dictionary = Dictionary.new
  end

  # GET /dictionaries/1/edit
  def edit
  end

  # POST /dictionaries
  def create
    @dictionary = Dictionary.new(dictionary_params)

    if @dictionary.save
      redirect_to @dictionary, notice: 'Dictionary was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dictionaries/1
  def update
    if @dictionary.update(dictionary_params)
      redirect_to @dictionary, notice: 'Dictionary was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dictionaries/1
  def destroy
    @dictionary.destroy
    redirect_to dictionaries_url, notice: 'Dictionary was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dictionary
      @dictionary = Dictionary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dictionary_params
      params.fetch(:dictionary, {})
    end
end
