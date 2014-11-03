class WeeksController < ApplicationController
  before_action :set_week, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /weeks
  # GET /weeks.json
  def index
    @weeks = current_user.weeks
    @week_ids = @weeks.map { |key, value| key }
    # @total_weeks = @weeks.length
    @year_now = Time.now
    @year_now.strftime("%Y").to_i
    @birthday = current_user.birthday
    # @deathday = current_user.birthday + 800000000
    @date_today = Time.now
    @days_lived = (@date_today.to_date - @birthday.to_date).to_i
    @weeks_lived = @days_lived/7
    @weeks_left = current_user.life_expectancy * 52 - @weeks_lived
    @weeks_lived_array = @week_ids[0..@weeks_lived]
    @weeks_left_array = @week_ids[@weeks_lived..-1]
    # @days_left = (@deathday.to_date - @date_today.to_date).to_i
    # @weeks_left = @days_left/7
    # @week_now = Time.now
    # @week_now.strftime("%d").to_i
    # @life_in_years = 80
    # @years_lived = 25
    # @years_remaining = @life_in_years - @years_lived
  end

  def weeks_table
    # @life_in_years = 80
    # @life_in_weeks = (0..80).map { |x| x = (0..52).map { |y| y } }
  end

  # GET /weeks/new
  def new
    @week = Week.new
  end

  def show
    @week = Week.find(params[:id])
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
