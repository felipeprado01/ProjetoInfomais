class ClasseDisciplinasController < ApplicationController
  before_action :set_classe_disciplina, only: %i[ show edit update destroy ]

  # GET /classe_disciplinas or /classe_disciplinas.json
  def index
    @classe_disciplinas = ClasseDisciplina.all
  end

  # GET /classe_disciplinas/1 or /classe_disciplinas/1.json
  def show
  end

  # GET /classe_disciplinas/new
  def new
    @classe_disciplina = ClasseDisciplina.new
  end

  # GET /classe_disciplinas/1/edit
  def edit
  end

  # POST /classe_disciplinas or /classe_disciplinas.json
  def create
    @classe_disciplina = ClasseDisciplina.new(classe_disciplina_params)

    respond_to do |format|
      if @classe_disciplina.save
        format.html { redirect_to classe_disciplina_url(@classe_disciplina), notice: "Classe disciplina was successfully created." }
        format.json { render :show, status: :created, location: @classe_disciplina }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classe_disciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classe_disciplinas/1 or /classe_disciplinas/1.json
  def update
    respond_to do |format|
      if @classe_disciplina.update(classe_disciplina_params)
        format.html { redirect_to classe_disciplina_url(@classe_disciplina), notice: "Classe disciplina was successfully updated." }
        format.json { render :show, status: :ok, location: @classe_disciplina }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classe_disciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classe_disciplinas/1 or /classe_disciplinas/1.json
  def destroy
    @classe_disciplina.destroy

    respond_to do |format|
      format.html { redirect_to classe_disciplinas_url, notice: "Classe disciplina was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classe_disciplina
      @classe_disciplina = ClasseDisciplina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classe_disciplina_params
      params.require(:classe_disciplina).permit(:sala_id, :disciplina_id, :professor_id)
    end
end
