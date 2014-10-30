class WeeksController < ApplicationController
  before_action :set_week, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /weeks
  # GET /weeks.json
  def index
    @weeks = current_user.weeks
    @year_now = Time.now
    @year_now.strftime("%Y").to_i
    # @week_now = Time.now
    # @week_now.strftime("%d").to_i
    @life_in_years = 80
    @years_lived = 25
    @years_remaining = @life_in_years - @years_lived
  end

  def weeks_table
    # @life_in_years = 80
    # @life_in_weeks = (0..80).map { |x| x = (0..52).map { |y| y } }
  end

  # GET /weeks/new
  def new
    @week = Week.new
  end

  # GET /weeks/1/edit
  def edit
  end

  # POST /weeks
  # POST /weeks.json
  def create
    @week = Week.new(week_params)
    @week.user = current_user

    respond_to do |format|
      if @week.save
        format.html { redirect_to weeks_path, notice: 'Week was successfully created.' }
        format.json { render :show, status: :created, location: @week }
      else
        format.html { render :new }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weeks/1
  # PATCH/PUT /weeks/1.json
  def update
    respond_to do |format|
      if @week.update(week_params)
        format.html { redirect_to @week, notice: 'Week was successfully updated.' }
        format.json { render :show, status: :ok, location: @week }
      else
        format.html { render :edit }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeks/1
  # DELETE /weeks/1.json
  def destroy
    @week.destroy
    respond_to do |format|
      format.html { redirect_to weeks_url, notice: 'Week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week
      @week = Week.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def week_params
      params.require(:week).permit(:mood, :significance, :journal, :week_number)
    end
end
