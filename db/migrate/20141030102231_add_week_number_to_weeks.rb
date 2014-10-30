class AddWeekNumberToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :week_number, :integer
    add_column :weeks, :year, :integer
  end
end
