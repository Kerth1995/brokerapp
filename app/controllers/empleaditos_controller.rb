class EmpleaditosController < ApplicationController
  before_action :set_empleadito, only: [:show, :edit, :update, :destroy]

  # GET /empleaditos
  # GET /empleaditos.json
  def index
    @empleaditos = Empleadito.all
  end

  # GET /empleaditos/1
  # GET /empleaditos/1.json
  def show
  end

  # GET /empleaditos/new
  def new
    @empleadito = Empleadito.new
  end

  # GET /empleaditos/1/edit
  def edit
  end

  # POST /empleaditos
  # POST /empleaditos.json
  def create
    @empleadito = Empleadito.new(empleadito_params)

    respond_to do |format|
      if @empleadito.save
        format.html { redirect_to @empleadito, notice: 'Empleadito was successfully created.' }
        format.json { render :show, status: :created, location: @empleadito }
      else
        format.html { render :new }
        format.json { render json: @empleadito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleaditos/1
  # PATCH/PUT /empleaditos/1.json
  def update
    respond_to do |format|
      if @empleadito.update(empleadito_params)
        format.html { redirect_to @empleadito, notice: 'Empleadito was successfully updated.' }
        format.json { render :show, status: :ok, location: @empleadito }
      else
        format.html { render :edit }
        format.json { render json: @empleadito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleaditos/1
  # DELETE /empleaditos/1.json
  def destroy
    @empleadito.destroy
    respond_to do |format|
      format.html { redirect_to empleaditos_url, notice: 'Empleadito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleadito
      @empleadito = Empleadito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empleadito_params
      params.require(:empleadito).permit(:documento_id, :numero_documento, :nombre, :apellido_paterno, :apellido_materno, :id_privilegio)
    end
end
