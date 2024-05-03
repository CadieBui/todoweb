# frozen_string_literal: true

class TododbsController < ApplicationController
  before_action :set_tododb, only: %i[show edit update destroy]

  # GET /tododbs or /tododbs.json
  def index
    @tododbs = Tododb.all
    @q = Tododb.ransack(params[:q])
    @tododbs = @q.result
  end

  # GET /tododbs/1 or /tododbs/1.json
  def show; end

  # GET /tododbs/new
  def new
    @tododb = Tododb.new
  end
  # GET /tododbs/1/edit
  def edit; end

  # POST /tododbs or /tododbs.json
  def create
    @tododb = Tododb.new(tododb_params)

    respond_to do |format|
      if @tododb.save
        format.html { redirect_to tododb_url(@tododb), notice: 'Tododb was successfully created.' }
        format.json { render :show, status: :created, location: @tododb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tododb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tododbs/1 or /tododbs/1.json
  def update
    respond_to do |format|
      if @tododb.update(tododb_params)
        format.html { redirect_to tododb_url(@tododb), notice: 'Tododb was successfully updated.' }
        format.json { render :show, status: :ok, location: @tododb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tododb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tododbs/1 or /tododbs/1.json
  def destroy
    @tododb.destroy

    respond_to do |format|
      format.html { redirect_to tododbs_url, notice: 'Tododb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tododb
    @tododb = Tododb.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tododb_params
    params.require(:tododb).permit(:title, :content, :priority, :status, :startDate, :endDate, :label)
  end
end
