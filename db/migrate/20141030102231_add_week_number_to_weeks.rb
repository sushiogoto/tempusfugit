class AddWeekNumberToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :week_number, :integer
  end
end
