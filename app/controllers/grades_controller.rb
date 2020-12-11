class GradesController < ApplicationController
  before_action :get_user
  before_action :set_grade, only: [:show, :edit, :update, :destroy]
  
  # GET /grades
  # GET /grades.json
  def index
    @grades = @user.grades
  end

  # GET /grades/1
  # GET /grades/1.json
  def show
  end

  # GET /grades/new
  def new
    @grade = @user.grades.build
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  # POST /grades.json
  def create
    @grade = @user.grades.build(grade_params)

    respond_to do |format|
      if @grade.save
        format.html { redirect_to user_grades_url(@user), notice: 'Grade was successfully created.' }
        format.json { render :show, status: :created, location: @grade }
      else
        format.html { render :new }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to user_grades_url(@user), notice: 'Grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade }
      else
        format.html { render :edit }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to (user_grades_url(@user)), notice: 'Grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_user
      @user = User.find(params[:user_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = @user.grades.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:nome,:comeco,:final_semestre)
    end
end