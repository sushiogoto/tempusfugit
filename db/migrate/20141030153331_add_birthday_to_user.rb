class AddBirthdayToUser < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :datetime
    add_column :users, :deathday, :datetime


  end
end
