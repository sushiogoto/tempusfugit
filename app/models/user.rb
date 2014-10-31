class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :weeks
  before_create :add_info

  # WEEKS TO LIVE
  # BIRTHDAY
  private
    def add_info
      @current_week = 1
      @birthday = self.birthday
      @deathday = self.birthday.to_date + 1000000000
      # @deathday = self.birthday.to_date + Date.strptime(self.life_expectancy.to_s, "%Y")
      @date_today = Time.now
      # @life_in_days = (@deathday.to_date - @birthday.to_date).to_i
      # @life_in_weeks = @life_in_days/7
      @days_lived = (@date_today.to_date - @birthday.to_date).to_i
      @life_in_weeks = self.life_expectancy * 52





      @year_today = @date_today.strftime("%Y")
      # :birthday = :birthday + @current_week * 7

      (0..@life_in_weeks).each do  |week|
        self.weeks << Week.new(mood: 0, significance: 3, journal: "text", week_number: @current_week, year: @year)
        @current_week += 1
      end
    end
end