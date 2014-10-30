class Week < ActiveRecord::Base
  belongs_to :user

  # before_create do
  #     self.year = current_user.birthday + self.week_number TO YEAR
  #     DENY ENTRY TO DB IF self.week_number > weeks_to_live
  # end
end
