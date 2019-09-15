class PrivilegioEmpleadosController < ApplicationController
  before_action :set_privilegio_empleado, only: [:show, :edit, :update, :destroy]

  # GET /privilegio_empleados
  # GET /privilegio_empleados.json
  def index
    @privilegio_empleados = PrivilegioEmpleado.all
  end

  # GET /privilegio_empleados/1
  # GET /privilegio_empleados/1.json
  def show
  end

  # GET /privilegio_empleados/new
  def new
    @privilegio_empleado = PrivilegioEmpleado.new
  end

  # GET /privilegio_empleados/1/edit
  def edit
  end

  # POST /privilegio_empleados
  # POST /privilegio_empleados.json
  def create
    @privilegio_empleado = PrivilegioEmpleado.new(privilegio_empleado_params)

    respond_to do |format|
      if @privilegio_empleado.save
        format.html { redirect_to @privilegio_empleado, notice: 'Privilegio empleado was successfully created.' }
        format.json { render :show, status: :created, location: @privilegio_empleado }
      else
        format.html { render :new }
        format.json { render json: @privilegio_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /privilegio_empleados/1
  # PATCH/PUT /privilegio_empleados/1.json
  def update
    respond_to do |format|
      if @privilegio_empleado.update(privilegio_empleado_params)
        format.html { redirect_to @privilegio_empleado, notice: 'Privilegio empleado was successfully updated.' }
        format.json { render :show, status: :ok, location: @privilegio_empleado }
      else
        format.html { render :edit }
        format.json { render json: @privilegio_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /privilegio_empleados/1
  # DELETE /privilegio_empleados/1.json
  def destroy
    @privilegio_empleado.destroy
    respond_to do |format|
      format.html { redirect_to privilegio_empleados_url, notice: 'Privilegio empleado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_privilegio_empleado
      @privilegio_empleado = PrivilegioEmpleado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def privilegio_empleado_params
      params.require(:privilegio_empleado).permit(:nombre, :descripcion)
    end
end
