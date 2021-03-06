class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all.order("created_at DESC").paginate(:page => params[:page], 
                                                      :per_page => 9)
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    if logged_in?
      if current_user.company.name != '<brak>'
        @car = Car.new
      else
        flash[:danger] = 'Przed dodaniem samochodu trzeba uzupełnić dane firmy!'
        redirect_to '/company'
      end
    else
      redirect_to login_path
    end
  end

  # GET /cars/1/edit
  def edit
    if !logged_in?
      flash[:danger] = 'Najpierw trzeba się zalogować!'
      redirect_to cars_path
    else
      if @car.company != current_user.company
        flash[:danger] = 'Samochód nie należy do twojej firmy!'
        redirect_to cars_path
      end
    end
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)
    
    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Samochód został utworzony.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Dane samochodu zostały zaktualizowane.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    if !logged_in?
      flash[:danger] = 'Najpierw trzeba się zalogować!'
      redirect_to cars_path
    else
      if @car.company == current_user.company
        @car.destroy
        respond_to do |format|
          format.html { redirect_to cars_url, notice: 'Samochód został usunięty.' }
          format.json { head :no_content }
        end
      else
        flash[:danger] = 'Samochód nie należy do twojej firmy!'
        redirect_to cars_path
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:make, :model, :image, :company_id)
    end
end
