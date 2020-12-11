class AtividadesController < ApplicationController
  before_action :set_atividade, only: [:show, :edit, :update, :destroy]
  before_action :get_subject
  # GET /atividades
  # GET /atividades.json
  def index
    @atividades = @subject.atividades
  end

  # GET /atividades/1
  # GET /atividades/1.json
  def show
  end

  # GET /atividades/new
  def new
    @atividade = @subject.atividades.build
  end

  # GET /atividades/1/edit
  def edit
  end

  # POST /atividades
  # POST /atividades.json
  def create
    @atividade = @subject.atividades.build(atividade_params)

    respond_to do |format|
      if @atividade.save
        format.html { redirect_to subject_atividades_url(@subject), notice: 'Atividade was successfully created.' }
        format.json { render :show, status: :created, location: @atividade }
      else
        format.html { render :new }
        format.json { render json: @atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atividades/1
  # PATCH/PUT /atividades/1.json
  def update
    respond_to do |format|
      if @atividade.update(atividade_params)
        format.html { redirect_to subject_atividades_url(@subject), notice: 'Atividade was successfully updated.' }
        format.json { render :show, status: :ok, location: @atividade }
      else
        format.html { render :edit }
        format.json { render json: @atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atividades/1
  # DELETE /atividades/1.json
  def destroy
    @atividade.destroy
    respond_to do |format|
      format.html { redirect_to (subject_atividades_url(@subject)), notice: 'Atividade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_subject
      @subject = Subject.find(params[:subject_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_atividade
      @subject = Subject.find(params[:subject_id])
      @atividade = @subject.atividades.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atividade_params
      params.require(:atividade).permit(:data_at, :horario_at, :tipo,:comentarios)
    end
end
