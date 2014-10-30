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
      @weeks_to_live = 2
      @current_week = 1

      @date = Time.now.strftime("%B %d, %Y")
      @year = Time.now.strftime("%Y")
      # :birthday = :birthday + @current_week * 7

      (0..@weeks_to_live).each do  |week|
        self.weeks << Week.new(mood: 0, significance: 3, journal: "text", week_number: @current_week, year: @year)
      end
    end
end