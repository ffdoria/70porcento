class PresencasController < ApplicationController
  before_action :set_presenca, only: [:show, :edit, :update, :destroy]
  before_action :get_aula
  # GET /presencas
  # GET /presencas.json
  def index
    @presencas = @aula.presenca
  end

  # GET /presencas/1
  # GET /presencas/1.json
  def show
  end

  # GET /presencas/new
  def new
    @presenca =@aula.presenca.build
  end

  # GET /presencas/1/edit
  def edit
  end

  # POST /presencas
  # POST /presencas.json
  def create
    @presenca = @aula.presenca.build(presenca_params)

    respond_to do |format|
      if @presenca.save
        format.html { redirect_to @presenca, notice: 'Presenca was successfully created.' }
        format.json { render :show, status: :created, location: @presenca }
      else
        format.html { render :new }
        format.json { render json: @presenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presencas/1
  # PATCH/PUT /presencas/1.json
  def update
    respond_to do |format|
      if @presenca.update(presenca_params)
        format.html { redirect_to @presenca, notice: 'Presenca was successfully updated.' }
        format.json { render :show, status: :ok, location: @presenca }
      else
        format.html { render :edit }
        format.json { render json: @presenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presencas/1
  # DELETE /presencas/1.json
  def destroy
    @presenca.destroy
    respond_to do |format|
      format.html { redirect_to presencas_url, notice: 'Presenca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presenca
      @presenca = Presenca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def presenca_params
      params.require(:presenca).permit(:compareceu, :aula_id)
    end
end
