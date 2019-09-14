class DocumentoIdentidadsController < ApplicationController
  before_action :set_documento_identidad, only: [:show, :edit, :update, :destroy]

  # GET /documento_identidads
  # GET /documento_identidads.json
  def index
    @documento_identidads = DocumentoIdentidad.all
  end

  # GET /documento_identidads/1
  # GET /documento_identidads/1.json
  def show
  end

  # GET /documento_identidads/new
  def new
    @documento_identidad = DocumentoIdentidad.new
  end

  # GET /documento_identidads/1/edit
  def edit
  end

  # POST /documento_identidads
  # POST /documento_identidads.json
  def create
    @documento_identidad = DocumentoIdentidad.new(documento_identidad_params)

    respond_to do |format|
      if @documento_identidad.save
        format.html { redirect_to @documento_identidad, notice: 'Documento identidad was successfully created.' }
        format.json { render :show, status: :created, location: @documento_identidad }
      else
        format.html { render :new }
        format.json { render json: @documento_identidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documento_identidads/1
  # PATCH/PUT /documento_identidads/1.json
  def update
    respond_to do |format|
      if @documento_identidad.update(documento_identidad_params)
        format.html { redirect_to @documento_identidad, notice: 'Documento identidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @documento_identidad }
      else
        format.html { render :edit }
        format.json { render json: @documento_identidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documento_identidads/1
  # DELETE /documento_identidads/1.json
  def destroy
    @documento_identidad.destroy
    respond_to do |format|
      format.html { redirect_to documento_identidads_url, notice: 'Documento identidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documento_identidad
      @documento_identidad = DocumentoIdentidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documento_identidad_params
      params.require(:documento_identidad).permit(:nombre, :descripcion)
    end
end
