class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :mood
      t.integer :significance
      t.text :journal

      t.timestamps
    end
  end
end
