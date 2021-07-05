class EmployeeInfosController < ApplicationController
  before_action :set_employee_info, only: %i[ show edit update destroy ]
  
  def about
  end
  # GET /employee_infos or /employee_infos.json
  def index
    @employee_infos = EmployeeInfo.all
  end

  # GET /employee_infos/1 or /employee_infos/1.json
  def show
  end

  # GET /employee_infos/new
  def new
    @employee_info = EmployeeInfo.new
  end

  # GET /employee_infos/1/edit
  def edit
  end

  # POST /employee_infos or /employee_infos.json
  def create
    @employee_info = EmployeeInfo.new(employee_info_params)

    respond_to do |format|
      if @employee_info.save
        format.html { redirect_to @employee_info, notice: "Employee info was successfully created." }
        format.json { render :show, status: :created, location: @employee_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_infos/1 or /employee_infos/1.json
  def update
    respond_to do |format|
      if @employee_info.update(employee_info_params)
        format.html { redirect_to @employee_info, notice: "Employee info was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_infos/1 or /employee_infos/1.json
  def destroy
    @employee_info.destroy
    respond_to do |format|
      format.html { redirect_to employee_infos_url, notice: "Employee info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_info
      @employee_info = EmployeeInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_info_params
      params.require(:employee_info).permit(:first_name, :last_name, :email, :phone)
    end
end
