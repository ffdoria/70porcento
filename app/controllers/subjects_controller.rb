class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  before_action :get_grade
  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = @grade.subjects
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
  end

  # GET /subjects/new
  def new
    @subject = @grade.subjects.build
  end

  # GET /subjects/1/edit
  def edit
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = @grade.subjects.build(subject_params)

    respond_to do |format|
      if @subject.save
        format.html { redirect_to grade_subjects_url(@grade), notice: 'Subject was successfully created.' }
        format.json { render :show, status: :created, location: @subject }
      else
        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to grade_subjects_url(@grade), notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    
    @subject.destroy

    respond_to do |format|
      format.html { redirect_to (grade_subjects_url(@grade)), notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_grade
      @grade = Grade.find(params[:grade_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @grade = Grade.find(params[:grade_id])
      @subject = @grade.subjects.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subject_params
      params.require(:subject).permit(:nome, :codigo, :creditos, :presenca, :dia_semana1, :horario1, :dia_semana2,:horario2,:dia_semana3, :horario3, :quinzenal,:quinzenal2,:quinzenal3 )
    end
end
