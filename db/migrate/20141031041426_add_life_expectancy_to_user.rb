class AddLifeExpectancyToUser < ActiveRecord::Migration
  def change
    add_column :users, :life_expectancy, :integer
  end
end
