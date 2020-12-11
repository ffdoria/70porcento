class AulasController < ApplicationController
  before_action :set_aula, only: [:show, :edit, :update, :destroy]
  before_action :get_subject
  # GET /aulas
  # GET /aulas.json
  def index
    @aulas = @subject.aulas
  end

  # GET /aulas/1
  # GET /aulas/1.json
  def show
  end

  # GET /aulas/new
  def new
    @aula = @subject.aulas.build
  end

  # GET /aulas/1/edit
  def edit
  end

  # POST /aulas
  # POST /aulas.json
  def create
    @aula = @subject.aulas.build(aula_params)

    respond_to do |format|
      if @aula.save
        format.html { redirect_to subject_aulas_url(@subject), notice: 'Aula was successfully created.' }
        format.json { render :show, status: :created, location: @aula }
      else
        format.html { render :new }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aulas/1
  # PATCH/PUT /aulas/1.json
  def update
    respond_to do |format|
      if @aula.update(aula_params)
        format.html { redirect_to subject_aulas_url(@subject), notice: 'Aula was successfully updated.' }
        format.json { render :show, status: :ok, location: @aula }
      else
        format.html { render :edit }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aulas/1
  # DELETE /aulas/1.json
  def destroy
    @aula.destroy
    respond_to do |format|
      format.html { redirect_to (subject_aulas_url(@subject)), notice: 'Aula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_subject
      @subject = Subject.find(params[:subject_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_aula
      @subject = Subject.find(params[:subject_id])
      @aula = @subject.aulas.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aula_params
      params.require(:aula).permit(:data_aul, :horario_aul, :compareceu)
    end
end
